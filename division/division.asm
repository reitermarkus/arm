.global _start
_start:
  LDR r1, =169
  LDR r2, =12
  BL div
  MOV r7, #1
  SWI #0

div:
  MOV r2, r2, LSL #16
  MOV r3, #16

divloop:
  RSBS r1, r2, r1, LSL #1
  ORRPL r1, r1, #1
  ADDMI r1, r1, r2
  MOV r0, r1
  SUBS r3, r3, #1
  BNE divloop
  MOV pc, lr
