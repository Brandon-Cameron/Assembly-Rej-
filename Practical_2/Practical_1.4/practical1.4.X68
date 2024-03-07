*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    MOVE.B  X, D0
    MOVE.B  D0, Y   ; Moves value of D0 to Y which is at address 2000
    MOVE.B  Y, D1  
    
    SIMHALT             ; halt simulator

* Put variables and constants here
X   DC.B   10
    ORG    $2000
Y   DS.B   1

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
