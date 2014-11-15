--------------------------------------------------------------------------------
-- Company: 
-- Engineer: Stephen Smith
--
-- Create Date:   10:54:49 11/12/2014
-- Design Name:   
-- Module Name:   C:/Users/Stephen Smith/Documents/Xilinx_Projects/Design_Project/Buffer/Buffer_8bit_TB.vhd
-- Project Name:  Buffer
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Buffer_8bit
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

ENTITY Buffer_8bit_TB IS
END Buffer_8bit_TB;
 
ARCHITECTURE behavior OF Buffer_8bit_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Buffer_8bit
    PORT(
         input : IN  std_logic_vector(7 downto 0);
         READ_enable : IN  std_logic;
         ADDR_enable : IN  std_logic;
         bufferOut : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(7 downto 0) := (others => '0');
   signal READ_enable : std_logic := '0';
   signal ADDR_enable : std_logic := '0';

 	--Outputs
   signal bufferOut : std_logic_vector(7 downto 0);

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Buffer_8bit PORT MAP (
          input => input,
          READ_enable => READ_enable,
          ADDR_enable => ADDR_enable,
          bufferOut => bufferOut
        );

   -- Stimulus process
   stim_proc: process
   begin	
		wait for 10 ns;
		READ_enable <= '0';
		ADDR_enable <= '0';
		input <= x"14";
		wait for 10 ns;
		input <= x"75";
		wait for 10 ns;
		ADDR_enable <= '1';
		wait for 10 ns;
		input <= x"A2";
		wait for 10 ns;
		READ_enable <= '1';
		wait for 10 ns;
		input <= x"03";

      wait;
   end process;

END;
