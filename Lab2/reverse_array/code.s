	AREA RESET, DATA, READONLY
	EXPORT __Vectors
__Vectors
	DCD 0x10000100
	DCD Reset_Handler
	ALIGN
	AREA mycode, CODE, READONLY
	ENTRY 
	;jdskjhkjhdsfksjhdvcksjdcdss
	EXPORT Reset_Handler
Reset_Handler
		LDR R0, =SRC
		LDR R1, =DST
		MOV R3, #0xA
UP		LDR R1, [R0], #4
		STR R1, [R2], #4
		SUBS R3, #01
		BNE UP
STOP B STOP
SRC DCD 0x12345678, 0x48CD12, 0x56, 0x78, 0x10, 0x20,0x30,0x40,0x50,0x60 
	AREA Mydata, DATA, READWRITE
DST DCD 0, 0, 0
	END 