----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:55:15 11/09/2014 
-- Design Name: 
-- Module Name:    INC_4 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity INC_4 is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           INC : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (7 downto 0);
           COUT : out  STD_LOGIC);
end INC_4;

architecture Behavioral of INC_4 is


-- Define components: half adder

COMPONENT HA1 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           OUT1 : out  STD_LOGIC;
           CRY : out  STD_LOGIC);
end COMPONENT;

-- Define internal signals here
signal C0, C1, C2, C3, C4, C5, C6: std_logic;

begin

HA1_1: HA1 port map ( A(0), INC, Y(0), C0);
HA1_2: HA1 port map ( A(1), C0, Y(1), C1);
HA1_3: HA1 port map ( A(2), C1, Y(2), C2);
HA1_4: HA1 port map ( A(3), C2, Y(3), C3);
HA1_5: HA1 port map ( A(4), C3, Y(4), C4);
HA1_6: HA1 port map ( A(5), C4, Y(5), C5);
HA1_7: HA1 port map ( A(6), C5, Y(6), C6);
HA1_8: HA1 port map ( A(7), C6, Y(7), COUT);


end Behavioral;

