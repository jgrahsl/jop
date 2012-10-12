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
-- xs3_jbc.vhd
--
-- bytecode memory/cache for JOP
-- Version for Xilinx Spartan-3
--
-- address, data in are registered
-- data out is unregistered
--
--
-- Changes:
--    2003-08-14  load start address with jpc_wr and do autoincrement
--             load 32 bit data and do the 4 byte writes serial
--    2005-02-17  extracted again from mem32.vhd
--    2005-05-03  address width is jpc_width
--    2005-11-24  adapted for S3
--
--

library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_arith.all;
library XilinxCoreLib;


entity jbc is
  generic (jpc_width : integer);
  port (
    clk     : in  std_logic;
    data    : in  std_logic_vector(31 downto 0);
    rd_addr : in  std_logic_vector(jpc_width-1 downto 0);
    wr_addr : in  std_logic_vector(jpc_width-3 downto 0);
    wr_en   : in  std_logic;
    q       : out std_logic_vector(7 downto 0)
    );
end jbc;

architecture rtl of jbc is
  signal w : std_logic_vector(0 downto 0);
begin
  -- the block ram is 2KB
  assert jpc_width = 11 report "Xilinx jbc is fixed to 2KB - use jbc_width of 11";
  w(0) <= wr_en;
  my_jbc_mem: entity work.jbc_mem
    port map (
      clka  => clk,                    -- [IN]
      wea   => w,                     -- [IN]
      addra => wr_addr,                   -- [IN]
      dina  => data,                    -- [IN]
      clkb  => clk,                    -- [IN]
      addrb => rd_addr,                   -- [IN]
      doutb => q);                  -- [OUT]


end rtl;
