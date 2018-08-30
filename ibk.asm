.data
msg:
  .ascii "Hello Innsbruck!\n"
  len = . - msg

.align
.global _start
_start:
/* write syscall */
  MOV r0, #1
  LDR r1, =msg
  LDR r2, =len
  MOV r7, #4
  SWI #0
  B end

/* exit syscall */
end:
  MOV r0, #0
  MOV r7, #1
  SWI #0
