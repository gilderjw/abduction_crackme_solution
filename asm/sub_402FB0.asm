sub_402FB0 proc near

arg_0= dword ptr  4
arg_4= byte ptr  8
arg_8= dword ptr  0Ch

mov     edx, [esp+arg_8]
mov     ecx, [esp+arg_0]
test    edx, edx
jz      short loc_403025
xor     eax, eax
mov     al, [esp+arg_4]
test    al, al
jnz     short loc_402FDC
cmp     edx, 100h
jb      short loc_402FDC
cmp     dword_425F24, 0
jz      short loc_402FDC
jmp     sub_404E36

loc_402FDC:
push    edi
mov     edi, ecx
cmp     edx, 4
jb      short loc_403015
neg     ecx
and     ecx, 3
jz      short loc_402FF7
sub     edx, ecx

loc_402FED:
mov     [edi], al
add     edi, 1
sub     ecx, 1
jnz     short loc_402FED

loc_402FF7:
mov     ecx, eax
shl     eax, 8
add     eax, ecx
mov     ecx, eax
shl     eax, 10h
add     eax, ecx
mov     ecx, edx
and     edx, 3
shr     ecx, 2
jz      short loc_403015
rep stosd
test    edx, edx
jz      short loc_40301F

loc_403015:
mov     [edi], al
add     edi, 1
sub     edx, 1
jnz     short loc_403015

loc_40301F:
mov     eax, [esp+4+arg_0]
pop     edi
retn

loc_403025:
mov     eax, [esp+arg_0]
retn
;; ------------   sub_402FB0 endp