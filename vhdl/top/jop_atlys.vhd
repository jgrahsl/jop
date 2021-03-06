
--
--
--  This file is a part of JOP, the Java Optimized Processor
--
--  Copyright (C) 2001-2008, Martin Schoeberl (martin@jopdesign.com)
--
--  This program is free software: you can redistribute it and/or modify
--  it under the terms of the GNU General Public License as published by
--  the Free Software Foundation, either version 3 of the License, or
--  (at your option) any later version.
--
--  This program is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU General Public License for more details.
--
--  You should have received a copy of the GNU General Public License
--  along with this program.  If not, see <http://www.gnu.org/licenses/>.
--


--
-- jop_xs3.vhd
--
-- top level for Spartan-3 Starter Kit
--
-- 2002-03-28  creation
-- 2002-06-27  isa bus for CS8900
-- 2002-07-27  io for baseio
-- 2002-08-02  second uart (use first for download and debug)
-- 2002-11-01  removed second uart
-- 2002-12-01  split memio
-- 2002-12-07  disable clkout
-- 2003-02-21  adapt for new Cyclone board with EP1C6
-- 2003-07-08  invertion of cts, rts to uart
-- 2004-09-11  new extension module
-- 2004-10-01  version for Xilinx
-- 2004-10-08  mul operands from a and b, single instruction
-- 2005-05-12  added the bsy routing through extension
-- 2005-08-15  sp_ov can be used to show a stoack overflow on the wd pin
-- 2005-11-24  use mem_sc for the memory interface and xs3_jbc for the
--          bc cache. Now a real block cache (+40% performance with KFL)
-- 2005-11-30  SimpCon for IO devices
-- 2007-03-17  Use jopcpu and change component interface to records
--
--


library ieee;
use ieee.std_logic_1164.all;

use ieee.std_logic_arith.all;
use work.jop_types.all;
use work.sc_pack.all;
use work.jop_config_global.all;
use work.jop_config.all;

library unisim;
use unisim.vcomponents.all;


entity jop is

  generic (
    ram_cnt    : integer := 3;          -- clock cycles for external ram
    rom_cnt    : integer := 15;         -- not used for S3K
    jpc_width  : integer := 11;  -- address bits of java bytecode pc = cache size
    block_bits : integer := 4;   -- 2*block_bits is number of cache blocks
    spm_width  : integer := 0  -- size of scratchpad RAM (in number of address bits for 32-bit words)
    );

  port (
    clk     : in  std_logic;
    ser_txd : out std_logic;
    ser_rxd : in  std_logic;
    led     : out std_logic_vector(7 downto 0));
end jop;

architecture rtl of jop is
--
-- components:
--
--
-- Signals
--
  signal clk_int : std_logic;
  signal rst     : std_logic;
  signal int_res : std_logic;
  signal res_cnt : unsigned(2 downto 0) := "000";  -- for the simulation

  -- attribute altera_attribute : string;
  -- attribute altera_attribute of res_cnt : signal is "POWER_UP_LEVEL=LOW";

--
-- jopcpu connections
--
  signal sc_mem_out : sc_out_type;
  signal sc_mem_in  : sc_in_type;
  signal sc_io_out  : sc_out_type;
  signal sc_io_in   : sc_in_type;
  signal irq_in     : irq_bcf_type;
  signal irq_out    : irq_ack_type;
  signal exc_req    : exception_type;

--
-- IO interface
--
  signal ser_in  : ser_in_type;
  signal ser_out : ser_out_type;
  signal wd_out  : std_logic;

  -- for generation of internal reset

-- memory interface
  signal ram_addr    : std_logic_vector(17 downto 0);
  signal ram_dout    : std_logic_vector(15 downto 0);
  signal ram_din     : std_logic_vector(15 downto 0);
  signal ram_dout_en : std_logic;
  signal ram_ncs     : std_logic;
  signal ram_nwe     : std_logic;
  signal ram_noe     : std_logic;

-- not available at this board:
  signal ser_ncts : std_logic;
  signal ser_nrts : std_logic;

  signal we        : std_logic;
  signal en        : std_logic;
  signal locked    : std_logic;
  signal clk_debug : std_logic;
  signal pcmux     : std_logic_vector(7 downto 0);
  signal r         : std_logic;

  signal clkin1 : std_logic;

  signal clk_pin_buf     : std_logic;
  signal clkfb           : std_logic;
  signal clk0            : std_logic;
  signal clkdv           : std_logic;
  signal clkfbout        : std_logic;
  signal locked_internal : std_logic;
  signal status_internal : std_logic_vector(7 downto 0);
  
