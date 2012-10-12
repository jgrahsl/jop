library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clkdivider is
port
 (-- Clock in ports
  CLK_IN1           : in     std_logic;
  -- Clock out ports
  CLK_OUT1          : out    std_logic;
  -- Status and control signals
  RESET             : in     std_logic;
  LOCKED            : out    std_logic
 );
end clkdivider;

architecture xilinx of clkdivider is
  signal c : natural := 0;
  signal o : std_logic := '0';
  signal l : std_logic := '0';  
begin

  process (clk_in1)
  begin  -- process
    if clk_in1'event and clk_in1 = '1' then     -- rising clock edge
      o <= not o;

      if c < 250 then
        c <= c + 1;
        locked <= '0';                
      else
        locked <= '1';        
      end if;
    end if;    
  end process;
  CLK_OUT1 <= o;
end xilinx;
