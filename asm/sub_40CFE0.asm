sub_40CFE0 proc near

var_10= dword ptr -10h
var_C= dword ptr -0Ch
var_8= dword ptr -8
var_4= dword ptr -4
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

push    ebp
mov     ebp, esp
sub     esp, 10h
mov     [ebp+var_10], ecx
mov     eax, [ebp+var_10]
mov     ecx, [eax+10h]
shr     ecx, 3
and     ecx, 3Fh
mov     [ebp+var_8], ecx
mov     edx, [ebp+var_10]
mov     eax, [edx+10h]
mov     ecx, [ebp+arg_4]
lea     edx, [eax+ecx*8]
mov     eax, [ebp+var_10]
mov     [eax+10h], edx
mov     ecx, [ebp+arg_4]
shl     ecx, 3
mov     edx, [ebp+var_10]
cmp     [edx+10h], ecx
jnb     short loc_40D027
mov     eax, [ebp+var_10]
mov     ecx, [eax+14h]
add     ecx, 1
mov     edx, [ebp+var_10]
mov     [edx+14h], ecx

loc_40D027:
mov     eax, [ebp+arg_4]
shr     eax, 1Dh
mov     ecx, [ebp+var_10]
add     eax, [ecx+14h]
mov     edx, [ebp+var_10]
mov     [edx+14h], eax
mov     eax, 40h
sub     eax, [ebp+var_8]
mov     [ebp+var_C], eax
mov     ecx, [ebp+arg_4]
cmp     ecx, [ebp+var_C]
jb      short loc_40D0AC
mov     edx, [ebp+var_C]
push    edx
mov     eax, [ebp+arg_0]
push    eax
mov     ecx, [ebp+var_8]
mov     edx, [ebp+var_10]
lea     eax, [edx+ecx+18h]
push    eax
call    sub_4029F0
add     esp, 0Ch
mov     ecx, [ebp+var_10]
add     ecx, 18h
push    ecx
mov     ecx, [ebp+var_10]
call    sub_40C090
mov     edx, [ebp+var_C]
mov     [ebp+var_4], edx
jmp     short loc_40D087

loc_40D07E:
mov     eax, [ebp+var_4]
add     eax, 40h
mov     [ebp+var_4], eax

loc_40D087:
mov     ecx, [ebp+var_4]
add     ecx, 3Fh
cmp     ecx, [ebp+arg_4]
jnb     short loc_40D0A3
mov     edx, [ebp+arg_0]
add     edx, [ebp+var_4]
push    edx
mov     ecx, [ebp+var_10]
call    sub_40C090
jmp     short loc_40D07E

loc_40D0A3:
mov     [ebp+var_8], 0
jmp     short loc_40D0B3

loc_40D0AC:
mov     [ebp+var_4], 0

loc_40D0B3:
mov     eax, [ebp+arg_4]
sub     eax, [ebp+var_4]
push    eax
mov     ecx, [ebp+arg_0]
add     ecx, [ebp+var_4]
push    ecx
mov     edx, [ebp+var_8]
mov     eax, [ebp+var_10]
lea     ecx, [eax+edx+18h]
push    ecx
call    sub_4029F0
add     esp, 0Ch
mov     esp, ebp
pop     ebp
retn    8
;; -------- sub_40CFE0 endp
