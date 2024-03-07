*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
        ORG    $1000
START:                  ; first instruction of program

* Put program code here
INFLOOP MOVE.B #$0F, $000400

DELAY   MOVE.L #$3, D6

DEL1    SUB.L  #$1, D6
        BNE    DEL1
        MOVE.L #$4, D0
        JMP    INFLOOP

        SIMHALT             ; halt simulator

* Put variables and constants here

        END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
