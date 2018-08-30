.data
msg:
  .ascii "Hello Innsbruck!\n"
  len = . - msg

.align
.global _start  ; make `_start` available.
_start:
/* write syscall */
  MOV r0, #1    ;output stream is monitor.
  LDR r1, =msg
  LDR r2, =len  ;length of output string.
  MOV r7, #4    ;output to screen.
  SWI #0
  B end

/* exit syscall */
end:
  MOV r0, #0    ;input stream is keyboard.
  MOV r7, #1    ;output to terminal
  SWI #0
