MAIN    START   0

TEST    JSUB    QINIT
        JSUB    ENQUEUE
        JSUB    ENQUEUE
        JSUB    ENQUEUE
        JSUB    DEQUEUE
        JSUB    DEQUEUE
        JSUB    DEQUEUE

A       J       A

QINIT   LDA     #QUEUE
        STA     TOP
        STA     BOTTOM
        RSUB

ENQUEUE TD      INPUT
        JEQ     ENQUEUE
        RD      INPUT
        STCH    @TOP
        LDA     TOP 
        ADD     #1
        STA     TOP
        RSUB

DEQUEUE TD      OUTPUT
        JEQ     DEQUEUE
        LDCH    @BOTTOM
        WD      OUTPUT
        LDA     BOTTOM
        ADD     #1
        STA     BOTTOM
        RSUB

INPUT   BYTE    0
OUTPUT  BYTE    1
TOP     RESW    1
BOTTOM  RESW    1
QUEUE   RESB    10000
