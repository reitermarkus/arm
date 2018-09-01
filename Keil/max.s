numbers		DCD		3,67,34,222
					LDR		r1, =numbers
					LDR		r3, [r1]
					MOV		r0, r3

loop
					CMP		r3, #0
					BEQ		finish
					LDR		r3, [r1, #4]!
					CMP		r3, r0
					BLE		loop
					MOV		r0, r3
					BAL		loop

finish
					end
