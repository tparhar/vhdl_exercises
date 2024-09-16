library IEEE; use IEEE.STD_LOGIC_1164.all;

entity generic_cla is
	generic(N: integer := 32);
		port(cin:  in STD_LOGIC;
			 a, b: in STD_LOGIC_VECTOR(N-1 downto 0);
			 cout: out STD_LOGIC;
			 s:    out STD_LOGIC_VECTOR(N-1 downto 0));
end generic_cla;

architecture struct of generic_cla is
	component generic_rca
			generic(N: integer := 4);
			port(cin:  in STD_LOGIC;
					 a, b: in STD_LOGIC_VECTOR(N-1 downto 0);
					 cout: out STD_LOGIC;
					 s:    out STD_LOGIC_VECTOR(N-1 downto 0));
	end component;
	signal
	begin
		