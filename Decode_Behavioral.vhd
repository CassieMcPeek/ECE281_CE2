----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:05:48 02/05/2014 
-- Design Name: 
-- Module Name:    Decode_Behavioral - Behavioral 
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

entity Decode_Behavioral is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           Y0 : out  STD_LOGIC;
           Y1 : out  STD_LOGIC;
           Y2 : out  STD_LOGIC;
           Y3 : out  STD_LOGIC
			 );
end Decode_Behavioral;

architecture Behavioral of Decode_Behavioral is

signal I0_Not, I1_Not: std_logic;

begin

Y0 <= I0_Not and I1_not and EN;
Y1 <= I0 and I1_Not and EN;
Y2 <= I0_Not and I1 and EN;
Y3 <= I0 and I1 and EN;

end Behavioral;

