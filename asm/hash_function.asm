hash_function proc near

weird_thing= byte ptr -78h
var_20= byte ptr -20h
var_8= dword ptr -8
var_4= dword ptr -4
string_to_hash= dword ptr  8

push    ebp
mov     ebp, esp
sub     esp, 78h
mov     eax, dword_411004
xor     eax, ebp
mov     [ebp+var_8], eax
mov     eax, [ebp+string_to_hash]
push    eax
call    strlen_to_eax   ; length -> eax
                        ;
add     esp, 4
mov     [ebp+var_4], eax
lea     ecx, [ebp+weird_thing]
call    sub_40BFA0      ; set to weird stuff
mov     ecx, [ebp+var_4] ; length
push    ecx
mov     edx, [ebp+string_to_hash]
push    edx
lea     ecx, [ebp+weird_thing]
call    sub_40CFE0
lea     ecx, [ebp+weird_thing]
call    sub_40D0E0      ; memset & set ecx
lea     eax, [ebp+var_20]
push    eax
call    bin_to_ascii_hex
add     esp, 4
mov     ecx, [ebp+var_8]
xor     ecx, ebp
; call    anti_debug
mov     esp, ebp
pop     ebp
retn
;; ----------------- hash_function endp
