mov ecx, [someVariable]

;Check for potential overflow before calculation
cmp ecx, 0xFFFFFFFF / 4 ;check for max limit for ecx before multiplication
ja overflow_error ;jump if ecx is too large

mov eax, ebx
add eax, ecx
mov ecx, 4 ; multiply by 4.  This needs to be done carefully with larger numbers.
imul ecx
add eax, ecx
jmp memory_access

overflow_error:
;Handle overflow error appropriately (e.g., return an error code)
mov eax, -1 ; or any error code
jmp end_function

memory_access:
mov eax, [eax] ;Now it is safe to access memory
jmp end_function
end_function: