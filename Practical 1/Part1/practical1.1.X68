*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    MOVE.B #9, D0
    MOVE.B D0, D1
    MOVE.B D1, $1100
    MOVE.B $1100, D2
    MOVE.B $1100, 100
    MOVE.L #$F9AC0234, $5000
    MOVE.L #$F9AC0234, 5000
    MOVE.W #0234, $5100
    MOVE.B #%101, $5200

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
