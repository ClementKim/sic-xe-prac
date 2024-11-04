       LDX    #0

CHANGE LDCH   str1,X
       COMP   #96
       JLT    UPPER
       JGT    LOWER

UPPER  LDCH   str1,X
       ADD    #32
       STCH   str2,X
       TIX    #11
       JLT    CHANGE
       JEQ    EQUAL
       J      CHANGE

LOWER  LDCH   str1,X
       SUB    #32
       STCH   str2,X
       TIX    #11
       JLT    CHANGE
       JEQ    EQUAL
       J      CHANGE

EQUAL  TIX    #11
       JGT    FIN

FIN    TIX    #11

str1   BYTE   C'AbraCadaBra'
str2   RESB   11
