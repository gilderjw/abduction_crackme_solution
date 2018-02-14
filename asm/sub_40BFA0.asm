sub_40BFA0 proc near

var_4= dword ptr -4

push    ebp
mov     ebp, esp
push    ecx
mov     [ebp+var_4], ecx
push    8
push    0
mov     eax, [ebp+var_4]
add     eax, 10h
push    eax
call    sub_402FB0
add     esp, 0Ch
mov     ecx, [ebp+var_4]
mov     dword ptr [ecx], 21427531h
mov     edx, [ebp+var_4]
mov     dword ptr [edx+4], 75135135h
mov     eax, [ebp+var_4]
mov     dword ptr [eax+8], 3158AC31h
mov     ecx, [ebp+var_4]
mov     dword ptr [ecx+0Ch], 1A1B2A6h
mov     esp, ebp
pop     ebp
retn
;; -- sub_40BFA0 endp
