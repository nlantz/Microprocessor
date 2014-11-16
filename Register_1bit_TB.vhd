--------------------------------------------------------------------------------
-- Company: 
-- Engineer: Stephen Smith
--
-- Create Date:   00:04:21 11/14/2014
-- Design Name:   
-- Module Name:   C:/Users/Stephen Smith/Documents/Xilinx_Projects/Design_Project/Register/Register_1bit_TB.vhd
-- Project Name:  Register
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Register_1bit
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
 
ENTITY Register_1bit_TB IS
END Register_1bit_TB;
 
ARCHITECTURE behavior OF Register_1bit_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Register_1bit
    PORT(
         A : IN  std_logic;
         clk : IN  std_logic;
         Input_Enable : IN  std_logic;
         Reset : IN  std_logic;
         Y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal clk : std_logic := '0';
   signal Input_Enable : std_logic := '0';
   signal Reset : std_logic := '0';

 	--Outputs
   signal Y : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Register_1bit PORT MAP (
          A => A,
          clk => clk,
          Input_Enable => Input_Enable,
          Reset => Reset,
          Y => Y
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
		A <= '0';
		Input_Enable <= '0';
		Reset <= '1';
		wait for 15 ns;
		Reset <= '0';
		wait for 5 ns;
		A <= '1';
		wait for 10 ns;
		Input_Enable <= '1';
		wait for 10 ns;
		Reset <= '1';
		wait for 15 ns;
		Reset <= '0';
		wait for 25 ns;
		A <= '0';
		wait for 10 ns;
		
      wait;
   end process;

END;
