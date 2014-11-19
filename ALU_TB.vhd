LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY ALU_TB IS
END ALU_TB;
 
ARCHITECTURE behavior OF ALU_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         Y : OUT  std_logic_vector(7 downto 0);
         Cin : IN  std_logic;
         Cout : OUT  std_logic;
         nARITH_LOGIC : IN  std_logic;
         INVERT : IN  std_logic;
         nAONLY : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal Cin : std_logic := '0';
   signal nARITH_LOGIC : std_logic := '0';
   signal INVERT : std_logic := '0';
   signal nAONLY : std_logic := '0';

 	--Outputs
   signal Y : std_logic_vector(7 downto 0);
   signal Cout : std_logic;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          A => A,
          B => B,
          Y => Y,
          Cin => Cin,
          Cout => Cout,
          nARITH_LOGIC => nARITH_LOGIC,
          INVERT => INVERT,
          nAONLY => nAONLY
        );

   -- Stimulus process
   stim_proc: process
   begin		
		A <= "01010101";
		B <= "00001111";
		Cin <= '0';
		
		nARITH_LOGIC <= '0';
      INVERT <= '0';
      nAONLY <= '0';
		wait for 50 ns;
		
				
		nARITH_LOGIC <= '1';
      INVERT <= '0';
      nAONLY <= '0';
		wait for 50 ns;
		
				
		nARITH_LOGIC <= '0';
      INVERT <= '1';
      nAONLY <= '0';
		wait for 50 ns;
		
				
		nARITH_LOGIC <= '1';
      INVERT <= '1';
      nAONLY <= '0';
		wait for 50 ns;
		
				
		nARITH_LOGIC <= '0';
      INVERT <= '0';
      nAONLY <= '1';
		wait for 50 ns;
		
				
		nARITH_LOGIC <= '1';
      INVERT <= '0';
      nAONLY <= '1';
		wait for 50 ns;
		
				
		nARITH_LOGIC <= '0';
      INVERT <= '1';
      nAONLY <= '1';
		wait for 50 ns;
		
				
		nARITH_LOGIC <= '1';
      INVERT <= '1';
      nAONLY <= '1';
		
      wait;
   end process;

END;
