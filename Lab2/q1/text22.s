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
		LDR R0, =SRC
		LDR R1, =DST
		LDR R2, [R0]
		STR R2, [R1]
		LDR R2, [R0,#4]
		STR R2, [R1, #4]
		LDR R2, [R0,#8]
		STR R2, [R1, #8]
		LDR R2, [R0,#12]
		STR R2, [R1, #12]
		LDR R2, [R0,#16]
		STR R2, [R1, #16]
		LDR R2, [R0,#20]
		STR R2, [R1, #20]
		LDR R2, [R0,#24]
		STR R2, [R1, #24]
		LDR R2, [R0,#28]
		STR R2, [R1, #28]
		LDR R2, [R0,#32]
		STR R2, [R1, #32]
		LDR R2, [R0,#36]
		STR R2, [R1, #36]
STOP B STOP
SRC DCD 0x12345678, 0x48CD12, 0x56, 0x78, 0x10, 0x20,0x30,0x40,0x50,0x60 
	AREA Mydata, DATA, READWRITE
DST DCD 0, 0, 0
	END 