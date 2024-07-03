main     START     0
         EXTREF    res
         EXTREF    fact
         EXTREF    print
         EXTREF    stinit

         LDA       #gap
         +JSUB     stinit

loop     LDA       #1
         +STA      res
         LDA       i
         ADD       #1
         STA       i
         COMP      #10
         JEQ       end
         +JSUB     fact
         +LDA      res
         +JSUB     print
         J         loop

end      J         end

i        WORD      0
gap      RESW      64
         END       main
