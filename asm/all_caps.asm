all_caps proc near

var_8= dword ptr -8
var_4= dword ptr -4
arg_0= dword ptr  8

push    ebp
mov     ebp, esp
sub     esp, 8
mov     eax, [ebp+arg_0]
push    eax
call    strlen_to_eax   ; length -> eax
                        ;
add     esp, 4
mov     [ebp+var_4], eax
mov     [ebp+var_8], 0
jmp     short loc_40B807

loc_40B7FE:
mov     ecx, [ebp+var_8]
add     ecx, 1
mov     [ebp+var_8], ecx

loc_40B807:
mov     edx, [ebp+var_8]
cmp     edx, [ebp+var_4]
jge     short loc_40B82B
mov     eax, [ebp+arg_0]
add     eax, [ebp+var_8]
movsx   ecx, byte ptr [eax]
push    ecx
call    sub_403345
add     esp, 4
mov     edx, [ebp+arg_0]
add     edx, [ebp+var_8]
mov     [edx], al
jmp     short loc_40B7FE

loc_40B82B:
mov     eax, [ebp+arg_0]
mov     esp, ebp
pop     ebp
retn

