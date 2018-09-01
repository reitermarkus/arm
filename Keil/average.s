numbers		DCD		3,67,34,222
					LDR		r4, =numbers
					LDR		r3, [r4]

loop
					CMP		r3, #0
					BEQ		div
					ADD		r1, r1, r3
					ADD		r2, r2, #1
					LDR		r3, [r4, #4]!
					BL		loop

div
					MOV		r2, r2, LSL #16
					MOV		r3, #16
divloop
					RSBS		r1, r2, r1, LSL #1
					ORRPL	r1, r1, #1
					ADDMI	r1, r1, r2
					MOV		r0, r1
					SUBS		r3, r3, #1
					BNE		divloop
					end
