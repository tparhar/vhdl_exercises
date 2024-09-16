library IEEE; use IEEE.STD_LOGIC_1164.all;

entity seqdetector is
	port(clk, reset, a: in STD_LOGIC;
	     y: 						out STD_LOGIC);
end seqdetector;

architecture behv of seqdetector is
	type statetype is (S0, S1, S2, S3, S4);
	signal state, nextstate: statetype;
begin
	-- state register
	process(clk, reset) begin
		if reset='1' then 							state <= S0;
		elsif rising_edge(clk) then     state <= nextstate;
		end if;
	end process;
	
	-- next state logic
	process(all) begin
		case state is
			when S0 =>
				if a then nextstate <= S1;
				else 			nextstate <= S0;
				end if;
			when S1 =>
				if a then nextstate <= S2;
				else 			nextstate <= S0;
				end if;
			when S2 =>
				if a then nextstate <= S2;
				else 			nextstate <= S3;
				end if;
			when S3 =>
				if a then nextstate <= S4;
				else 			nextstate <= S0;
				end if;
			when S4 =>
				if a then nextstate <= S2;
				else 			nextstate <= S0;
				end if;
		end case;
	end process;
	
	--output logic
	y <= '1' when state=S4 else '0';
end behv;