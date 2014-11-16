LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY ADD_OR_TB IS
END ADD_OR_TB;
 
ARCHITECTURE behavior OF ADD_OR_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ADD_OR
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         Pass : IN  std_logic;
         ADD_OR_in : IN  std_logic;
         Cin : IN  std_logic;
         Y : OUT  std_logic_vector(7 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal Pass : std_logic := '0';
   signal ADD_OR_in : std_logic := '0';
   signal Cin : std_logic := '0';

 	--Outputs
   signal Y : std_logic_vector(7 downto 0);
   signal Cout : std_logic;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ADD_OR PORT MAP (
          A => A,
          B => B,
          Pass => Pass,
          ADD_OR_in => ADD_OR_in,
          Cin => Cin,
          Y => Y,
          Cout => Cout
        );

   -- Stimulus process
   stim_proc: process
   begin		
	
		A <= "00001111";
		B <= "01010101";
		Cin <= '0';
		Pass <= '0';
		ADD_OR_in <= '0';
		wait for 100 ns;
		
		A <= "00001111";
		B <= "01010101";
		Pass <= '1';
		ADD_OR_in <= '0';
		wait for 100 ns;
		
		A <= "00001111";
		B <= "01010101";
		Pass <= '0';
		ADD_OR_in <= '1';
		wait for 100 ns;
		
		A <= "00001111";
		B <= "01010101";
		Pass <= '1';
		ADD_OR_in <= '1';
      wait;
   end process;

END;
