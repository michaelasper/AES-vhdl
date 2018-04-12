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
    port(state_in  : in    STATE;
         state_out : out   STATE
     );
end entity shiftrows;

architecture shiftrows_logic of shiftrows is
begin

    -- first column
    state_out(0) <= state_in(0);
    state_out(1) <= state_in(5);
    state_out(2) <= state_in(10);
    state_out(3) <= state_in(15);

    -- second column
    state_out(4) <= state_in(4);
    state_out(5) <= state_in(9);
    state_out(6) <= state_in(14);
    state_out(7) <= state_in(3);

    -- third column
    state_out(8) <= state_in(8);
    state_out(9) <= state_in(13);
    state_out(10) <= state_in(2);
    state_out(11) <= state_in(7);

    -- fourth column
    state_out(12) <= state_in(12);
    state_out(13) <= state_in(1);
    state_out(14) <= state_in(6);
    state_out(15) <= state_in(11);


end architecture shiftrows_logic;
