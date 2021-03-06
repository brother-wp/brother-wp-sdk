include 'header.asm'

; Main entry point
call    ClearScreen

; Show the message
ld      bc,Message
call    ShowMessage

; Pause for 10 seconds
ld bc, 100h
call Delay

call ResetAndExit
ret

; Includes must come after the main entry point of the app.
include './library/screen/BottomMenu.asm'
include './library/screen/Screen.asm'
include './library/utils/Flow.asm'
include './library/utils/String.asm'
include './library/utils/Wait.asm'

Message:
    db $0e, $00, $90, $00 ; Message bar, yes. Offset of some sort
    db "Hello"
    db $00 ; spaces are nulls for message bar
    db "World!"
    db $ff ; String terminator