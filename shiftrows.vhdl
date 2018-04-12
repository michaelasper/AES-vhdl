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

entity shiftrows is
    port(state  : in    MATRIX;
         result : out   MATRIX
     );
end entity shiftrows;

architecture shiftrows_logic of shiftrows is
begin

    result(0) <= state(0);
    result(1) <= state(5);
    result(2) <= state(10);
    result(3) <= state(15);

    result(4) <= state(4);
    result(5) <= state(9);
    result(6) <= state(14);
    result(7) <= state(3);

    result(8) <= state(8);
    result(9) <= state(13);
    result(10) <= state(2);
    result(11) <= state(7);

    result(12) <= state(12);
    result(13) <= state(1);
    result(14) <= state(6);
    result(15) <= state(11);


end architecture shiftrows_logic;
