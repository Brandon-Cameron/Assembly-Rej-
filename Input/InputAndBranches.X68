*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
CR      EQU    $0D
LF      EQU    $0A

        ORG    $1000
START:                          ; first instruction of program

* Put program code here

LOOP    LEA     MESSAGE,A1           
        MOVE.B  #14,D0
        TRAP    #15
        
        
        MOVE.B  #4,D0
        TRAP    #15
        CMP.L   #0,D1
        BEQ     DONE
        
        CMP.B   #0,D1
        BLT     INVALID
        CMP.B   #9,D1
        BGT     INVALID
        
        BRA     LOOP
        
INVALID LEA     INV,A1
        MOVE.B  #14,D0
        TRAP    #15
        BRA     LOOP
        
DONE    MOVE.B  #9,D0
        TRAP    #15             ; halt simulator
        
        CMP.B   #1,D1
        BNE     TWO
        LEA     DISPONE,A1
        MOVE.B  #14,D0
        TRAP    #15
        BRA     LOOP
        
TWO     CMP.B   #2,D1
        BNE     THREE
        LEA     DISPTWO,A1
        MOVE.B  #14,D0
        TRAP    #15
        BRA     LOOP
        
THREE   CMP.B   #3,D1
        BNE     FOUR
        LEA     DISPTHREE,A1
        MOVE.B  #14,D0
        TRAP    #15
        BRA     LOOP
        
FOUR    CMP.B   #4,D1
        BNE     FIVE
        LEA     DISPFOUR,A1
        MOVE.B  #14,D0
        TRAP    #15
        BRA     LOOP
        
FIVE    CMP.B   #5,D1
        BNE     SIX
        LEA     DISPFIVE,A1
        MOVE.B  #14,D0
        TRAP    #15
        BRA     LOOP
        
SIX     CMP.B   #6,D1
        BNE     SEVEN
        LEA     DISPSIX,A1
        MOVE.B  #14,D0
        TRAP    #15
        BRA     LOOP
        
SEVEN   CMP.B   #7,D1
        BNE     EIGHT
        LEA     DISPSEVEN,A1
        MOVE.B  #14,D0
        TRAP    #15
        BRA     LOOP
        
EIGHT   CMP.B   #8,D1
        BNE     NINE
        LEA     DISPEIGHT,A1
        MOVE.B  #14,D0
        TRAP    #15
        BRA     LOOP
      
NINE    CMP.B   #9,D1
        LEA     DISPNINE,A1
        MOVE.B  #14,D0
        TRAP    #15
        BRA     LOOP
        
* Put variables and constants here

MESSAGE DC.B    'ENTER A NUMBER, ENTER 0 TO EXIT: ',0
INV     DC.B    'THAT IS NOT BETWEEN 1 AND 9',CR,LF,0
DISPONE DC.B    'HELLO MERCURY',CR,LF,0
DISPTWO DC.B    'HELLO VENUS',CR,LF,0
DISPTHREE DC.B    'HELLO EARTH',CR,LF,0
DISPFOUR DC.B    'HELLO MARS',CR,LF,0
DISPFIVE DC.B    'HELLO JUPITAR',CR,LF,0
DISPSIX DC.B    'HELLO SATURN',CR,LF,0
DISPSEVEN DC.B    'HELLO URANUS',CR,LF,0
DISPEIGHT DC.B    'HELLO NEPTUNE',CR,LF,0
DISPNINE DC.B    'HELLO PLUTO',CR,LF,0

        END     START           ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
