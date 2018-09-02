numbers	DCD		12, 67, 7, 34, 5, 222
				LDR		r1, =numbers
				LDR		r3, [r1]
				MOV		r0, r3

loop
				LDR		r3, [r1, #4]!
				CMP		r3, #0
				BEQ		finish
				CMP		r3, r0
				BGE		loop
				MOV		r0, r3
				BAL		loop

finish
				end
