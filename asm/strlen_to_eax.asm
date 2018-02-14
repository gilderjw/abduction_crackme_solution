;; ------------- interesting_serial_stuff endp --------------- ;;


strlen_to_eax proc near

arg_0= dword ptr  4

mov     ecx, [esp+arg_0]
test    ecx, 3
jz      short loc_402F50

loc_402F2C:
mov     al, [ecx]
add     ecx, 1
test    al, al
jz      short loc_402F83
test    ecx, 3
jnz     short loc_402F2C
add     eax, 0
lea     esp, [esp+0]
lea     esp, [esp+0]

loc_402F50:
mov     eax, [ecx]
mov     edx, 7EFEFEFFh
add     edx, eax
xor     eax, 0FFFFFFFFh
xor     eax, edx
add     ecx, 4
test    eax, 81010100h
jz      short loc_402F50
mov     eax, [ecx-4]
test    al, al
jz      short loc_402FA1
test    ah, ah
jz      short loc_402F97
test    eax, 0FF0000h
jz      short loc_402F8D
test    eax, 0FF000000h
jz      short loc_402F83
jmp     short loc_402F50

loc_402F83:
lea     eax, [ecx-1]
mov     ecx, [esp+arg_0]
sub     eax, ecx
retn

loc_402F8D:
lea     eax, [ecx-2]
mov     ecx, [esp+arg_0]
sub     eax, ecx
retn

loc_402F97:
lea     eax, [ecx-3]
mov     ecx, [esp+arg_0]
sub     eax, ecx
retn

loc_402FA1:
lea     eax, [ecx-4]
mov     ecx, [esp+arg_0]
sub     eax, ecx
retn

;; --------------  strlen_to_eax endp  --------------------- ;;
