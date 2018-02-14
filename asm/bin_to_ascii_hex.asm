bin_to_ascii_hex proc near

var_118= byte ptr -118h
var_14= dword ptr -14h
var_10= byte ptr -10h
var_4= dword ptr -4
arg_0= dword ptr  8

push    ebp
mov     ebp, esp
sub     esp, 118h
mov     eax, dword_411004
xor     eax, ebp
mov     [ebp+var_4], eax
push    100h
push    0
lea     eax, [ebp+var_118]
push    eax
call    sub_402FB0
add     esp, 0Ch
push    0Ah
push    0
lea     ecx, [ebp+var_10]
push    ecx
call    sub_402FB0
add     esp, 0Ch
mov     [ebp+var_14], 0
jmp     short loc_40C03B

loc_40C032:
mov     edx, [ebp+var_14]
add     edx, 1
mov     [ebp+var_14], edx

loc_40C03B:
cmp     [ebp+var_14], 10h
jge     short loc_40C073
mov     eax, [ebp+arg_0]
add     eax, [ebp+var_14]
movzx   ecx, byte ptr [eax]
push    ecx
push    offset a02x     ; "%02x"
lea     edx, [ebp+var_10]
push    edx
call    snprintf
add     esp, 0Ch
push    0Ah
lea     eax, [ebp+var_10]
push    eax
lea     ecx, [ebp+var_118]
push    ecx
call    sub_402DE0
add     esp, 0Ch
jmp     short loc_40C032

loc_40C073:
lea     edx, [ebp+var_118]
push    edx
call    sub_40B4A4
add     esp, 4
mov     ecx, [ebp+var_4]
xor     ecx, ebp
; call    anti_debug
mov     esp, ebp
pop     ebp
retn
