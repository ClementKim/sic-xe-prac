     LDA    #10
     STA    var
     LDA    #var
     STA    ADDR
     LDA    #20
     STA    @ADDR

var  RESW  1
ADDR RESW  1
