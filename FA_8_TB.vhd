LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY FA_8_TB IS
END FA_8_TB;
 
ARCHITECTURE behavior OF FA_8_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FA_8
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         Y : OUT  std_logic_vector(7 downto 0);
         Cin : IN  std_logic;
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

 	--Outputs
   signal Y : std_logic_vector(7 downto 0);
   signal Cout : std_logic;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FA_8 PORT MAP (
          A => A,
          B => B,
          Y => Y,
          Cin => Cin,
          Cout => Cout
        );

   -- Stimulus process
   stim_proc: process
   begin		
	
	Cin <= '0';
	A <= "00001111";
	B <= "01010101";
	
	wait for 100 ns;

		Cin <= '1';
	A <= "11111111";
	B <= "00000000";

      wait;
   end process;

END;
