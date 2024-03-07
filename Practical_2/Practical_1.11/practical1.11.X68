*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
        ORG    $1000
START:                  ; first instruction of program

* Put program code here
        MOVE.W #$3, D0
        MOVE.L #$1020002, D1
        MULU   D0, D1
        
        MOVE.W #$3, D0
        MOVE.L #$1020002, D1
        MULU.W D0, D1
        
        MOVE.L #$0000FFC0, D4
        MULS.W #$0010, D4

        SIMHALT             ; halt simulator

* Put variables and constants here

        END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
