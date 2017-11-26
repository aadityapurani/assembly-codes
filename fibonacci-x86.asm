; By Aaditya Purani
mov eax, 0   ; Fibonacci Always starts with 0
mov ebx, 1   ; For future operations
mov ecx, 10  ; Let's calculate when n=10
jmp label    ; Jump it 

label:	     ; Just another function
	push eax   ; Push on the stack so that I can save the value
	add eax, ebx ; Operation
	pop ebx    ; Popping off from stack to ebx
	dec ecx    ; decrementing counter
	jnz label  ; Because we need to continue until 0

xor ebx,ebx	 ; because ebx ain't required
	
