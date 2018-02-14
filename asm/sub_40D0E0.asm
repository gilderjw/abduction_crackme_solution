sub_40D0E0 proc near

var_1C= dword ptr -1Ch
&weird_thing= dword ptr -18h
var_14= dword ptr -14h
var_10= byte ptr -10h
var_8= dword ptr -8
var_4= dword ptr -4

push    ebp
mov     ebp, esp
sub     esp, 1Ch
mov     eax, dword_411004
xor     eax, ebp
mov     [ebp+var_8], eax
mov     [ebp+&weird_thing], ecx
push    8
mov     eax, [ebp+&weird_thing]
add     eax, 10h
push    eax
lea     ecx, [ebp+var_10]
push    ecx
mov     ecx, [ebp+&weird_thing]
call    sub_40BEF0
mov     edx, [ebp+&weird_thing]
mov     eax, [edx+10h]
shr     eax, 3
and     eax, 3Fh
mov     [ebp+var_4], eax
cmp     [ebp+var_4], 38h
jnb     short loc_40D12A
mov     ecx, 38h
sub     ecx, [ebp+var_4]
mov     [ebp+var_1C], ecx
jmp     short loc_40D135

loc_40D12A:
mov     edx, 78h
sub     edx, [ebp+var_4]
mov     [ebp+var_1C], edx

loc_40D135:
mov     eax, [ebp+var_1C]
mov     [ebp+var_14], eax
mov     ecx, [ebp+var_14]
push    ecx
push    offset unk_4120A0
mov     ecx, [ebp+&weird_thing]
call    sub_40CFE0
push    8
lea     edx, [ebp+var_10]
push    edx
mov     ecx, [ebp+&weird_thing]
call    sub_40CFE0
push    10h
mov     eax, [ebp+&weird_thing]
push    eax
mov     ecx, [ebp+&weird_thing]
add     ecx, 58h
push    ecx
mov     ecx, [ebp+&weird_thing]
call    sub_40BEF0
push    8
push    0
mov     edx, [ebp+&weird_thing]
add     edx, 10h
push    edx
call    sub_402FB0
add     esp, 0Ch
push    10h
push    0
mov     eax, [ebp+&weird_thing]
push    eax
call    sub_402FB0
add     esp, 0Ch
push    40h
push    0
mov     ecx, [ebp+&weird_thing]
add     ecx, 18h
push    ecx
call    sub_402FB0
add     esp, 0Ch
mov     ecx, [ebp+var_8]
xor     ecx, ebp
call    anti_debug
mov     esp, ebp
pop     ebp
retn
;; --- sub_40D0E0 endp
