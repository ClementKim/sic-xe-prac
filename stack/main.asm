MAIN     START     0
         EXTREF    STINIT
         EXTREF    PUSH
         EXTREF    POP

         LDA       #256
         +JSUB     STINIT

         LDA       #17
         +JSUB     PUSH

         LDA       #34
         +JSUB     PUSH

         LDA       #51
         +JSUB     PUSH

         LDA       #68
         +JSUB     PUSH

         +JSUB     POP
         STA       RES1

         +JSUB     POP
         STA       RES2

         +JSUB     POP
         STA       RES3

         +JSUB     POP
         STA       RES4

A        J         A

RES1     WORD      170
RES2     WORD      170
RES3     WORD      170
RES4     WORD      170
