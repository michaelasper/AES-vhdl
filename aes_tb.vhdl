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

entity aes_tb is
    end entity aes_tb;

begin architecture aes_tb_logic of aes_tb is
    component shiftrows is
        port(state_in  : in    STATE;
             state_out : out   STATE
         );
    end component;
    signal A, B : STATE;
    begin 
        SETUP: shiftrows port map(A, B);

        process
            
