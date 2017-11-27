; by Aaditya Purani
; Leap Year finder, if yes -> sets eax = 1 or if no -> sets eax = 0
; The DIV instruction returns the quotient in AX and the remainder in DX, on the x86 architecture.

main:
	mov dx, 0
	mov ax, 4000 ; Checking Leap year here
	mov [esp-4], ax
	mov bx, 400
	div bx
	cmp dx, 0
	jz is_leap
	xor ax, ax
	mov ax, [esp-4]
	mov bx, 4
	div bx
	mov [esp-8], dx
	cmp dx, 0
	xor dx,dx
	mov bx, 100
	mov eax, [esp-4]
	div bx
	cmp dx, 0
	cmp dx, [esp-8]
	jz is_not_leap
	and dx, [esp-8]
	jz is_leap
	jnz is_not_leap
	xor eax,eax
	ret

is_leap:
	mov eax, 1
	ret
	
is_not_leap:
	mov eax,0
	mov ebx,0
