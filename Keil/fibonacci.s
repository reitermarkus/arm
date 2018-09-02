										;final result in r1.
		MOV		r3, #30		;n.
		CMP		r3, #1
		BLE		finish
		MOV		r1, #1		;current element.
		MOV		r2, #1		;previous element.
		MOV		r4, #2		;counter.

loop
		CMP		r4, r3
		BEQ		finish
		MOV		r5, r1
		ADD		r1, r1, r2
		MOV		r2, r5
		ADD		r4, r4, #1
		BAL		loop

finish
		end
