sub_4031A8 proc near

arg_0= dword ptr  8

mov     edi, edi
push    ebp
mov     ebp, esp
mov     eax, [ebp+arg_0]
push    esi
mov     esi, ecx
mov     byte ptr [esi+0Ch], 0
test    eax, eax
jnz     short loc_40321E
call    sub_405F81
mov     [esi+8], eax
mov     ecx, [eax+6Ch]
mov     [esi], ecx
mov     ecx, [eax+68h]
mov     [esi+4], ecx
mov     ecx, [esi]
cmp     ecx, off_411B10
jz      short loc_4031EA
mov     ecx, dword_411A2C
test    [eax+70h], ecx
jnz     short loc_4031EA
call    sub_405C44
mov     [esi], eax

loc_4031EA:
mov     eax, [esi+4]
cmp     eax, lpAddend
jz      short loc_40320B
mov     eax, [esi+8]
mov     ecx, dword_411A2C
test    [eax+70h], ecx
jnz     short loc_40320B
call    sub_4054D8
mov     [esi+4], eax

loc_40320B:
mov     eax, [esi+8]
test    byte ptr [eax+70h], 2
jnz     short loc_403228
or      dword ptr [eax+70h], 2
mov     byte ptr [esi+0Ch], 1
jmp     short loc_403228

loc_40321E:
mov     ecx, [eax]
mov     [esi], ecx
mov     eax, [eax+4]
mov     [esi+4], eax

loc_403228:
mov     eax, esi
pop     esi
pop     ebp
retn    4
;; --- sub_4031A8 endp
