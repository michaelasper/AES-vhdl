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

entity add_roundkey_p is
    port(A  :   in  STATE;
         KEY:   in  KEY;   
         B  :   out STATE
     );
end entity add_roundkey_p;


architecture add_roundkey_p_logic of add_roundkey_p is

begin
    process(A, KEY)
        for i in 16 loop
            B(i) <= A(i) xor KEY(i);
        end loop;
    end process;
end architecture add_roundkey_p_logic;
