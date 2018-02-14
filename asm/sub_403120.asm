sub_403120 proc near

arg_0= dword ptr  4
arg_4= dword ptr  8

mov     edx, [esp+arg_0]
mov     ecx, [esp+arg_4]
test    edx, 3
jnz     short loc_40316C

loc_403130:
mov     eax, [edx]
cmp     al, [ecx]
jnz     short loc_403164
or      al, al
jz      short loc_403160
cmp     ah, [ecx+1]
jnz     short loc_403164
or      ah, ah
jz      short loc_403160
shr     eax, 10h
cmp     al, [ecx+2]
jnz     short loc_403164
or      al, al
jz      short loc_403160
cmp     ah, [ecx+3]
jnz     short loc_403164
add     ecx, 4
add     edx, 4
or      ah, ah
jnz     short loc_403130
mov     edi, edi

loc_403160:
xor     eax, eax
retn
align 4

loc_403164:
sbb     eax, eax
shl     eax, 1
add     eax, 1
retn

loc_40316C:
test    edx, 1
jz      short loc_40318C
mov     al, [edx]
add     edx, 1
cmp     al, [ecx]
jnz     short loc_403164
add     ecx, 1
or      al, al
jz      short loc_403160
test    edx, 2
jz      short loc_403130

loc_40318C:
mov     ax, [edx]
add     edx, 2
cmp     al, [ecx]
jnz     short loc_403164
or      al, al
jz      short loc_403160
cmp     ah, [ecx+1]
jnz     short loc_403164
or      ah, ah
jz      short loc_403160
add     ecx, 2
jmp     short loc_403130

;; sub_403120 endp
