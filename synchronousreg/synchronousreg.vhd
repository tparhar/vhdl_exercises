library IEEE; use IEEE.STD_LOGIC_1164.all;

entity flopr is
	port(clk, reset: 	in STD_LOGIC;
			 d: 				  in STD_LOGIC_VECTOR(3 downto 0);
			 q: 					out STD_LOGIC_VECTOR(3 downto 0));
end flopr;

architecture synchronous of flopr is
	begin
		process(clk, reset) begin
			if rising_edge(clk) then
				if reset then q <= "0000";
				else q <= d;
				end if;
			end if;
		end process;
	end synchronous;