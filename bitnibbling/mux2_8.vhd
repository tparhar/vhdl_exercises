library IEEE; use IEEE.STD_LOGIC_1164.all;

entity mux2_8 is
	port(d0, d1: in STD_LOGIC_VECTOR(7 downto 0);
			 sel:    in STD_LOGIC;
			 y: 		 out STD_LOGIC_VECTOR(7 downto 0));
end mux2_8;

architecture struct of mux2_8 is
	component mux2
		port(d0, d1: in STD_LOGIC_VECTOR(3 downto 0);
				 sel: 	 in STD_LOGIC;
				 y: 		 out STD_LOGIC_VECTOR(3 downto 0));
	end component;
	
begin
	lsbmux: mux2
		port map(d0(3 downto 0), d1(3 downto 0), sel, y(3 downto 0));
	
	msbmux: mux2
		port map(d0(7 downto 4), d1(7 downto 4), sel, y(7 downto 4));
end struct;