INCLUDE asmlib.inc

.data
	
	numberPrompt BYTE "Enter a number", 0	;a prompt that will output "Enter a number".
	sumOutput BYTE "The sum of all the numbers are: ", 0
	reversalOutput BYTE "The numbers in reverse order are: ", 0

	num1 WORD ?
	num2 WORD ? 
	num3 DWORD ?
	num4 DWORD ? 

.code


main PROC
	
	;ask user for the first number
	mov EDX, OFFSET numberPrompt	;write the prompt to the screen
	call writeLine	
	call readInt					;read user input
	mov num1 , ax					;store user input in val1 and into ax
	movzx eax, num1					;zero-extend num1 using movzx
	endl
	

	;ask user for the second number
	call writeLine					;write the prompt to the screen again
	call readInt					;read user input
	mov num2 , ax					;store user input in val1 and into ax
	movzx eax, num2					;zero-extend num2 using movzx
	endl

	;ask user for the third number
	call writeLine					;write the prompt to the screen again
	call readInt					;read user input
	mov num3, eax					;store user input in num3 and into eax
	endl

	;ask user for the fourth number
	call writeLine					;write the prompt to the screen again
	call readInt					;read user input
	mov num4, eax					;store user input in num4 and into eax
	endl

	;Summation process
	mov EDX, OFFSET sumOutput
	add eax, num3					;add num3 to EAX which already has num4
	movzx ebx, num1					;then, move num1 to EBX
	add eax, ebx					;add both registers
	movzx ebx, num2					;now, move num2 to EBX
	add eax, ebx					;add both registers again
	call writeString						
	call writeInt					;display the summation
	endl
	endl

	;Reversal process
	mov EDX, OFFSET reversalOutput
	call writeLine
	mov ax, num1					
	movzx eax, num1
	xchg eax, num4
	mov num1, ax
	call writeInt
	endl

	mov ax, num2
	movzx eax, num2
	xchg eax, num3
	mov num2, ax
	call writeInt
	endl

	mov eax, num3
	call writeInt
	endl
	mov eax, num4
	call writeInt 
	endl
	

	exit
main ENDP
END main
