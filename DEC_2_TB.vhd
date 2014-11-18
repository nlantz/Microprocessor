----------------------------------------------------------------------------------
-- DEC_2_TB
-- EEE 333 
-- Microprocessor Design
-- Dutch Althoff
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY DEC_2_TB IS
END DEC_2_TB;
 
ARCHITECTURE behavior OF DEC_2_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DEC_2
    PORT(
         EN : IN  std_logic;
         A0 : IN  std_logic;
         A1 : IN  std_logic;
         Y0 : OUT  std_logic;
         Y1 : OUT  std_logic;
         Y2 : OUT  std_logic;
         Y3 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal EN : std_logic := '0';
   signal A0 : std_logic := '0';
   signal A1 : std_logic := '0';

 	--Outputs
   signal Y0 : std_logic;
   signal Y1 : std_logic;
   signal Y2 : std_logic;
   signal Y3 : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DEC_2 PORT MAP (
          EN => EN,
          A0 => A0,
          A1 => A1,
          Y0 => Y0,
          Y1 => Y1,
          Y2 => Y2,
          Y3 => Y3
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		
		EN <= '0';
		wait for 10 ns;
		
		EN <= '1';
			for I in 0 to 15 loop 			
				A <= A + '1';
				wait for 10 ns;
			end loop;

      wait;
   end process;

END;
