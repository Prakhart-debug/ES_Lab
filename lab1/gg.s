	AREA RESET, DATA, READONLY
	EXPORT __Vectors
__Vectors
	DCD 0x10000100
	DCD Reset_Handler
	ALIGN
	AREA mycode, CODE, READONLY
	ENTRY 
	EXPORT Reset_Handler
Reset_Handler
		MOV R0, #10
		MOV R1, #0x10
		LDR R2, =2_0111010101
		MOV R3, #-5
		LDR R4, =0xF378
		LDR R5, =0x12345678
STOP B STOP
	END 