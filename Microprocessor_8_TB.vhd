LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Microprocessor_8_TB IS
END Microprocessor_8_TB;
 
ARCHITECTURE behavior OF Microprocessor_8_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Microprocessor_8
    PORT(
         CLK : IN  std_logic;
         nAONLY : IN  std_logic;
         INVERT : IN  std_logic;
         LOGIC : IN  std_logic;
         ACCUMULATORIE : IN  std_logic;
         CLEAR : IN  std_logic;
         ACCUMULATOROE : IN  std_logic;
         WRITE1 : IN  std_logic;
         READ1 : IN  std_logic;
         BUFFER_IN : IN  std_logic_vector(7 downto 0);
         A_OUT : OUT  std_logic_vector(7 downto 0);
         DEC_IN : IN  std_logic_vector(3 downto 0);
         REG_CLR : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal nAONLY : std_logic := '0';
   signal INVERT : std_logic := '0';
   signal LOGIC : std_logic := '0';
   signal ACCUMULATORIE : std_logic := '0';
   signal CLEAR : std_logic := '0';
   signal ACCUMULATOROE : std_logic := '0';
   signal WRITE1 : std_logic := '0';
   signal READ1 : std_logic := '0';
   signal BUFFER_IN : std_logic_vector(7 downto 0) := (others => '0');
   signal DEC_IN : std_logic_vector(3 downto 0) := (others => '0');
   signal REG_CLR : std_logic := '0';

 	--Outputs
   signal A_OUT : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Microprocessor_8 PORT MAP (
          CLK => CLK,
          nAONLY => nAONLY,
          INVERT => INVERT,
          LOGIC => LOGIC,
          ACCUMULATORIE => ACCUMULATORIE,
          CLEAR => CLEAR,
          ACCUMULATOROE => ACCUMULATOROE,
          WRITE1 => WRITE1,
          READ1 => READ1,
          BUFFER_IN => BUFFER_IN,
          A_OUT => A_OUT,
          DEC_IN => DEC_IN,
          REG_CLR => REG_CLR
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin	
		--clear the bits and load in zeros to the buffer
		clear <= '1';
		REG_CLR <= '1';
		READ1 <= '1';
		DEC_IN <= "1111";
      wait for CLK_period*2;
		
		--let the zeros get pushed through the ALU
		clear <= '0';
		REG_CLR <= '0';
		DEC_IN <= "0000";
		wait for CLK_period*2;
		
		--allow ALU out to take over bus A
		READ1 <= '1';
		
		wait for CLK_period;
		
		--addition 
		ACCUMULATOROE <= '0'; -- disable buffer
		
		
		BUFFER_IN <= x"03"; --load 3 into buffer
		DEC_IN <= x"0"; --enable rom 1
		READ1 <= '1'; --enable read from rom 1
		
		--pass through A 
		nAONLY <= '0';
		LOGIC <= '0';
		INVERT <= '0';
		
		--wait for outout to get on bus B
		ACCUMULATORIE <= '1';
		wait for CLK_period;
		ACCUMULATORIE <= '0';

		
		
		--load 5 onto bus A
		wait for CLK_period;
		BUFFER_IN <= x"05";
		
		wait for CLK_period;
		nAONLY <= '1';
		INVERT <= '0';
		LOGIC  <= '0';
		ACCUMULATORIE <= '1';
		wait for CLK_period;
		ACCUMULATORIE <= '0';
		
		--route sum to output
		READ1 <= '0';
		ACCUMULATOROE <= '1';
		WRITE1 <= '1';
		DEC_IN <= x"f";
		wait for CLK_period;
		

   wait;
   end process;

END;