begin
  ser_ncts <= '0';

  -- Clocking primitive
  --------------------------------------

  -- Instantiation of the DCM primitive
  --    * Unused inputs are tied off
  --    * Unused outputs are labeled unused
  dcm_sp_inst : DCM_SP
    generic map
    (CLKDV_DIVIDE       => 2.000,
     CLKFX_DIVIDE       => 1,
     CLKFX_MULTIPLY     => 4,
     CLKIN_DIVIDE_BY_2  => false,
     CLKIN_PERIOD       => 10.0,
     CLKOUT_PHASE_SHIFT => "NONE",
     CLK_FEEDBACK       => "1X",
     DESKEW_ADJUST      => "SYSTEM_SYNCHRONOUS",
     PHASE_SHIFT        => 0,
     STARTUP_WAIT       => false)
    port map
    -- Input clock
    (CLKIN    => clk_pin_buf,
     CLKFB    => clkfb,
     -- Output clocks
     CLK0     => clk0,
     CLK90    => open,
     CLK180   => open,
     CLK270   => open,
     CLK2X    => open,
     CLK2X180 => open,
     CLKFX    => open,
     CLKFX180 => open,
     CLKDV    => clkdv,
     -- Ports for dynamic phase shift
     PSCLK    => '0',
     PSEN     => '0',
     PSINCDEC => '0',
     PSDONE   => open,
     -- Other control and status signals
     LOCKED   => locked_internal,
     STATUS   => status_internal,
     RST      => '0',
     -- Unused pin, tie low
     DSSEN    => '0');

  -- Output buffering
  -------------------------------------
  clkin1_buf : IBUFG
    port map
    (I => clk, O => clk_pin_buf);
  clkf_buf : BUFG
    port map
    (I => clk0, O => clkfb);
  clkout1_buf : BUFG
    port map
    (I => clk0, O => clk_int);
  
  led <= (others => '0');
  rst     <= not locked_internal;

  cpu : entity work.jopcpu
    generic map(
      jpc_width  => jpc_width,
      block_bits => block_bits,
      spm_width  => spm_width
      )
    port map(clk_int, rst,
             sc_mem_out, sc_mem_in,
             sc_io_out, sc_io_in,
             irq_in, irq_out, exc_req);

  io : entity work.scio
    port map (clk_int, rst,
              sc_io_out, sc_io_in,
              irq_in, irq_out, exc_req,

              txd  => ser_txd,
              rxd  => ser_rxd,
              ncts => ser_ncts,
              nrts => ser_nrts,
              wd   => wd_out,
              l    => open,
              r    => open,
              t    => open,
              b    => open
              );

  scm : entity work.sc_mem_if
    generic map (
      ram_ws    => ram_cnt-1,
      addr_bits => 18
      )
    port map (clk_int, rst,
              sc_mem_out, sc_mem_in,

              ram_addr    => ram_addr,
              ram_dout    => ram_dout,
              ram_din     => ram_din,
              ram_dout_en => ram_dout_en,
              ram_ncs     => ram_ncs,
              ram_noe     => ram_noe,
              ram_nwe     => ram_nwe
              );


  my_sysram : entity work.sysram
    port map (
      clka   => clk_int,                -- [IN]
      wea(0) => we,                     -- [IN]
      addra  => ram_addr(15 downto 0),  -- [IN]
      dina   => ram_dout,               -- [IN]
      douta  => ram_din);               -- [OUT]

  we <= not ram_nwe;

  --process (clk_int)
  --begin
  --  if clk_int'event and clk_int = '1' then
  --    if ram_ncs = '0' then        
  --      if ram_nwe = '0' then
  --        ram(conv_integer(unsigned(ram_addr(15 downto 0)))) <= ram_din;
  --      end if;
  --      if ram_noe = '0' then
  --        ram_dout <= ram(conv_integer(unsigned(ram_addr(15 downto 0))));             
  --      end if;
  --    end if;
  --  end if;
  --end process;
  
end rtl;
