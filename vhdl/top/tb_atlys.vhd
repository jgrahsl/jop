-------------------------------------------------------------------------------
-- Title      : Testbench for design "jop"
-- Project    : 
-------------------------------------------------------------------------------
-- File       : jop_tb_entity.vhd
-- Author     : Julian Grahsl  <julian@newt.localdomain.com>
-- Company    : 
-- Created    : 2012-08-27
-- Last update: 2012-08-27
-- Platform   : 
-- Standard   : VHDL'87
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- Copyright (c) 2012 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2012-08-27  1.0      julian	Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

-------------------------------------------------------------------------------

entity tb_jop is

end tb_jop;

-------------------------------------------------------------------------------

architecture tb of tb_jop is

  component jop
    generic (
      ram_cnt    : integer;
      rom_cnt    : integer;
      jpc_width  : integer;
      block_bits : integer;
      spm_width  : integer);
    port (
      clk     : in  std_logic;
      ser_txd : out std_logic;
      ser_rxd : in  std_logic;
      led     : out std_logic_vector(7 downto 0));
  end component;

  -- component generics
  constant ram_cnt    : integer := 3;
  constant rom_cnt    : integer := 15;
  constant jpc_width  : integer := 11;
  constant block_bits : integer := 4;
  constant spm_width  : integer := 0;

  -- component ports
  signal ser_txd : std_logic;                     -- [out]
  signal ser_rxd : std_logic;                     -- [in]
  signal led     : std_logic_vector(7 downto 0);  -- [out]

  -- clock
  signal Clk : std_logic := '1';

begin  -- tb

  -- component instantiation
  DUT: jop
    generic map (
      ram_cnt    => ram_cnt,
      rom_cnt    => rom_cnt,
      jpc_width  => jpc_width,
      block_bits => block_bits,
      spm_width  => spm_width)
    port map (
      clk     => clk,                   -- [in]
      ser_txd => ser_txd,               -- [out]
      ser_rxd => ser_rxd,               -- [in]
      led     => led);                  -- [out]

  -- clock generation
  Clk <= not Clk after 5 ns;

  -- waveform generation
  WaveGen_Proc: process
  begin
    -- insert signal assignments here

    wait until Clk = '1';
  end process WaveGen_Proc;

  

end tb;

-------------------------------------------------------------------------------

configuration tb_jop_tb_cfg of tb_jop is
  for tb
  end for;
end tb_jop_tb_cfg;

-------------------------------------------------------------------------------
