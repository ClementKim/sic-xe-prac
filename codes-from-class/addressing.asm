      LDA    #10
      STA    VAR
      LDA    #VAR
      STA    ADDR
      LDA    #20
      STA    @ADDR

VAR   RESW   1
ADDR  RESW   1
