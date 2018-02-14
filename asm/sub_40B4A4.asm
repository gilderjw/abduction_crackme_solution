sub_40B4A4 proc near

arg_0= dword ptr  8

mov     edi, edi
push    ebp
mov     ebp, esp
push    ebx
xor     ebx, ebx
cmp     [ebp+arg_0], ebx
jnz     short loc_40B4B5
xor     eax, eax
jmp     short loc_40B4F6

loc_40B4B5:
push    esi
push    edi
push    [ebp+arg_0]
call    strlen_to_eax   ; length -> eax
                        ;
mov     esi, eax
inc     esi
push    esi
call    sub_409F9C
mov     edi, eax
pop     ecx
pop     ecx
cmp     edi, ebx
jz      short loc_40B4F2
push    [ebp+arg_0]
push    esi
push    edi
call    sub_409C9B
add     esp, 0Ch
test    eax, eax
jz      short loc_40B4EE
push    ebx
push    ebx
push    ebx
push    ebx
push    ebx
call    sub_404709
add     esp, 14h

loc_40B4EE:
mov     eax, edi
jmp     short loc_40B4F4

loc_40B4F2:
xor     eax, eax

loc_40B4F4:
pop     edi
pop     esi

loc_40B4F6:
pop     ebx
pop     ebp
retn
;; ----- sub_40B4A4 endp
