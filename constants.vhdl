----------------------------------------------------------------------------------
-- -- -- Create Date:      4/10/2018
-- -- -- Module Name:      constants
-- -- -- Designer Name:    Michael Asper
-- -- --
-- -- ----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package constants is

    -------------------
    -- HELPFUL TYPES
    -------------------
    subtype BYTE is STD_LOGIC_VECTOR(7 downto 0);
    type MATRIX is array (0 to 16) of BYTE;
    type EXP_KEY is array (0 to 10) of STD_LOGIC_VECTOR(127 downto 0);


end package constants;
