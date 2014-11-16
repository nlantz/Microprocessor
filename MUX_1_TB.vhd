LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY MUX_1_TB IS
END MUX_1_TB;
 
ARCHITECTURE behavior OF MUX_1_TB IS 

    COMPONENT MUX_1
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         A_B : IN  std_logic;
         Y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal A_B : std_logic := '0';

 	--Outputs
   signal Y : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX_1 PORT MAP (
          A => A,
          B => B,
          A_B => A_B,
          Y => Y
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
	A_B <= '0'; 
	 
	A <= '0';
	B <= '1';
	
	wait for 100 ns;
	A_B <= '1';

	wait;
   end process;

END;
