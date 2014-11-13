----------------------------------------------------------------------------------
-- DEC_4_TB
-- EEE 333 
-- Microprocessor Design
-- Dutch Althoff
----------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY DEC_4_TB IS
END DEC_4_TB;
 
ARCHITECTURE behavior OF DEC_4_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DEC_4
    PORT(
         EN : IN  std_logic;
         A : IN  std_logic_vector(3 downto 0);
         Y : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal EN : std_logic := '0';
   signal A : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Y : std_logic_vector(15 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DEC_4 PORT MAP (
          EN => EN,
          A => A,
          Y => Y
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
			while time < 270 ns
				A <= A + '1';
				wait for 10 ns;
			end loop;

      wait;
   end process;

END;
