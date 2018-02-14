public snprintf ; weak
snprintf proc near

var_20= dword ptr -20h
var_1C= dword ptr -1Ch
var_18= dword ptr -18h
var_14= dword ptr -14h
arg_0= dword ptr  8
arg_4= dword ptr  0Ch
arg_8= byte ptr  10h

mov     edi, edi
push    ebp
mov     ebp, esp
sub     esp, 20h
push    ebx
xor     ebx, ebx
cmp     [ebp+arg_4], ebx
jnz     short loc_402D82

loc_402D65:
call    sub_404899
push    ebx
push    ebx
push    ebx
push    ebx
push    ebx
mov     dword ptr [eax], 16h
call    sub_404831
add     esp, 14h
or      eax, 0FFFFFFFFh
jmp     short loc_402DCF

loc_402D82:
mov     eax, [ebp+arg_0]
cmp     eax, ebx
jz      short loc_402D65
push    esi
mov     [ebp+var_18], eax
mov     [ebp+var_20], eax
lea     eax, [ebp+arg_8]
push    eax
push    ebx
push    [ebp+arg_4]
lea     eax, [ebp+var_20]
push    eax
mov     [ebp+var_1C], 7FFFFFFFh
mov     [ebp+var_14], 42h
call    sub_403B62
add     esp, 10h
dec     [ebp+var_1C]
mov     esi, eax
js      short loc_402DC0
mov     eax, [ebp+var_20]
mov     [eax], bl
jmp     short loc_402DCC

loc_402DC0:
lea     eax, [ebp+var_20]
push    eax
push    ebx
call    sub_403958
pop     ecx
pop     ecx

loc_402DCC:
mov     eax, esi
pop     esi

loc_402DCF:
pop     ebx
leave
retn
;; ----------- snprintf endp