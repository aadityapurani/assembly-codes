; Reverse Integers by Aaditya Purani
mov eax, 1 ; Moving values we want into registers
mov ebx, 2
mov ecx, 3
mov edx, 4
push eax   ; Pushing into Stack
push ebx
push ecx
push edx
pop eax    ; Popping because stack is LIFO
pop ebx
pop ecx
pop edx
