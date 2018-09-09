		MOV		r1, #5				;number n
		MOV		r0, r1
		CMP		r1, #1
		BLE		finish
loop
		SUB		r1, r1, #1
		MOV		r2, r1
		CMP		r1, #1
		BEQ		finish
		MOV		r4, r0
		B		mul
mul
		ADD		r0, r0, r4
		SUB		r2, r2, #1
		CMP		r2, #1
		BGT		mul
		B		loop
finish
		end							;!n to be found in r0