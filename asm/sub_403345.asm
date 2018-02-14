sub_403345 proc near

arg_0= dword ptr  8

mov     edi, edi
push    ebp
mov     ebp, esp
cmp     dword_4246A8, 0
jnz     short loc_403363
mov     eax, [ebp+arg_0]
lea     ecx, [eax-61h]
cmp     ecx, 19h
ja      short loc_40336F
add     eax, 0FFFFFFE0h
pop     ebp
retn

loc_403363:
push    0
push    [ebp+arg_0]
call    sub_40322F
pop     ecx
pop     ecx

loc_40336F:
pop     ebp
retn
;; --- sub_403345 endp
