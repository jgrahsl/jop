--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file sysram.vhd when simulating
-- the core, sysram. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

library std;
 use std.textio.all;

ENTITY sysram IS
  PORT (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END sysram;

ARCHITECTURE sysram_a OF sysram IS
constant	ADDR_BITS : integer := 16;
constant	WIDTH_BITS : integer := 16;

  type RAM_TYPE is array (2**ADDR_BITS-1 downto 0) of std_logic_vector (WIDTH_BITS-1 downto 0);

	shared variable ram : ram_type;
begin  -- myarch
	process (clka, wea,dina,addra)
	begin
		if (clka'event and clka = '1') then
				if (wea(0) = '1') then
					RAM(to_integer(unsigned(addra))) := dina;
					douta <= dina;
				else
					douta <= RAM(to_integer(unsigned(addra)));
				end if;
		end if;
	end process;

initialize:
process

	variable address	: natural;
	variable cnt		: natural;

	file memfile		: text is "mem_main.dat";
	variable memline	: line; 
	variable l 			: line;
	variable val		: integer;
	variable data32		: std_logic_vector(31 downto 0);
	variable len			: integer;
   
variable x : integer;

	begin
		write(output, "load main memory...");
      len := (2**ADDR_BITS)/2;
		for address in 0 to len-1 loop
			if endfile(memfile) then
				val := 0;
			else 	
				readline(memfile, memline);
				read(memline, val);
			end if;
         data32 := std_logic_vector(to_signed(val, 32));
         ram(address*2) := data32(31 downto 16);
         ram(address*2+1) := data32(15 downto 0);
			cnt := address;
		end loop;
		file_close(memfile);
		cnt := cnt+1;
		write(output, " words: ");
		write(l, cnt);
		writeline(output, l);
		-- we're done, wait forever
		wait;
	end process initialize;
   
end sysram_a;
