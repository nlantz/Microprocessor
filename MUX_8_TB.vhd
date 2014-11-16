LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY MUX_8_TB IS
END MUX_8_TB;
 
ARCHITECTURE behavior OF MUX_8_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mux_8
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         A_B : IN  std_logic;
         Y : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal A_B : std_logic := '0';

 	--Outputs
   signal Y : std_logic_vector(7 downto 0);

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mux_8 PORT MAP (
          A => A,
          B => B,
          A_B => A_B,
          Y => Y
        );


   -- Stimulus process
   stim_proc: process
   begin			
	A_B <= '0'; 
	 
	A <= "01010101";
	B <= "10101010";
	
	wait for 100 ns;
	A_B <= '1';

	wait;
   end process;

END;
