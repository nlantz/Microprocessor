LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

ENTITY FA_1_TB IS
END FA_1_TB;
 
ARCHITECTURE behavior OF FA_1_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FA_1
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Cin : IN  std_logic;
         SUM : OUT  std_logic;
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal Cin : std_logic := '0';

 	--Outputs
   signal SUM : std_logic;
   signal Cout : std_logic;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FA_1 PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          SUM => SUM,
          Cout => Cout
        );

   -- Stimulus process
   stim_proc: process
   begin		
		A <= '0';
		B <= '0';
		Cin <= '0';
		wait for 50 ns;
	
		A <= '1';
		B <= '0';
		Cin <= '0';
		wait for 50 ns;			

		A <= '0';
		B <= '1';
		Cin <= '0';
		wait for 50 ns;

		A <= '1';
		B <= '1';
		Cin <= '0';
		wait for 50 ns;
		
		A <= '0';
		B <= '0';
		Cin <= '1';
		wait for 50 ns;
	
		A <= '1';
		B <= '0';
		Cin <= '1';
		wait for 50 ns;			

		A <= '0';
		B <= '1';
		Cin <= '1';
		wait for 50 ns;

		A <= '1';
		B <= '1';
		Cin <= '1';
		wait;
   end process;

END;
