       LDX    zero

MOVECH LDCH   str1,X
       STCH   str2,X
       TIX    eleven
       JLT    MOVECH
       JEQ    EQUAL

EQUAL  TIX    eleven
       JGT    FIN

FIN    TIX    eleven

str1   BYTE   C'test string'
str2   RESB   11
zero   WORD   0
eleven WORD   11
