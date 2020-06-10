.686P		; Pentium Pro or later
.MODEL flat, stdcall
.STACK 4096

clearScreen PROTO C
randNum PROTO C
randSeed PROTO C
randRange PROTO
writeFloat PROTO C
writeMoney PROTO C
readFloat PROTO C
readLine PROTO C
readString PROTO C
writeInt PROTO C
readInt PROTO C
writeHex PROTO C
newLine PROTO C
readChar PROTO C
writeChar PROTO C
writeString PROTO C
writeLine PROTO C
clearScreen PROTO C



ExitProcess PROTO, dwExitCode: DWORD
exit MACRO
	INVOKE ExitProcess, 0
ENDM

endl MACRO
	call newLine
ENDM

cls MACRO
	call clearScreen
ENDM
	
printFlags MACRO
	pushfd
	pop eax
	call writeInt
ENDM