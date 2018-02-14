sub_402DE0 proc near

arg_0= dword ptr  4
arg_4= dword ptr  8
arg_8= dword ptr  0Ch

mov     ecx, [esp+arg_8]
push    edi
test    ecx, ecx
jz      loc_402EA4
mov     edi, [esp+4+arg_0]
push    esi
test    edi, 3
push    ebx
jz      short loc_402E0C

loc_402DFB:
mov     al, [edi]
add     edi, 1
test    al, al
jz      short loc_402E3D
test    edi, 3
jnz     short loc_402DFB

loc_402E0C:
mov     eax, [edi]
mov     edx, 7EFEFEFFh
add     edx, eax
xor     eax, 0FFFFFFFFh
xor     eax, edx
add     edi, 4
test    eax, 81010100h
jz      short loc_402E0C
mov     eax, [edi-4]
test    al, al
jz      short loc_402E4C
test    ah, ah
jz      short loc_402E47
test    eax, 0FF0000h
jz      short loc_402E42
test    eax, 0FF000000h
jnz     short loc_402E0C

loc_402E3D:
sub     edi, 1
jmp     short loc_402E4F

loc_402E42:
sub     edi, 2
jmp     short loc_402E4F

loc_402E47:
sub     edi, 3
jmp     short loc_402E4F

loc_402E4C:
sub     edi, 4

loc_402E4F:
mov     esi, [esp+0Ch+arg_4]
test    esi, 3
jnz     short loc_402E64
mov     ebx, ecx
shr     ecx, 2
jnz     short loc_402EBE
jmp     short loc_402E86

loc_402E64:
mov     dl, [esi]
add     esi, 1
test    dl, dl
jz      short loc_402EAA
mov     [edi], dl
add     edi, 1
sub     ecx, 1
jz      short loc_402EA0
test    esi, 3
jnz     short loc_402E64
mov     ebx, ecx
shr     ecx, 2
jnz     short loc_402EBE

loc_402E86:
mov     ecx, ebx
and     ecx, 3
jz      short loc_402EA0

loc_402E8D:
mov     dl, [esi]
add     esi, 1
mov     [edi], dl
add     edi, 1
test    dl, dl
jz      short loc_402EA2
sub     ecx, 1
jnz     short loc_402E8D

loc_402EA0:
mov     [edi], cl

loc_402EA2:
pop     ebx
pop     esi

loc_402EA4:
mov     eax, [esp+4+arg_0]
pop     edi
retn

loc_402EAA:
mov     [edi], dl
mov     eax, [esp+0Ch+arg_0]
pop     ebx
pop     esi
pop     edi
retn

loc_402EB4:
mov     [edi], edx
add     edi, 4
sub     ecx, 1
jz      short loc_402E86

loc_402EBE:
mov     edx, 7EFEFEFFh
mov     eax, [esi]
add     edx, eax
xor     eax, 0FFFFFFFFh
xor     eax, edx
mov     edx, [esi]
add     esi, 4
test    eax, 81010100h
jz      short loc_402EB4
test    dl, dl
jz      short loc_402EAA
test    dh, dh
jz      short loc_402F0A
test    edx, 0FF0000h
jz      short loc_402EFA
test    edx, 0FF000000h
jnz     short loc_402EB4
mov     [edi], edx
mov     eax, [esp+0Ch+arg_0]
pop     ebx
pop     esi
pop     edi
retn

loc_402EFA:
mov     [edi], dx
xor     edx, edx
mov     eax, [esp+0Ch+arg_0]
mov     [edi+2], dl
pop     ebx
pop     esi
pop     edi
retn

loc_402F0A:
mov     [edi], dx
mov     eax, [esp+0Ch+arg_0]
pop     ebx
pop     esi
pop     edi
retn
;; --- sub_402DE0 endp
