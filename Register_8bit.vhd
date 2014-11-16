----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Stephen Smith
-- 
-- Create Date:    23:54:04 11/13/2014 
-- Design Name: 
-- Module Name:    Register_8bit - Behavioral 
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

entity Register_8bit is
    Port ( Input : in  STD_LOGIC_VECTOR (7 downto 0);
           EN : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           clear : in  STD_LOGIC;	-- This is active high
           Output : out  STD_LOGIC_VECTOR (7 downto 0));
end Register_8bit;

architecture Behavioral of Register_8bit is

component Register_1bit is
    Port ( A : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Input_Enable : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end component;

begin
Register_0: Register_1bit port map(Input(0), clk, EN, clear, Output(0));
Register_1: Register_1bit port map(Input(1), clk, EN, clear, Output(1));
Register_2: Register_1bit port map(Input(2), clk, EN, clear, Output(2));
Register_3: Register_1bit port map(Input(3), clk, EN, clear, Output(3));
Register_4: Register_1bit port map(Input(4), clk, EN, clear, Output(4));
Register_5: Register_1bit port map(Input(5), clk, EN, clear, Output(5));
Register_6: Register_1bit port map(Input(6), clk, EN, clear, Output(6));
Register_7: Register_1bit port map(Input(7), clk, EN, clear, Output(7));

end Behavioral;
