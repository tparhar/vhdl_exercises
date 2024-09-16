library IEEE; use IEEE.STD_LOGIC_1164.all;

entity ripple_carry_adder is
	port(cin:  in STD_LOGIC;
			 a, b: in STD_LOGIC_VECTOR(3 downto 0);
			 cout: out STD_LOGIC;
			 s:    out STD_LOGIC_VECTOR(3 downto 0));
end ripple_carry_adder;

architecture struct of ripple_carry_adder is
	component fulladder
			port(a, b, cin: in STD_LOGIC;
					 s, cout: 	out STD_LOGIC);
	end component;
	signal n0, n1, n2: STD_LOGIC;
begin
	cout0: fulladder port map(a(0), b(0), cin, s(0), n0);
	cout1: fulladder port map(a(1), b(1), n0, s(1), n1);
	cout2: fulladder port map(a(2), b(2), n1, s(2), n2);
	cout3: fulladder port map(a(3), b(3), n2, s(3), cout);
end struct;