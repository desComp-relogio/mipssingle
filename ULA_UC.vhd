-- A library clause declares a name as a library.  It 
-- does not create the library; it simply forward declares 
-- it. 
library IEEE;
-- STD_LOGIC and STD_LOGIC_VECTOR types, and relevant functions
use ieee.std_logic_1164.all;
-- SIGNED and UNSIGNED types, and relevant functions
use ieee.numeric_std.all;

entity ULA_UC is
	port
	(
		-- Input ports
		FUNCT : in std_logic_vector(5 downto 0);
		UC_OUT: in std_logic_vector(1 downto 0);
		-- Output ports
		Q		  : out std_logic_vector(3 downto 0)
	);
	
end entity;
-- Library Clause(s) (optional)
-- Use Clause(s) (optional)

architecture ULA_UC_ARCH of ULA_UC is
	-- Declarations (optional)
signal outAux: std_logic_vector(3 DOWNTO 0) := (others => '-');
signal out0Aux: std_logic;

begin
  outAux(3) <= '0';
  outAux(2) <= UC_OUT(0) or (FUNCT(1) and UC_OUT(1));
  outAux(1) <= '1' when (FUNCT(3) = '1' or FUNCT(2) = '0' or UC_OUT(1) = '0') else '0'; -- or (FUNCT(2) = '0');
  out0Aux <= '1' when (FUNCT(3 DOWNTO 0) = "0101" or FUNCT(3 DOWNTO 0) = "1010") else '0';
  outAux(0) <= out0Aux and UC_OUT(1);
  Q <= outAux;
end architecture;