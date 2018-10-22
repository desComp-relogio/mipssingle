library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity demux32 is

	port (
		-- Input ports
		D01: in  std_logic;
		D02: in  std_logic;
		D03: in  std_logic;
		D04: in  std_logic;
		D05: in  std_logic;
		D06: in  std_logic;
		D07: in  std_logic;
		D08: in  std_logic;
		D09: in  std_logic;
		D10: in  std_logic;
		D11: in  std_logic;
		D12: in  std_logic;
		D13: in  std_logic;
		D14: in  std_logic;
		D15: in  std_logic;
		D16: in  std_logic;
		D17: in  std_logic;
		D18: in  std_logic;
		D19: in  std_logic;
		D20: in  std_logic;
		D21: in  std_logic;
		D22: in  std_logic;
		D23: in  std_logic;
		D24: in  std_logic;
		D25: in  std_logic;
		D26: in  std_logic;
		D27: in  std_logic;
		D28: in  std_logic;
		D29: in  std_logic;
		D30: in  std_logic;
		D31: in  std_logic;
		D32: in  std_logic;
		
		SEL : in std_logic_vector(4 downto 0);

		-- Output ports
		Q : out std_logic
	);
	
end demux32;

architecture demux32Arch of demux32 is
	
begin
		
	Q <= 
		D01 when SEL = "00000" else
		D02 when SEL = "00001" else
		D03 when SEL = "00010" else
		D04 when SEL = "00011" else
		D05 when SEL = "00100" else
		D06 when SEL = "00101" else
		D07 when SEL = "00110" else
		D08 when SEL = "00111" else
		D09 when SEL = "01000" else
		D10 when SEL = "01001" else
		D11 when SEL = "01010" else
		D12 when SEL = "01011" else
		D13 when SEL = "01100" else
		D14 when SEL = "01101" else
		D15 when SEL = "01110" else
		D16 when SEL = "01111" else
		D17 when SEL = "10000" else
		D18 when SEL = "10001" else
		D19 when SEL = "10010" else
		D20 when SEL = "10011" else
		D21 when SEL = "10100" else
		D22 when SEL = "10101" else
		D23 when SEL = "10110" else
		D24 when SEL = "10111" else
		D25 when SEL = "11000" else
		D26 when SEL = "11001" else
		D27 when SEL = "11010" else
		D28 when SEL = "11011" else
		D29 when SEL = "11100" else
		D30 when SEL = "11101" else
		D31 when SEL = "11110" else
		D32 when SEL = "11111";

end demux32Arch;
