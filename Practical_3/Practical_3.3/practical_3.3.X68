*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
        ORG    $1000
START:                  ; first instruction of program

* Put program code here
        MOVE.L #$0001AABB20, D0
        CMP.B  #$00, D0
        BEQ.S  ValueIs20
        MOVE.B D0, D1

        SIMHALT             ; halt simulator

* Put variables and constants here
ValueIs20
        MOVE.B D0, D2

        END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
