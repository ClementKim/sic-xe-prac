fibo    START    0 
        EXTREF   push
        EXTREF   pop

        COMP     #1
        JEQ      exit
        COMP     #2
        JEQ      exit

        STL      tmpL

        +JSUB    push
        LDA      tmpL
