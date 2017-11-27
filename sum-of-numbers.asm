; By Aaditya Purani
; Summing numbers and storing in ebx
mov eax, 1
mov ebx, 0
mov ecx, 10 ; Sum of first 10 numbers
jmp label

label:
	add ebx, eax
	inc eax
	dec ecx
	jnz label
	
xor eax,eax	
