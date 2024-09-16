library IEEE; use IEEE.STD_LOGIC_1164.all;

entity d_latch is
	port(clk: in STD_LOGIC;
			 d: in STD_LOGIC_VECTOR(3 downto 0);
			 q: out STD_LOGIC_VECTOR(3 downto 0));
end d_latch;

architecture synth of d_latch is
begin
	process(clk, d) begin
		if clk='1' then
			q <= d;
		end if;
	end process;
end synth;