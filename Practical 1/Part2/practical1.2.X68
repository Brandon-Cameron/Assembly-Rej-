*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here

    LEA     $2000, A2
    MOVE.L  #$3256FF01,(A2)
    MOVE.L  (A2), D3
    MOVE.W  (A2), D4
    MOVE.B  (A2), D5
    
    MOVE.L  #$123456, 24576
    LEA     24576, A3
    ADD.L   #22, (A3)

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
