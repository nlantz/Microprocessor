----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Stephen Smith
-- 
-- Create Date:    09:12:38 11/12/2014 
-- Design Name: 
-- Module Name:    Buffer_8bit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Buffer_8bit is
    Port ( input : in  STD_LOGIC_VECTOR (7 downto 0);
				READ_enable, ADDR_enable: in STD_LOGIC;
				bufferOut: out STD_LOGIC_VECTOR (7 downto 0));
end Buffer_8bit;

architecture Behavioral of Buffer_8bit is

component Buffer_1bit is port (
		EN1, EN2: in std_logic;
		input: in std_logic;
		bufferOut: out std_logic);
end component;

begin

buffer_instance0: Buffer_1bit port map(READ_enable, ADDR_enable, input(0), bufferOut(0));
buffer_instance1: Buffer_1bit port map(READ_enable, ADDR_enable, input(1), bufferOut(1));
buffer_instance2: Buffer_1bit port map(READ_enable, ADDR_enable, input(2), bufferOut(2));
buffer_instance3: Buffer_1bit port map(READ_enable, ADDR_enable, input(3), bufferOut(3));
buffer_instance4: Buffer_1bit port map(READ_enable, ADDR_enable, input(4), bufferOut(4));
buffer_instance5: Buffer_1bit port map(READ_enable, ADDR_enable, input(5), bufferOut(5));
buffer_instance6: Buffer_1bit port map(READ_enable, ADDR_enable, input(6), bufferOut(6));
buffer_instance7: Buffer_1bit port map(READ_enable, ADDR_enable, input(7), bufferOut(7));

end Behavioral;
