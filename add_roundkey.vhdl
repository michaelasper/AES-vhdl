----------------------------------------------------------------------------------
-- -- -- Create Date:      4/10/2018
-- -- -- Module Name:      sbox
-- -- -- Designer Name:    Michael Asper
-- -- --
-- -- ----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all; -- to unsigned and to integer

library work;
use work.constants.all;

entity addroundkey is
    port(a  :   in  BYTE;
         k  :   in  BYTE;
         b  :   out BYTE
     );
end entity;

architecture addroundkey_logic of addroundkey is
begin
    b <= a xor k;
end architecture addroundkey_logic;
