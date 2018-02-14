interesting_serial_stuff proc near

var_110= byte ptr -110h
var_C= dword ptr -0Ch
user_sum= dword ptr -8
var_4= dword ptr -4
username= dword ptr  8
arg_4= dword ptr  0Ch
aGrnX db 'gRn-%X',0

push    ebp
mov     ebp, esp
sub     esp, 110h
mov     eax, dword_411004
xor     eax, ebp
mov     [ebp+var_C], eax
push    0FFh
push    0
lea     eax, [ebp+var_110]
push    eax
call    sub_402FB0      ; memset(0)?
add     esp, 0Ch
mov     [ebp+var_4], 0
mov     [ebp+user_sum], 0
mov     [ebp+user_sum], 0
jmp     short loc_40BB99 ; username

loc_40BB90:
mov     ecx, [ebp+user_sum]
add     ecx, 1
mov     [ebp+user_sum], ecx

loc_40BB99:             ; username
mov     edx, [ebp+username]
push    edx
call    strlen_to_eax   ; length -> eax
                        ;
add     esp, 4
cmp     [ebp+user_sum], eax
jnb     short loc_40BBBB
mov     eax, [ebp+username]
add     eax, [ebp+user_sum]
movsx   ecx, byte ptr [eax]
add     ecx, [ebp+var_4]
mov     [ebp+var_4], ecx
jmp     short loc_40BB90

loc_40BBBB:
mov     edx, 0FFh
sub     edx, [ebp+var_4]
mov     [ebp+var_4], edx
mov     eax, [ebp+var_4]
imul    eax, 133729h
mov     [ebp+var_4], eax
mov     ecx, [ebp+var_4]
imul    ecx, 3122h
mov     [ebp+var_4], ecx
mov     edx, [ebp+username]
push    edx
call    strlen_to_eax   ; length -> eax
                        ;
add     esp, 4
cmp     eax, 2
jbe     short loc_40BC0A
mov     eax, [ebp+username]
movsx   ecx, byte ptr [eax]
imul    ecx, 0Ah
mov     edx, [ebp+username]
movsx   eax, byte ptr [edx+1]
imul    eax, 64h
add     eax, [ebp+var_4]
add     eax, ecx
mov     [ebp+var_4], eax

loc_40BC0A:
mov     ecx, [ebp+var_4]
push    ecx
push    offset aGrnX    ; "gRn-%X"
lea     edx, [ebp+var_110]
push    edx
call    snprintf
add     esp, 0Ch
lea     eax, [ebp+var_110]
push    eax
call    hash_function   ; eax = hash
add     esp, 4
push    eax
call    all_caps        ; eax = &correct_key
                        ; ecx=0x20
add     esp, 4
push    eax
mov     ecx, [ebp+arg_4] ; ecx = password
push    ecx
call    sub_403120
add     esp, 8
neg     eax
sbb     eax, eax
add     eax, 1
mov     ecx, [ebp+var_C]
xor     ecx, ebp
; call    anti_debug
mov     esp, ebp
pop     ebp
retn
