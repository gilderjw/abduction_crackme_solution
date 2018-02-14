sub_40322F proc near

var_18= dword ptr -18h
var_10= dword ptr -10h
var_C= byte ptr -0Ch
DestStr= word ptr -8
MultiByteStr= byte ptr -4
var_3= byte ptr -3
var_2= byte ptr -2
arg_0= dword ptr  8
arg_4= dword ptr  0Ch

mov     edi, edi
push    ebp
mov     ebp, esp
sub     esp, 18h
push    ebx
push    [ebp+arg_4]
lea     ecx, [ebp+var_18]
call    sub_4031A8
mov     ebx, [ebp+arg_0]
cmp     ebx, 100h
jnb     short loc_4032A2
mov     ecx, [ebp+var_18]
cmp     dword ptr [ecx+0ACh], 1
jle     short loc_40326E
lea     eax, [ebp+var_18]
push    eax
push    2
push    ebx
call    sub_4066AC
mov     ecx, [ebp+var_18]
add     esp, 0Ch
jmp     short loc_40327B

loc_40326E:
mov     eax, [ecx+0C8h]
movzx   eax, word ptr [eax+ebx*2]
and     eax, 2

loc_40327B:
test    eax, eax
jz      short loc_40328E
mov     eax, [ecx+0D0h]
movzx   eax, byte ptr [eax+ebx]
jmp     loc_403335

loc_40328E:
cmp     [ebp+var_C], 0
jz      short loc_40329B
mov     eax, [ebp+var_10]
and     dword ptr [eax+70h], 0FFFFFFFDh

loc_40329B:
mov     eax, ebx
jmp     loc_403342

loc_4032A2:
mov     eax, [ebp+var_18]
cmp     dword ptr [eax+0ACh], 1
jle     short loc_4032DF
mov     [ebp+arg_0], ebx
sar     [ebp+arg_0], 8
lea     eax, [ebp+var_18]
push    eax
mov     eax, [ebp+arg_0]
and     eax, 0FFh
push    eax
call    sub_406661
pop     ecx
pop     ecx
test    eax, eax
jz      short loc_4032DF
mov     al, byte ptr [ebp+arg_0]
push    2
mov     [ebp+MultiByteStr], al
mov     [ebp+var_3], bl
mov     [ebp+var_2], 0
pop     ecx
jmp     short loc_4032F4

loc_4032DF:
call    sub_404899
mov     dword ptr [eax], 2Ah
xor     ecx, ecx
mov     [ebp+MultiByteStr], bl
mov     [ebp+var_3], 0
inc     ecx

loc_4032F4:
mov     eax, [ebp+var_18]
push    1               ; int
push    dword ptr [eax+4] ; CodePage
lea     edx, [ebp+DestStr]
push    3               ; cchDest
push    edx             ; lpDestStr
push    ecx             ; cbMultiByte
lea     ecx, [ebp+MultiByteStr]
push    ecx             ; lpMultiByteStr
push    200h            ; dwMapFlags
push    dword ptr [eax+14h] ; Locale
lea     eax, [ebp+var_18]
push    eax             ; int
call    sub_40661C
add     esp, 24h
test    eax, eax
jz      loc_40328E
cmp     eax, 1
movzx   eax, byte ptr [ebp+DestStr]
jz      short loc_403335
movzx   ecx, byte ptr [ebp+DestStr+1]
shl     eax, 8
or      eax, ecx

loc_403335:
cmp     [ebp+var_C], 0
jz      short loc_403342
mov     ecx, [ebp+var_10]
and     dword ptr [ecx+70h], 0FFFFFFFDh

loc_403342:
pop     ebx
leave
retn
;; ------- sub_40322F endp
