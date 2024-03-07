*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
        ORG    $1000
START:                  ; first instruction of program

* Put program code here
    
        LEA     MESSAGE,A1
        MOVE.B  #14,D0
        TRAP    #15             ; halt simulator

* Put variables and constants here
CR      EQU    $0D
LF      EQU    $0A
MESSAGE DC.B   'HELLO WORLD',CR,LF
        DC.B   'EASSSSSYYYY MOONNNNEEEEEEYYYY',0
        END    START        ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
