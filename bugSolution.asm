mov ecx, [input_size]

;Validate ecx before calculation. Check for both negative numbers and numbers greater than array size
cmp ecx, 0
jle error_handler
; Assume array size is stored in another register, e.g., esi
cmp ecx, esi
jge error_handler

mov eax, [ebx+ecx*4]

;...rest of code

error_handler:
; Handle the error appropriately (e.g., return an error code)
mov eax, -1 ; Or any other suitable error code
ret