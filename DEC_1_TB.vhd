----------------------------------------------------------------------------------
-- DEC_1_TB
-- EEE 333 
-- Microprocessor Design
-- Dutch Althoff
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

 
ENTITY DEC_1_TB IS
END DEC_1_TB;
 
ARCHITECTURE behavior OF DEC_1_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DEC_1
    PORT(
         EN : IN  std_logic;
         A0 : IN  std_logic;
         Y0 : OUT  std_logic;
         Y1 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal EN : std_logic := '0';
   signal A0 : std_logic := '0';

 	--Outputs
   signal Y0 : std_logic;
   signal Y1 : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DEC_1 PORT MAP (
          EN => EN,
          A0 => A0,
          Y0 => Y0,
          Y1 => Y1
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	

      -- insert stimulus here 
		
		EN <= '0';
		wait for 100 ns;
		
		EN <= '1';
		
		A0 <= '1';
		wait for 10 ns;
		
		A0 <= '0';
		wait for 10 ns;

      wait;
   end process;

END;
