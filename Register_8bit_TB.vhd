--------------------------------------------------------------------------------
-- Company: 
-- Engineer: Stephen Smith
--
-- Create Date:   21:54:51 11/15/2014
-- Design Name:   
-- Module Name:   C:/Users/Stephen Smith/Documents/Xilinx_Projects/Design_Project/Register/Register_8bit_TB.vhd
-- Project Name:  Register
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Register_8bit
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Register_8bit_TB IS
END Register_8bit_TB;
 
ARCHITECTURE behavior OF Register_8bit_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Register_8bit
    PORT(
         Input : IN  std_logic_vector(7 downto 0);
         EN : IN  std_logic;
         clk : IN  std_logic;
         clear : IN  std_logic;
         Output : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Input : std_logic_vector(7 downto 0) := (others => '0');
   signal EN : std_logic := '0';
   signal clk : std_logic := '0';
   signal clear : std_logic := '0';

 	--Outputs
   signal Output : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Register_8bit PORT MAP (
          Input => Input,
          EN => EN,
          clk => clk,
          clear => clear,
          Output => Output
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		Input <= x"01";
		EN <= '0';
		clear <= '1';
		wait for 15 ns;
		clear <= '0';
		wait for 5 ns;
		Input <= x"A4";
		wait for 10 ns;
		EN <= '1';
		wait for 10 ns;
		clear <= '1';
		wait for 15 ns;
		clear <= '0';
		wait for 25 ns;
		Input <= x"01";
		wait for 10 ns;

      wait;
   end process;

END;
