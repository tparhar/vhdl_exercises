library IEEE; use IEEE.STD_LOGIC_1164.all;

entity sillyfunction is
	port(a, b, c: in STD_LOGIC;
			 y: 			out STD_LOGIC);
end sillyfunction;

architecture behv of sillyfunction is
begin
	y <= (not a and not b and not c) or
			 (a and not b and not c) or
			 (a and not b and c);
end behv;