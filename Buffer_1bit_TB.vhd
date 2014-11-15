--------------------------------------------------------------------------------
-- Company: 
-- Engineer: Stephen Smith
--
-- Create Date:   11:02:12 11/12/2014
-- Design Name:   
-- Module Name:   C:/Users/Stephen Smith/Documents/Xilinx_Projects/Design_Project/Buffer/Buffer_1bit_TB.vhd
-- Project Name:  Buffer
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Buffer_1bit
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
 
ENTITY Buffer_1bit_TB IS
END Buffer_1bit_TB;
 
ARCHITECTURE behavior OF Buffer_1bit_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Buffer_1bit
    PORT(
         EN1 : IN  std_logic;
         EN2 : IN  std_logic;
         input : IN  std_logic;
         bufferOut : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal EN1 : std_logic := '0';
   signal EN2 : std_logic := '0';
   signal input : std_logic := '0';

 	--Outputs
   signal bufferOut : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Buffer_1bit PORT MAP (
          EN1 => EN1,
          EN2 => EN2,
          input => input,
          bufferOut => bufferOut
        );

   -- Stimulus process
   stim_proc: process
   begin		
		wait for 10 ns;
		EN1 <= '0';
		EN2 <= '0';
		input <= '1';
		wait for 10 ns;
		input <= '0';
		wait for 10 ns;
		EN2 <= '1';
		wait for 10 ns;
		input <= '1';
		wait for 10 ns;
		EN1 <= '1';
		wait for 10 ns;
		input <= '0';
		wait for 10 ns;
		input <= '1';

      wait;
   end process;

END;
