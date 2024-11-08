COPY    START    1000
.FIRST  STL      RETADR
CLOOP   JSUB     RDREC
        LDA      LENGTH
        COMP     ZERO
        JEQ      ENDFIL
        JSUB     WRREC
        J        CLOOP

ENDFIL  LDA      EOF
        STA      BUFFER
        LDA      THREE
        STA      LENGTH
        JSUB     WRREC
.       LDL      RETADR
.       RSUB

EOF     BYTE     C'EOF'
THREE   WORD     3
ZERO    WORD     0
END     WORD     1
ASEN    WORD     10
RETADR  WORD     10
LENGTH  RESW     1
BUFFER  RESB     4096

RDREC   LDX      ZERO
        LDA      ZERO

RLOOP   TD       INPUT
        JEQ      RLOOP
        RD       INPUT
        COMP     ASEN
        JEQ      EXIT
        STCH     BUFFER,X
        TIX      MAXLEN
        JLT      RLOOP

EXIT    STX      LENGTH
        RSUB

INPUT   BYTE     0
MAXLEN  WORD     4096

WRREC   LDX      ZERO
WLOOP   TD       OUTPUT
        JEQ      WLOOP
        LDCH     BUFFER,X
        WD       OUTPUT
        TIX      LENGTH
        JLT      WLOOP
        RSUB

OUTPUT  BYTE     1
        END      COPY

