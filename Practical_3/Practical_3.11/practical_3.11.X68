*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
        ORG    $1000
START:
X       EQU    3                  ; first instruction of program
Y       EQU    7

* Put program code here
        MOVE   #X, D0
        MOVE   #Y, D1
    
LOOP    ADD    #$1, D0
        SUB    #$1, D1
        CMP    D0, D1
        BLE    EXIT
        BRA    LOOP

        SIMHALT             ; halt simulator

* Put variables and constants here
EXIT    MOVE   #03, D0
        TRAP   #15

        END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
