*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
        ORG    $1000
START:                  ; first instruction of program

* Put program code here
        MOVE.L #$00000002, D0 ; dec 2
        CMPI.W #$8001, D0 ; dec -32767
        BGE GE
        MOVE   #$0000, D0
    
        SIMHALT             ; halt simulator

* Put variables and constants here
GE:     ADD    D0, D3
        END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
