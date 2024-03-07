*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
        ORG    $1000
START:                  ; first instruction of program

* Put program code here
        MOVE.L #$7FF290F5, D0
        BTST.L #$11, D0
        BEQ    LabelEq
        MOVE   D0, D1
        
        SIMHALT             ; halt simulator

* Put variables and constants here
LabelEq MOVE   D0, D3

        END    START        ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
