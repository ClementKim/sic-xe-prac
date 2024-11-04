STACK    START    0
         EXTDEF   STINIT
         EXTDEF   PUSH
         EXTDEF   POP

STINIT   STA      STACKPTR
         RSUB

PUSH     STA      @STACKPTR
         LDA      STACKPTR
         ADD      #3
         STA      STACKPTR
         RSUB

POP      LDA      STACKPTR
         SUB      #3
         STA      STACKPTR
         LDA      @STACKPTR
         RSUB

STACKPTR RESW     1
         END      STACK
