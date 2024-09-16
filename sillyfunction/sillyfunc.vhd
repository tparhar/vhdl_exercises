library IEEE; use IEEE.STD_LOGIC_1164.all;

entity sillyfunc is
	port(a, b, c: in STD_LOGIC;
			 y: 			out STD_LOGIC);
end;

architecture behv of sillyfunc is
begin
	y <= (not a and not b and not c) or
			 (a and not b and not c) or
			 (a and not b and c);
end;