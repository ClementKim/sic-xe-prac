fact    START    0
        EXTREF   push
        EXTREF   pop
        EXTDEF   res

        COMP     #1
        JEQ      exit
        STA      tmpA
        STL      tmpL

        +JSUB    push
        LDA      tmpL
        +JSUB    push
        LDA      tmpA
        SUB      #1
        JSUB     fact

        +JSUB    pop
        STA      tmpL
        +JSUB    pop

        MUL      res
        STA      res
        LDL      tmpL
        RSUB

exit    RSUB

res  WORD     1
tmpA    RESW     1
tmpL    RESW     1
gap     RESW     64
