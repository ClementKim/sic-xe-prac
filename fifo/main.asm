main    START    0
        EXTREF   fibo
        EXTREF   print
        EXTREF   stinit
        EXTREF   push
        EXTREF   pop

        LDA      #GAP
        +JSUB    stinit

loop    LDA      i
        ADD      #1
        STA      i
        COMP     #10
        JEQ      end
        +JSUB    fibo
        CLEAR    A
        ADDR     S, A
        +JSUB    print
        J        loop

end     J        end

i       WORD     0
gap     RESW     64
        END      main
