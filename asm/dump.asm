var_4 = 4
var_8 = 8
var_C = C


hash_function:
push    ebp
mov     ebp, esp
sub     esp, 0x78
mov     eax, dword_411004
xor     eax, ebp
mov     [ebp+var_8], eax
mov     eax, [ebp+arg_0]
push    eax             ; 0xcar *
call    _strlen
add     esp, 4
mov     [ebp+var_4], eax
lea     ecx, [ebp+var_78]
call    set_IV
mov     ecx, [ebp+var_4]
push    ecx             ; int
mov     edx, [ebp+arg_0]
push    edx             ; void *
lea     ecx, [ebp+var_78]
call    sub_40CFE0
lea     ecx, [ebp+var_78]
call    sub_40D0E0
lea     eax, [ebp+var_20]
push    eax
call    sub_40BFF0
add     esp, 4
mov     ecx, [ebp+var_8]
xor     ecx, ebp
call    sub_4029D8
mov     esp, ebp
pop     ebp
retn

_strlen:
mov     ecx, [esp+arg_0]
test    ecx, 3
jz      short main_loop_0

loc_402F2C:
mov     al, [ecx]
add     ecx, 1
test    al, al
jz      short loc_402F83
test    ecx, 3
jnz     short str_misaligned
add     eax, 0
lea     esp, [esp+0]
lea     esp, [esp+0]

loc_402F50:
mov     eax, [ecx]
mov     edx, 0x7EFEFEFF
add     edx, eax
xor     eax, 0x0FFFFFFFF
xor     eax, edx
add     ecx, 4
test    eax, 0x81010100
jz      short main_loop_0
mov     eax, [ecx-4]
test    al, al
jz      short loc_402FA1
test    0xa, 0xa
jz      short loc_402F97
test    eax, 0x0FF0000
jz      short loc_402F8D
test    eax, 0x0FF000000
jz      short loc_402F83
jmp     short main_loop_0

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

set_IV:
push    ebp
mov     ebp, esp
push    ecx
mov     [ebp+var_4], ecx
push    8               ; size_t
push    0               ; int
mov     eax, [ebp+var_4]
add     eax, 0x10
push    eax             ; void *
call    _memset
add     esp, 0x0C
mov     ecx, [ebp+var_4]
mov     dword [ecx], 0x21427531
mov     edx, [ebp+var_4]
mov     dword  [edx+4], 75135135
mov     eax, [ebp+var_4]
mov     dword  [eax+8], 0x3158AC31
mov     ecx, [ebp+var_4]
mov     dword  [ecx+0x0C], 0x1A1B2A6
mov     esp, ebp
pop     ebp
retn

__strdup:
mov     edi, edi
push    ebp
mov     ebp, esp
push    ebx
xor     ebx, ebx
cmp     [ebp+Src], ebx
jnz     short loc_40B4B5
xor     eax, eax
jmp     short loc_40B4F6

loc_40B4B5:
push    esi
push    edi
push    [ebp+Src]       ; 0xcar *
call    _strlen
mov     esi, eax
inc     esi
push    esi             ; size_t
call    _malloc
mov     edi, eax
pop     ecx
pop     ecx
cmp     edi, ebx
jz      short loc_40B4F2
push    [ebp+Src]       ; Src
push    esi             ; SizeInBytes
push    edi             ; Dst
call    _strcpy_s
add     esp, 0x0C
test    eax, eax
jz      short loc_40B4EE
push    ebx
push    ebx
push    ebx
push    ebx
push    ebx
call    __invoke_watson
add     esp, 0x14

loc_40B4EE:
mov     eax, edi
jmp     short loc_40B4F4

loc_40B4F2:
xor     eax, eax

loc_40B4F4:
pop     edi
pop     esi

loc_40B4F6:
pop     ebx
pop     ebp
retn

sub_40CFE0:
push    ebp
mov     ebp, esp
sub     esp, 0x10
mov     [ebp+var_10], ecx
mov     eax, [ebp+var_10]
mov     ecx, [eax+0x10]
shr     ecx, 3
and     ecx, 0x3F
mov     [ebp+var_8], ecx
mov     edx, [ebp+var_10]
mov     eax, [edx+0x10]
mov     ecx, [ebp+arg_4]
lea     edx, [eax+ecx*8]
mov     eax, [ebp+var_10]
mov     [eax+0x10], edx
mov     ecx, [ebp+arg_4]
shl     ecx, 3
mov     edx, [ebp+var_10]
cmp     [edx+0x10], ecx
jnb     short loc_40D027
mov     eax, [ebp+var_10]
mov     ecx, [eax+0x14]
add     ecx, 1
mov     edx, [ebp+var_10]
mov     [edx+0x14], ecx

loc_40D027:
mov     eax, [ebp+arg_4]
shr     eax, 0x1D
mov     ecx, [ebp+var_10]
add     eax, [ecx+0x14]
mov     edx, [ebp+var_10]
mov     [edx+0x14], eax
mov     eax, 0x40
sub     eax, [ebp+var_8]
mov     [ebp+var_C], eax
mov     ecx, [ebp+arg_4]
cmp     ecx, [ebp+var_C]
jb      short loc_40D0AC
mov     edx, [ebp+var_C]
push    edx             ; size_t
mov     eax, [ebp+arg_0]
push    eax             ; void *
mov     ecx, [ebp+var_8]
mov     edx, [ebp+var_10]
lea     eax, [edx+ecx+0x18]
push    eax             ; void *
call    _memcpy
add     esp, 0x0C
mov     ecx, [ebp+var_10]
add     ecx, 0x18
push    ecx
mov     ecx, [ebp+var_10]
call    sub_40C090
mov     edx, [ebp+var_C]
mov     [ebp+var_4], edx
jmp     short loc_40D087

loc_40D07E:
mov     eax, [ebp+var_4]
add     eax, 0x40
mov     [ebp+var_4], eax

loc_40D087:
mov     ecx, [ebp+var_4]
add     ecx, 0x3F
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
push    eax             ; size_t
mov     ecx, [ebp+arg_0]
add     ecx, [ebp+var_4]
push    ecx             ; void *
mov     edx, [ebp+var_8]
mov     eax, [ebp+var_10]
lea     ecx, [eax+edx+0x18]
push    ecx             ; void *
call    _memcpy
add     esp, 0x0C
mov     esp, ebp
pop     ebp
retn    8

sub_401000:
push    ebp
mov     ebp, esp
sub     esp, 8
mov     [ebp+var_8], ecx
mov     eax, [ebp+arg_C]
not     eax
or      eax, [ebp+arg_4]
xor     eax, [ebp+arg_8]
add     eax, [ebp+arg_10]
add     eax, [ebp+arg_18]
mov     ecx, [ebp+arg_0]
add     eax, [ecx]
mov     edx, [ebp+arg_0]
mov     [edx], eax
mov     eax, [ebp+arg_0]
mov     ecx, [eax]
mov     [ebp+var_4], ecx
mov     ecx, 0x20
sub     ecx, [ebp+arg_14]
mov     edx, [ebp+var_4]
shr     edx, cl
mov     eax, [ebp+var_4]
mov     ecx, [ebp+arg_14]
shl     eax, cl
or      eax, edx
mov     ecx, [ebp+arg_0]
mov     [ecx], eax
mov     edx, [ebp+arg_0]
mov     eax, [edx]
add     eax, [ebp+arg_4]
mov     ecx, [ebp+arg_0]
mov     [ecx], eax
mov     esp, ebp
pop     ebp
retn    0x1C

sub_40BFF0:
push    ebp
mov     ebp, esp
sub     esp, 0x118
mov     eax, dword_411004
xor     eax, ebp
mov     [ebp+var_4], eax
push    0x100            ; size_t
push    0               ; int
lea     eax, [ebp+var_118]
push    eax             ; void *
call    _memset
add     esp, 0x0C
push    0x0A             ; size_t
push    0               ; int
lea     ecx, [ebp+var_10]
push    ecx             ; void *
call    _memset
add     esp, 0x0C
mov     [ebp+var_14], 0
jmp     short loc_40C03B

loc_40C032:
mov     edx, [ebp+var_14]
add     edx, 1
mov     [ebp+var_14], edx

loc_40C03B:
cmp     [ebp+var_14], 0x10
jge     short loc_40C073
mov     eax, [ebp+arg_0]
add     eax, [ebp+var_14]
movzx   ecx, byte  [eax]
push    ecx
push    a02x     ; "%02x"
lea     edx, [ebp+var_10]
push    edx             ; 0xcar *
call    _sprintf
add     esp, 0x0C
push    0x0A             ; size_t
lea     eax, [ebp+var_10]
push    eax             ; 0xcar *
lea     ecx, [ebp+var_118]
push    ecx             ; 0xcar *
call    _strncat
add     esp, 0x0C
jmp     short loc_40C032

loc_40C073:
lea     edx, [ebp+var_118]
push    edx             ; 0xcar *
call    __strdup
add     esp, 4
mov     ecx, [ebp+var_4]
xor     ecx, ebp
call    sub_4029D8
mov     esp, ebp
pop     ebp
retn

sub_40C090:
push    ebp
mov     ebp, esp
sub     esp, 0x54
mov     [ebp+var_54], ecx
mov     eax, [ebp+var_54]
mov     ecx, [eax]
mov     [ebp+var_44], ecx
mov     edx, [ebp+var_54]
mov     eax, [edx+4]
mov     [ebp+var_48], eax
mov     ecx, [ebp+var_54]
mov     edx, [ecx+8]
mov     [ebp+var_50], edx
mov     eax, [ebp+var_54]
mov     ecx, [eax+0x0C]
mov     [ebp+var_4C], ecx
push    0x40
mov     edx, [ebp+arg_0]
push    edx
lea     eax, [ebp+var_40]
push    eax
mov     ecx, [ebp+var_54]
call    sub_40BE70
mov     ecx, [ebp+var_48]
not     ecx
and     ecx, [ebp+var_4C]
mov     edx, [ebp+var_48]
and     edx, [ebp+var_50]
or      edx, ecx
add     edx, [ebp+var_40]
mov     eax, [ebp+var_44]
lea     ecx, [eax+edx-0x28955B88]
mov     [ebp+var_44], ecx
mov     ecx, 0x20
sub     ecx, 7
mov     edx, [ebp+var_44]
shr     edx, cl
mov     eax, [ebp+var_44]
shl     eax, 7
or      eax, edx
mov     [ebp+var_44], eax
mov     ecx, [ebp+var_44]
add     ecx, [ebp+var_48]
mov     [ebp+var_44], ecx
mov     edx, [ebp+var_44]
not     edx
and     edx, [ebp+var_50]
mov     eax, [ebp+var_44]
and     eax, [ebp+var_48]
or      eax, edx
add     eax, [ebp+var_3C]
mov     ecx, [ebp+var_4C]
lea     edx, [ecx+eax-0x173848AA]
mov     [ebp+var_4C], edx
mov     ecx, 0x20
sub     ecx, 0x0C
mov     eax, [ebp+var_4C]
shr     eax, cl
mov     ecx, [ebp+var_4C]
shl     ecx, 0x0C
or      ecx, eax
mov     [ebp+var_4C], ecx
mov     edx, [ebp+var_4C]
add     edx, [ebp+var_44]
mov     [ebp+var_4C], edx
mov     eax, [ebp+var_4C]
not     eax
and     eax, [ebp+var_48]
mov     ecx, [ebp+var_4C]
and     ecx, [ebp+var_44]
or      ecx, eax
add     ecx, [ebp+var_38]
mov     edx, [ebp+var_50]
lea     eax, [edx+ecx+0x242070DB]
mov     [ebp+var_50], eax
mov     ecx, 0x20
sub     ecx, 0x11
mov     edx, [ebp+var_50]
shr     edx, cl
mov     eax, [ebp+var_50]
shl     eax, 0x11
or      eax, edx
mov     [ebp+var_50], eax
mov     ecx, [ebp+var_50]
add     ecx, [ebp+var_4C]
mov     [ebp+var_50], ecx
mov     edx, [ebp+var_50]
not     edx
and     edx, [ebp+var_44]
mov     eax, [ebp+var_50]
and     eax, [ebp+var_4C]
or      eax, edx
add     eax, [ebp+var_34]
mov     ecx, [ebp+var_48]
lea     edx, [ecx+eax-0x3E423112]
mov     [ebp+var_48], edx
mov     ecx, 0x20
sub     ecx, 0x16
mov     eax, [ebp+var_48]
shr     eax, cl
mov     ecx, [ebp+var_48]
shl     ecx, 0x16
or      ecx, eax
mov     [ebp+var_48], ecx
mov     edx, [ebp+var_48]
add     edx, [ebp+var_50]
mov     [ebp+var_48], edx
mov     eax, [ebp+var_48]
not     eax
and     eax, [ebp+var_4C]
mov     ecx, [ebp+var_48]
and     ecx, [ebp+var_50]
or      ecx, eax
add     ecx, [ebp+var_30]
mov     edx, [ebp+var_44]
lea     eax, [edx+ecx-0x0A83F051]
mov     [ebp+var_44], eax
mov     ecx, 0x20
sub     ecx, 7
mov     edx, [ebp+var_44]
shr     edx, cl
mov     eax, [ebp+var_44]
shl     eax, 7
or      eax, edx
mov     [ebp+var_44], eax
mov     ecx, [ebp+var_44]
add     ecx, [ebp+var_48]
mov     [ebp+var_44], ecx
mov     edx, [ebp+var_44]
not     edx
and     edx, [ebp+var_50]
mov     eax, [ebp+var_44]
and     eax, [ebp+var_48]
or      eax, edx
add     eax, [ebp+var_2C]
mov     ecx, [ebp+var_4C]
lea     edx, [ecx+eax+0x4787C62A]
mov     [ebp+var_4C], edx
mov     ecx, 0x20
sub     ecx, 0x0C
mov     eax, [ebp+var_4C]
shr     eax, cl
mov     ecx, [ebp+var_4C]
shl     ecx, 0x0C
or      ecx, eax
mov     [ebp+var_4C], ecx
mov     edx, [ebp+var_4C]
add     edx, [ebp+var_44]
mov     [ebp+var_4C], edx
mov     eax, [ebp+var_4C]
not     eax
and     eax, [ebp+var_48]
mov     ecx, [ebp+var_4C]
and     ecx, [ebp+var_44]
or      ecx, eax
add     ecx, [ebp+var_28]
mov     edx, [ebp+var_50]
lea     eax, [edx+ecx-0x57CFB9ED]
mov     [ebp+var_50], eax
mov     ecx, 0x20
sub     ecx, 0x11
mov     edx, [ebp+var_50]
shr     edx, cl
mov     eax, [ebp+var_50]
shl     eax, 0x11
or      eax, edx
mov     [ebp+var_50], eax
mov     ecx, [ebp+var_50]
add     ecx, [ebp+var_4C]
mov     [ebp+var_50], ecx
mov     edx, [ebp+var_50]
not     edx
and     edx, [ebp+var_44]
mov     eax, [ebp+var_50]
and     eax, [ebp+var_4C]
or      eax, edx
add     eax, [ebp+var_24]
mov     ecx, [ebp+var_48]
lea     edx, [ecx+eax-0x2B96AFF]
mov     [ebp+var_48], edx
mov     ecx, 0x20
sub     ecx, 0x16
mov     eax, [ebp+var_48]
shr     eax, cl
mov     ecx, [ebp+var_48]
shl     ecx, 0x16
or      ecx, eax
mov     [ebp+var_48], ecx
mov     edx, [ebp+var_48]
add     edx, [ebp+var_50]
mov     [ebp+var_48], edx
mov     eax, [ebp+var_48]
not     eax
and     eax, [ebp+var_4C]
mov     ecx, [ebp+var_48]
and     ecx, [ebp+var_50]
or      ecx, eax
add     ecx, [ebp+var_20]
mov     edx, [ebp+var_44]
lea     eax, [edx+ecx+0x698098D8]
mov     [ebp+var_44], eax
mov     ecx, 0x20
sub     ecx, 7
mov     edx, [ebp+var_44]
shr     edx, cl
mov     eax, [ebp+var_44]
shl     eax, 7
or      eax, edx
mov     [ebp+var_44], eax
mov     ecx, [ebp+var_44]
add     ecx, [ebp+var_48]
mov     [ebp+var_44], ecx
mov     edx, [ebp+var_44]
not     edx
and     edx, [ebp+var_50]
mov     eax, [ebp+var_44]
and     eax, [ebp+var_48]
or      eax, edx
add     eax, [ebp+var_1C]
mov     ecx, [ebp+var_4C]
lea     edx, [ecx+eax-0x74BB0851]
mov     [ebp+var_4C], edx
mov     ecx, 0x20
sub     ecx, 0x0C
mov     eax, [ebp+var_4C]
shr     eax, cl
mov     ecx, [ebp+var_4C]
shl     ecx, 0x0C
or      ecx, eax
mov     [ebp+var_4C], ecx
mov     edx, [ebp+var_4C]
add     edx, [ebp+var_44]
mov     [ebp+var_4C], edx
mov     eax, [ebp+var_4C]
not     eax
and     eax, [ebp+var_48]
mov     ecx, [ebp+var_4C]
and     ecx, [ebp+var_44]
or      ecx, eax
add     ecx, [ebp+var_18]
mov     edx, [ebp+var_50]
lea     eax, [edx+ecx-0x0A44F]
mov     [ebp+var_50], eax
mov     ecx, 0x20
sub     ecx, 0x11
mov     edx, [ebp+var_50]
shr     edx, cl
mov     eax, [ebp+var_50]
shl     eax, 0x11
or      eax, edx
mov     [ebp+var_50], eax
mov     ecx, [ebp+var_50]
add     ecx, [ebp+var_4C]
mov     [ebp+var_50], ecx
mov     edx, [ebp+var_50]
not     edx
and     edx, [ebp+var_44]
mov     eax, [ebp+var_50]
and     eax, [ebp+var_4C]
or      eax, edx
add     eax, [ebp+var_14]
mov     ecx, [ebp+var_48]
lea     edx, [ecx+eax-0x76A32842]
mov     [ebp+var_48], edx
mov     ecx, 0x20
sub     ecx, 0x16
mov     eax, [ebp+var_48]
shr     eax, cl
mov     ecx, [ebp+var_48]
shl     ecx, 0x16
or      ecx, eax
mov     [ebp+var_48], ecx
mov     edx, [ebp+var_48]
add     edx, [ebp+var_50]
mov     [ebp+var_48], edx
mov     eax, [ebp+var_48]
not     eax
and     eax, [ebp+var_4C]
mov     ecx, [ebp+var_48]
and     ecx, [ebp+var_50]
or      ecx, eax
add     ecx, [ebp+var_10]
mov     edx, [ebp+var_44]
lea     eax, [edx+ecx+0x6B901122]
mov     [ebp+var_44], eax
mov     ecx, 0x20
sub     ecx, 7
mov     edx, [ebp+var_44]
shr     edx, cl
mov     eax, [ebp+var_44]
shl     eax, 7
or      eax, edx
mov     [ebp+var_44], eax
mov     ecx, [ebp+var_44]
add     ecx, [ebp+var_48]
mov     [ebp+var_44], ecx
mov     edx, [ebp+var_44]
not     edx
and     edx, [ebp+var_50]
mov     eax, [ebp+var_44]
and     eax, [ebp+var_48]
or      eax, edx
add     eax, [ebp+var_C]
mov     ecx, [ebp+var_4C]
lea     edx, [ecx+eax-0x2678E6D]
mov     [ebp+var_4C], edx
mov     ecx, 0x20
sub     ecx, 0x0C
mov     eax, [ebp+var_4C]
shr     eax, cl
mov     ecx, [ebp+var_4C]
shl     ecx, 0x0C
or      ecx, eax
mov     [ebp+var_4C], ecx
mov     edx, [ebp+var_4C]
add     edx, [ebp+var_44]
mov     [ebp+var_4C], edx
mov     eax, [ebp+var_4C]
not     eax
and     eax, [ebp+var_48]
mov     ecx, [ebp+var_4C]
and     ecx, [ebp+var_44]
or      ecx, eax
add     ecx, [ebp+var_8]
mov     edx, [ebp+var_50]
lea     eax, [edx+ecx-0x5986BC72]
mov     [ebp+var_50], eax
mov     ecx, 0x20
sub     ecx, 0x11
mov     edx, [ebp+var_50]
shr     edx, cl
mov     eax, [ebp+var_50]
shl     eax, 0x11
or      eax, edx
mov     [ebp+var_50], eax
mov     ecx, [ebp+var_50]
add     ecx, [ebp+var_4C]
mov     [ebp+var_50], ecx
mov     edx, [ebp+var_50]
not     edx
and     edx, [ebp+var_44]
mov     eax, [ebp+var_50]
and     eax, [ebp+var_4C]
or      eax, edx
add     eax, [ebp+var_4]
mov     ecx, [ebp+var_48]
lea     edx, [ecx+eax+0x49B40821]
mov     [ebp+var_48], edx
mov     ecx, 0x20
sub     ecx, 0x16
mov     eax, [ebp+var_48]
shr     eax, cl
mov     ecx, [ebp+var_48]
shl     ecx, 0x16
or      ecx, eax
mov     [ebp+var_48], ecx
mov     edx, [ebp+var_48]
add     edx, [ebp+var_50]
mov     [ebp+var_48], edx
mov     eax, [ebp+var_4C]
not     eax
and     eax, [ebp+var_50]
mov     ecx, [ebp+var_48]
and     ecx, [ebp+var_4C]
or      ecx, eax
add     ecx, [ebp+var_3C]
mov     edx, [ebp+var_44]
lea     eax, [edx+ecx-0x9E1DA9E]
mov     [ebp+var_44], eax
mov     ecx, 0x20
sub     ecx, 5
mov     edx, [ebp+var_44]
shr     edx, cl
mov     eax, [ebp+var_44]
shl     eax, 5
or      eax, edx
mov     [ebp+var_44], eax
mov     ecx, [ebp+var_44]
add     ecx, [ebp+var_48]
mov     [ebp+var_44], ecx
mov     edx, [ebp+var_50]
not     edx
and     edx, [ebp+var_48]
mov     eax, [ebp+var_44]
and     eax, [ebp+var_50]
or      eax, edx
add     eax, [ebp+var_28]
mov     ecx, [ebp+var_4C]
lea     edx, [ecx+eax-0x3FBF4CC0]
mov     [ebp+var_4C], edx
mov     ecx, 0x20
sub     ecx, 9
mov     eax, [ebp+var_4C]
shr     eax, cl
mov     ecx, [ebp+var_4C]
shl     ecx, 9
or      ecx, eax
mov     [ebp+var_4C], ecx
mov     edx, [ebp+var_4C]
add     edx, [ebp+var_44]
mov     [ebp+var_4C], edx
mov     eax, [ebp+var_48]
not     eax
and     eax, [ebp+var_44]
mov     ecx, [ebp+var_4C]
and     ecx, [ebp+var_48]
or      ecx, eax
add     ecx, [ebp+var_14]
mov     edx, [ebp+var_50]
lea     eax, [edx+ecx+0x265E5A51]
mov     [ebp+var_50], eax
mov     ecx, 0x20
sub     ecx, 0x0E
mov     edx, [ebp+var_50]
shr     edx, cl
mov     eax, [ebp+var_50]
shl     eax, 0x0E
or      eax, edx
mov     [ebp+var_50], eax
mov     ecx, [ebp+var_50]
add     ecx, [ebp+var_4C]
mov     [ebp+var_50], ecx
mov     edx, [ebp+var_44]
not     edx
and     edx, [ebp+var_4C]
mov     eax, [ebp+var_50]
and     eax, [ebp+var_44]
or      eax, edx
add     eax, [ebp+var_40]
mov     ecx, [ebp+var_48]
lea     edx, [ecx+eax-0x16493856]
mov     [ebp+var_48], edx
mov     ecx, 0x20
sub     ecx, 0x14
mov     eax, [ebp+var_48]
shr     eax, cl
mov     ecx, [ebp+var_48]
shl     ecx, 0x14
or      ecx, eax
mov     [ebp+var_48], ecx
mov     edx, [ebp+var_48]
add     edx, [ebp+var_50]
mov     [ebp+var_48], edx
mov     eax, [ebp+var_4C]
not     eax
and     eax, [ebp+var_50]
mov     ecx, [ebp+var_48]
and     ecx, [ebp+var_4C]
or      ecx, eax
add     ecx, [ebp+var_2C]
mov     edx, [ebp+var_44]
lea     eax, [edx+ecx-0x29D0EFA3]
mov     [ebp+var_44], eax
mov     ecx, 0x20
sub     ecx, 5
mov     edx, [ebp+var_44]
shr     edx, cl
mov     eax, [ebp+var_44]
shl     eax, 5
or      eax, edx
mov     [ebp+var_44], eax
mov     ecx, [ebp+var_44]
add     ecx, [ebp+var_48]
mov     [ebp+var_44], ecx
mov     edx, [ebp+var_50]
not     edx
and     edx, [ebp+var_48]
mov     eax, [ebp+var_44]
and     eax, [ebp+var_50]
or      eax, edx
add     eax, [ebp+var_18]
mov     ecx, [ebp+var_4C]
lea     edx, [ecx+eax+0x2441453]
mov     [ebp+var_4C], edx
mov     ecx, 0x20
sub     ecx, 9
mov     eax, [ebp+var_4C]
shr     eax, cl
mov     ecx, [ebp+var_4C]
shl     ecx, 9
or      ecx, eax
mov     [ebp+var_4C], ecx
mov     edx, [ebp+var_4C]
add     edx, [ebp+var_44]
mov     [ebp+var_4C], edx
mov     eax, [ebp+var_48]
not     eax
and     eax, [ebp+var_44]
mov     ecx, [ebp+var_4C]
and     ecx, [ebp+var_48]
or      ecx, eax
add     ecx, [ebp+var_4]
mov     edx, [ebp+var_50]
lea     eax, [edx+ecx-0x275E197F]
mov     [ebp+var_50], eax
mov     ecx, 0x20
sub     ecx, 0x0E
mov     edx, [ebp+var_50]
shr     edx, cl
mov     eax, [ebp+var_50]
shl     eax, 0x0E
or      eax, edx
mov     [ebp+var_50], eax
mov     ecx, [ebp+var_50]
add     ecx, [ebp+var_4C]
mov     [ebp+var_50], ecx
mov     edx, [ebp+var_44]
not     edx
and     edx, [ebp+var_4C]
mov     eax, [ebp+var_50]
and     eax, [ebp+var_44]
or      eax, edx
add     eax, [ebp+var_30]
mov     ecx, [ebp+var_48]
lea     edx, [ecx+eax-0x182C0438]
mov     [ebp+var_48], edx
mov     ecx, 0x20
sub     ecx, 0x14
mov     eax, [ebp+var_48]
shr     eax, cl
mov     ecx, [ebp+var_48]
shl     ecx, 0x14
or      ecx, eax
mov     [ebp+var_48], ecx
mov     edx, [ebp+var_48]
add     edx, [ebp+var_50]
mov     [ebp+var_48], edx
mov     eax, [ebp+var_4C]
not     eax
and     eax, [ebp+var_50]
mov     ecx, [ebp+var_48]
and     ecx, [ebp+var_4C]
or      ecx, eax
add     ecx, [ebp+var_1C]
mov     edx, [ebp+var_44]
lea     eax, [edx+ecx+0x21E1CDE6]
mov     [ebp+var_44], eax
mov     ecx, 0x20
sub     ecx, 5
mov     edx, [ebp+var_44]
shr     edx, cl
mov     eax, [ebp+var_44]
shl     eax, 5
or      eax, edx
mov     [ebp+var_44], eax
mov     ecx, [ebp+var_44]
add     ecx, [ebp+var_48]
mov     [ebp+var_44], ecx
mov     edx, [ebp+var_50]
not     edx
and     edx, [ebp+var_48]
mov     eax, [ebp+var_44]
and     eax, [ebp+var_50]
or      eax, edx
add     eax, [ebp+var_8]
mov     ecx, [ebp+var_4C]
lea     edx, [ecx+eax-0x3CC8F82A]
mov     [ebp+var_4C], edx
mov     ecx, 0x20
sub     ecx, 9
mov     eax, [ebp+var_4C]
shr     eax, cl
mov     ecx, [ebp+var_4C]
shl     ecx, 9
or      ecx, eax
mov     [ebp+var_4C], ecx
mov     edx, [ebp+var_4C]
add     edx, [ebp+var_44]
mov     [ebp+var_4C], edx
mov     eax, [ebp+var_48]
not     eax
and     eax, [ebp+var_44]
mov     ecx, [ebp+var_4C]
and     ecx, [ebp+var_48]
or      ecx, eax
add     ecx, [ebp+var_34]
mov     edx, [ebp+var_50]
lea     eax, [edx+ecx-0x0B2AF279]
mov     [ebp+var_50], eax
mov     ecx, 0x20
sub     ecx, 0x0E
mov     edx, [ebp+var_50]
shr     edx, cl
mov     eax, [ebp+var_50]
shl     eax, 0x0E
or      eax, edx
mov     [ebp+var_50], eax
mov     ecx, [ebp+var_50]
add     ecx, [ebp+var_4C]
mov     [ebp+var_50], ecx
mov     edx, [ebp+var_44]
not     edx
and     edx, [ebp+var_4C]
mov     eax, [ebp+var_50]
and     eax, [ebp+var_44]
or      eax, edx
add     eax, [ebp+var_20]
mov     ecx, [ebp+var_48]
lea     edx, [ecx+eax+0x455A14ED]
mov     [ebp+var_48], edx
mov     ecx, 0x20
sub     ecx, 0x14
mov     eax, [ebp+var_48]
shr     eax, cl
mov     ecx, [ebp+var_48]
shl     ecx, 0x14
or      ecx, eax
mov     [ebp+var_48], ecx
mov     edx, [ebp+var_48]
add     edx, [ebp+var_50]
mov     [ebp+var_48], edx
mov     eax, [ebp+var_4C]
not     eax
and     eax, [ebp+var_50]
mov     ecx, [ebp+var_48]
and     ecx, [ebp+var_4C]
or      ecx, eax
add     ecx, [ebp+var_C]
mov     edx, [ebp+var_44]
lea     eax, [edx+ecx-0x561C16FB]
mov     [ebp+var_44], eax
mov     ecx, 0x20
sub     ecx, 5
mov     edx, [ebp+var_44]
shr     edx, cl
mov     eax, [ebp+var_44]
shl     eax, 5
or      eax, edx
mov     [ebp+var_44], eax
mov     ecx, [ebp+var_44]
add     ecx, [ebp+var_48]
mov     [ebp+var_44], ecx
mov     edx, [ebp+var_50]
not     edx
and     edx, [ebp+var_48]
mov     eax, [ebp+var_44]
and     eax, [ebp+var_50]
or      eax, edx
add     eax, [ebp+var_38]
mov     ecx, [ebp+var_4C]
lea     edx, [ecx+eax-0x3105C08]
mov     [ebp+var_4C], edx
mov     ecx, 0x20
sub     ecx, 9
mov     eax, [ebp+var_4C]
shr     eax, cl
mov     ecx, [ebp+var_4C]
shl     ecx, 9
or      ecx, eax
mov     [ebp+var_4C], ecx
mov     edx, [ebp+var_4C]
add     edx, [ebp+var_44]
mov     [ebp+var_4C], edx
mov     eax, [ebp+var_48]
not     eax
and     eax, [ebp+var_44]
mov     ecx, [ebp+var_4C]
and     ecx, [ebp+var_48]
or      ecx, eax
add     ecx, [ebp+var_24]
mov     edx, [ebp+var_50]
lea     eax, [edx+ecx+0x676F02D9]
mov     [ebp+var_50], eax
mov     ecx, 0x20
sub     ecx, 0x0E
mov     edx, [ebp+var_50]
shr     edx, cl
mov     eax, [ebp+var_50]
shl     eax, 0x0E
or      eax, edx
mov     [ebp+var_50], eax
mov     ecx, [ebp+var_50]
add     ecx, [ebp+var_4C]
mov     [ebp+var_50], ecx
mov     edx, [ebp+var_44]
not     edx
and     edx, [ebp+var_4C]
mov     eax, [ebp+var_50]
and     eax, [ebp+var_44]
or      eax, edx
add     eax, [ebp+var_10]
mov     ecx, [ebp+var_48]
lea     edx, [ecx+eax-0x72D5B376]
mov     [ebp+var_48], edx
mov     ecx, 0x20
sub     ecx, 0x14
mov     eax, [ebp+var_48]
shr     eax, cl
mov     ecx, [ebp+var_48]
shl     ecx, 0x14
or      ecx, eax
mov     [ebp+var_48], ecx
mov     edx, [ebp+var_48]
add     edx, [ebp+var_50]
mov     [ebp+var_48], edx
mov     eax, [ebp+var_48]
xor     eax, [ebp+var_50]
xor     eax, [ebp+var_4C]
add     eax, [ebp+var_2C]
mov     ecx, [ebp+var_44]
lea     edx, [ecx+eax-0x5C6BE]
mov     [ebp+var_44], edx
mov     ecx, 0x20
sub     ecx, 4
mov     eax, [ebp+var_44]
shr     eax, cl
mov     ecx, [ebp+var_44]
shl     ecx, 4
or      ecx, eax
mov     [ebp+var_44], ecx
mov     edx, [ebp+var_44]
add     edx, [ebp+var_48]
mov     [ebp+var_44], edx
mov     eax, [ebp+var_44]
xor     eax, [ebp+var_48]
xor     eax, [ebp+var_50]
add     eax, [ebp+var_20]
mov     ecx, [ebp+var_4C]
lea     edx, [ecx+eax-0x788E097F]
mov     [ebp+var_4C], edx
mov     ecx, 0x20
sub     ecx, 0x0B
mov     eax, [ebp+var_4C]
shr     eax, cl
mov     ecx, [ebp+var_4C]
shl     ecx, 0x0B
or      ecx, eax
mov     [ebp+var_4C], ecx
mov     edx, [ebp+var_4C]
add     edx, [ebp+var_44]
mov     [ebp+var_4C], edx
mov     eax, [ebp+var_4C]
xor     eax, [ebp+var_44]
xor     eax, [ebp+var_48]
add     eax, [ebp+var_14]
mov     ecx, [ebp+var_50]
lea     edx, [ecx+eax+0x6D9D6122]
mov     [ebp+var_50], edx
mov     ecx, 0x20
sub     ecx, 0x10
mov     eax, [ebp+var_50]
shr     eax, cl
mov     ecx, [ebp+var_50]
shl     ecx, 0x10
or      ecx, eax
mov     [ebp+var_50], ecx
mov     edx, [ebp+var_50]
add     edx, [ebp+var_4C]
mov     [ebp+var_50], edx
mov     eax, [ebp+var_50]
xor     eax, [ebp+var_4C]
xor     eax, [ebp+var_44]
add     eax, [ebp+var_8]
mov     ecx, [ebp+var_48]
lea     edx, [ecx+eax-0x21AC7F4]
mov     [ebp+var_48], edx
mov     ecx, 0x20
sub     ecx, 0x17
mov     eax, [ebp+var_48]
shr     eax, cl
mov     ecx, [ebp+var_48]
shl     ecx, 0x17
or      ecx, eax
mov     [ebp+var_48], ecx
mov     edx, [ebp+var_48]
add     edx, [ebp+var_50]
mov     [ebp+var_48], edx
mov     eax, [ebp+var_48]
xor     eax, [ebp+var_50]
xor     eax, [ebp+var_4C]
add     eax, [ebp+var_3C]
mov     ecx, [ebp+var_44]
lea     edx, [ecx+eax-0x5B4115BC]
mov     [ebp+var_44], edx
mov     ecx, 0x20
sub     ecx, 4
mov     eax, [ebp+var_44]
shr     eax, cl
mov     ecx, [ebp+var_44]
shl     ecx, 4
or      ecx, eax
mov     [ebp+var_44], ecx
mov     edx, [ebp+var_44]
add     edx, [ebp+var_48]
mov     [ebp+var_44], edx
mov     eax, [ebp+var_44]
xor     eax, [ebp+var_48]
xor     eax, [ebp+var_50]
add     eax, [ebp+var_30]
mov     ecx, [ebp+var_4C]
lea     edx, [ecx+eax+0x4BDECFA9]
mov     [ebp+var_4C], edx
mov     ecx, 0x20
sub     ecx, 0x0B
mov     eax, [ebp+var_4C]
shr     eax, cl
mov     ecx, [ebp+var_4C]
shl     ecx, 0x0B
or      ecx, eax
mov     [ebp+var_4C], ecx
mov     edx, [ebp+var_4C]
add     edx, [ebp+var_44]
mov     [ebp+var_4C], edx
mov     eax, [ebp+var_4C]
xor     eax, [ebp+var_44]
xor     eax, [ebp+var_48]
add     eax, [ebp+var_24]
mov     ecx, [ebp+var_50]
lea     edx, [ecx+eax-0x944B4A0]
mov     [ebp+var_50], edx
mov     ecx, 0x20
sub     ecx, 0x10
mov     eax, [ebp+var_50]
shr     eax, cl
mov     ecx, [ebp+var_50]
shl     ecx, 0x10
or      ecx, eax
mov     [ebp+var_50], ecx
mov     edx, [ebp+var_50]
add     edx, [ebp+var_4C]
mov     [ebp+var_50], edx
mov     eax, [ebp+var_50]
xor     eax, [ebp+var_4C]
xor     eax, [ebp+var_44]
add     eax, [ebp+var_18]
mov     ecx, [ebp+var_48]
lea     edx, [ecx+eax-0x41404390]
mov     [ebp+var_48], edx
mov     ecx, 0x20
sub     ecx, 0x17
mov     eax, [ebp+var_48]
shr     eax, cl
mov     ecx, [ebp+var_48]
shl     ecx, 0x17
or      ecx, eax
mov     [ebp+var_48], ecx
mov     edx, [ebp+var_48]
add     edx, [ebp+var_50]
mov     [ebp+var_48], edx
mov     eax, [ebp+var_48]
xor     eax, [ebp+var_50]
xor     eax, [ebp+var_4C]
add     eax, [ebp+var_C]
mov     ecx, [ebp+var_44]
lea     edx, [ecx+eax+0x289B7EC6]
mov     [ebp+var_44], edx
mov     ecx, 0x20
sub     ecx, 4
mov     eax, [ebp+var_44]
shr     eax, cl
mov     ecx, [ebp+var_44]
shl     ecx, 4
or      ecx, eax
mov     [ebp+var_44], ecx
mov     edx, [ebp+var_44]
add     edx, [ebp+var_48]
mov     [ebp+var_44], edx
mov     eax, [ebp+var_44]
xor     eax, [ebp+var_48]
xor     eax, [ebp+var_50]
add     eax, [ebp+var_40]
mov     ecx, [ebp+var_4C]
lea     edx, [ecx+eax-0x155ED806]
mov     [ebp+var_4C], edx
mov     ecx, 0x20
sub     ecx, 0x0B
mov     eax, [ebp+var_4C]
shr     eax, cl
mov     ecx, [ebp+var_4C]
shl     ecx, 0x0B
or      ecx, eax
mov     [ebp+var_4C], ecx
mov     edx, [ebp+var_4C]
add     edx, [ebp+var_44]
mov     [ebp+var_4C], edx
mov     eax, [ebp+var_4C]
xor     eax, [ebp+var_44]
xor     eax, [ebp+var_48]
add     eax, [ebp+var_34]
mov     ecx, [ebp+var_50]
lea     edx, [ecx+eax-0x2B10CF7B]
mov     [ebp+var_50], edx
mov     ecx, 0x20
sub     ecx, 0x10
mov     eax, [ebp+var_50]
shr     eax, cl
mov     ecx, [ebp+var_50]
shl     ecx, 0x10
or      ecx, eax
mov     [ebp+var_50], ecx
mov     edx, [ebp+var_50]
add     edx, [ebp+var_4C]
mov     [ebp+var_50], edx
mov     eax, [ebp+var_50]
xor     eax, [ebp+var_4C]
xor     eax, [ebp+var_44]
add     eax, [ebp+var_28]
mov     ecx, [ebp+var_48]
lea     edx, [ecx+eax+0x4881D05]
mov     [ebp+var_48], edx
mov     ecx, 0x20
sub     ecx, 0x17
mov     eax, [ebp+var_48]
shr     eax, cl
mov     ecx, [ebp+var_48]
shl     ecx, 0x17
or      ecx, eax
mov     [ebp+var_48], ecx
mov     edx, [ebp+var_48]
add     edx, [ebp+var_50]
mov     [ebp+var_48], edx
mov     eax, [ebp+var_48]
xor     eax, [ebp+var_50]
xor     eax, [ebp+var_4C]
add     eax, [ebp+var_1C]
mov     ecx, [ebp+var_44]
lea     edx, [ecx+eax-0x262B2FC7]
mov     [ebp+var_44], edx
mov     ecx, 0x20
sub     ecx, 4
mov     eax, [ebp+var_44]
shr     eax, cl
mov     ecx, [ebp+var_44]
shl     ecx, 4
or      ecx, eax
mov     [ebp+var_44], ecx
mov     edx, [ebp+var_44]
add     edx, [ebp+var_48]
mov     [ebp+var_44], edx
mov     eax, [ebp+var_44]
xor     eax, [ebp+var_48]
xor     eax, [ebp+var_50]
add     eax, [ebp+var_10]
mov     ecx, [ebp+var_4C]
lea     edx, [ecx+eax-0x1924661B]
mov     [ebp+var_4C], edx
mov     ecx, 0x20
sub     ecx, 0x0B
mov     eax, [ebp+var_4C]
shr     eax, cl
mov     ecx, [ebp+var_4C]
shl     ecx, 0x0B
or      ecx, eax
mov     [ebp+var_4C], ecx
mov     edx, [ebp+var_4C]
add     edx, [ebp+var_44]
mov     [ebp+var_4C], edx
mov     eax, [ebp+var_4C]
xor     eax, [ebp+var_44]
xor     eax, [ebp+var_48]
add     eax, [ebp+var_4]
mov     ecx, [ebp+var_50]
lea     edx, [ecx+eax+0x1FA27CF8]
mov     [ebp+var_50], edx
mov     ecx, 0x20
sub     ecx, 0x10
mov     eax, [ebp+var_50]
shr     eax, cl
mov     ecx, [ebp+var_50]
shl     ecx, 0x10
or      ecx, eax
mov     [ebp+var_50], ecx
mov     edx, [ebp+var_50]
add     edx, [ebp+var_4C]
mov     [ebp+var_50], edx
mov     eax, [ebp+var_50]
xor     eax, [ebp+var_4C]
xor     eax, [ebp+var_44]
add     eax, [ebp+var_38]
mov     ecx, [ebp+var_48]
lea     edx, [ecx+eax-0x3B53A99B]
mov     [ebp+var_48], edx
mov     ecx, 0x20
sub     ecx, 0x17
mov     eax, [ebp+var_48]
shr     eax, cl
mov     ecx, [ebp+var_48]
shl     ecx, 0x17
or      ecx, eax
mov     [ebp+var_48], ecx
mov     edx, [ebp+var_48]
add     edx, [ebp+var_50]
mov     [ebp+var_48], edx
mov     eax, [ebp+var_4C]
not     eax
or      eax, [ebp+var_48]
xor     eax, [ebp+var_50]
add     eax, [ebp+var_40]
mov     ecx, [ebp+var_44]
lea     edx, [ecx+eax-0x0BD6DDBC]
mov     [ebp+var_44], edx
mov     ecx, 0x20
sub     ecx, 6
mov     eax, [ebp+var_44]
shr     eax, cl
mov     ecx, [ebp+var_44]
shl     ecx, 6
or      ecx, eax
mov     [ebp+var_44], ecx
mov     edx, [ebp+var_44]
add     edx, [ebp+var_48]
mov     [ebp+var_44], edx
mov     eax, [ebp+var_50]
not     eax
or      eax, [ebp+var_44]
xor     eax, [ebp+var_48]
add     eax, [ebp+var_24]
mov     ecx, [ebp+var_4C]
lea     edx, [ecx+eax+0x432AFF97]
mov     [ebp+var_4C], edx
mov     ecx, 0x20
sub     ecx, 0x0A
mov     eax, [ebp+var_4C]
shr     eax, cl
mov     ecx, [ebp+var_4C]
shl     ecx, 0x0A
or      ecx, eax
mov     [ebp+var_4C], ecx
mov     edx, [ebp+var_4C]
add     edx, [ebp+var_44]
mov     [ebp+var_4C], edx
mov     eax, [ebp+var_48]
not     eax
or      eax, [ebp+var_4C]
xor     eax, [ebp+var_44]
add     eax, [ebp+var_8]
mov     ecx, [ebp+var_50]
lea     edx, [ecx+eax-0x546BDC59]
mov     [ebp+var_50], edx
mov     ecx, 0x20
sub     ecx, 0x0F
mov     eax, [ebp+var_50]
shr     eax, cl
mov     ecx, [ebp+var_50]
shl     ecx, 0x0F
or      ecx, eax
mov     [ebp+var_50], ecx
mov     edx, [ebp+var_50]
add     edx, [ebp+var_4C]
mov     [ebp+var_50], edx
mov     eax, [ebp+var_44]
not     eax
or      eax, [ebp+var_50]
xor     eax, [ebp+var_4C]
add     eax, [ebp+var_2C]
mov     ecx, [ebp+var_48]
lea     edx, [ecx+eax-0x36C5FC7]
mov     [ebp+var_48], edx
mov     ecx, 0x20
sub     ecx, 0x15
mov     eax, [ebp+var_48]
shr     eax, cl
mov     ecx, [ebp+var_48]
shl     ecx, 0x15
or      ecx, eax
mov     [ebp+var_48], ecx
mov     edx, [ebp+var_48]
add     edx, [ebp+var_50]
mov     [ebp+var_48], edx
mov     eax, [ebp+var_4C]
not     eax
or      eax, [ebp+var_48]
xor     eax, [ebp+var_50]
add     eax, [ebp+var_10]
mov     ecx, [ebp+var_44]
lea     edx, [ecx+eax+0x655B59C3]
mov     [ebp+var_44], edx
mov     ecx, 0x20
sub     ecx, 6
mov     eax, [ebp+var_44]
shr     eax, cl
mov     ecx, [ebp+var_44]
shl     ecx, 6
or      ecx, eax
mov     [ebp+var_44], ecx
mov     edx, [ebp+var_44]
add     edx, [ebp+var_48]
mov     [ebp+var_44], edx
mov     eax, [ebp+var_50]
not     eax
or      eax, [ebp+var_44]
xor     eax, [ebp+var_48]
add     eax, [ebp+var_34]
mov     ecx, [ebp+var_4C]
lea     edx, [ecx+eax-0x70F3336E]
mov     [ebp+var_4C], edx
mov     ecx, 0x20
sub     ecx, 0x0A
mov     eax, [ebp+var_4C]
shr     eax, cl
mov     ecx, [ebp+var_4C]
shl     ecx, 0x0A
or      ecx, eax
mov     [ebp+var_4C], ecx
mov     edx, [ebp+var_4C]
add     edx, [ebp+var_44]
mov     [ebp+var_4C], edx
mov     eax, [ebp+var_48]
not     eax
or      eax, [ebp+var_4C]
xor     eax, [ebp+var_44]
add     eax, [ebp+var_18]
mov     ecx, [ebp+var_50]
lea     edx, [ecx+eax-0x100B83]
mov     [ebp+var_50], edx
mov     ecx, 0x20
sub     ecx, 0x0F
mov     eax, [ebp+var_50]
shr     eax, cl
mov     ecx, [ebp+var_50]
shl     ecx, 0x0F
or      ecx, eax
mov     [ebp+var_50], ecx
mov     edx, [ebp+var_50]
add     edx, [ebp+var_4C]
mov     [ebp+var_50], edx
mov     eax, [ebp+var_44]
not     eax
or      eax, [ebp+var_50]
xor     eax, [ebp+var_4C]
add     eax, [ebp+var_3C]
mov     ecx, [ebp+var_48]
lea     edx, [ecx+eax-0x7A7BA22F]
mov     [ebp+var_48], edx
mov     ecx, 0x20
sub     ecx, 0x15
mov     eax, [ebp+var_48]
shr     eax, cl
mov     ecx, [ebp+var_48]
shl     ecx, 0x15
or      ecx, eax
mov     [ebp+var_48], ecx
mov     edx, [ebp+var_48]
add     edx, [ebp+var_50]
mov     [ebp+var_48], edx
push    0x6FA87E4F
push    6
mov     eax, [ebp+var_20]
push    eax
mov     ecx, [ebp+var_4C]
push    ecx
mov     edx, [ebp+var_50]
push    edx
mov     eax, [ebp+var_48]
push    eax
lea     ecx, [ebp+var_44]
push    ecx
mov     ecx, [ebp+var_54]
call    sub_401000
push    0x0FE2CE6E0
push    0x0A
mov     edx, [ebp+var_4]
push    edx
mov     eax, [ebp+var_50]
push    eax
mov     ecx, [ebp+var_48]
push    ecx
mov     edx, [ebp+var_44]
push    edx
lea     eax, [ebp+var_4C]
push    eax
mov     ecx, [ebp+var_54]
call    sub_401000
push    0x0A3014314
push    0x0F
mov     ecx, [ebp+var_28]
push    ecx
mov     edx, [ebp+var_48]
push    edx
mov     eax, [ebp+var_44]
push    eax
mov     ecx, [ebp+var_4C]
push    ecx
lea     edx, [ebp+var_50]
push    edx
mov     ecx, [ebp+var_54]
call    sub_401000
push    0x4E0811A1
push    0x15
mov     eax, [ebp+var_C]
push    eax
mov     ecx, [ebp+var_44]
push    ecx
mov     edx, [ebp+var_4C]
push    edx
mov     eax, [ebp+var_50]
push    eax
lea     ecx, [ebp+var_48]
push    ecx
mov     ecx, [ebp+var_54]
call    sub_401000
push    0x0F7537E82
push    6
mov     edx, [ebp+var_30]
push    edx
mov     eax, [ebp+var_4C]
push    eax
mov     ecx, [ebp+var_50]
push    ecx
mov     edx, [ebp+var_48]
push    edx
lea     eax, [ebp+var_44]
push    eax
mov     ecx, [ebp+var_54]
call    sub_401000
push    0x0BD3AF235
push    0x0A
mov     ecx, [ebp+var_14]
push    ecx
mov     edx, [ebp+var_50]
push    edx
mov     eax, [ebp+var_48]
push    eax
mov     ecx, [ebp+var_44]
push    ecx
lea     edx, [ebp+var_4C]
push    edx
mov     ecx, [ebp+var_54]
call    sub_401000
push    0x2AD7D2BB
push    0x0F
mov     eax, [ebp+var_38]
push    eax
mov     ecx, [ebp+var_48]
push    ecx
mov     edx, [ebp+var_44]
push    edx
mov     eax, [ebp+var_4C]
push    eax
lea     ecx, [ebp+var_50]
push    ecx
mov     ecx, [ebp+var_54]
call    sub_401000
push    0x0EB86D391
push    0x15
mov     edx, [ebp+var_1C]
push    edx
mov     eax, [ebp+var_44]
push    eax
mov     ecx, [ebp+var_4C]
push    ecx
mov     edx, [ebp+var_50]
push    edx
lea     eax, [ebp+var_48]
push    eax
mov     ecx, [ebp+var_54]
call    sub_401000
mov     ecx, [ebp+var_54]
mov     edx, [ecx]
add     edx, [ebp+var_44]
mov     eax, [ebp+var_54]
mov     [eax], edx
mov     ecx, [ebp+var_54]
mov     edx, [ecx+4]
add     edx, [ebp+var_48]
mov     eax, [ebp+var_54]
mov     [eax+4], edx
mov     ecx, [ebp+var_54]
mov     edx, [ecx+8]
add     edx, [ebp+var_50]
mov     eax, [ebp+var_54]
mov     [eax+8], edx
mov     ecx, [ebp+var_54]
mov     edx, [ecx+0x0C]
add     edx, [ebp+var_4C]
mov     eax, [ebp+var_54]
mov     [eax+0x0C], edx
push    0x40             ; size_t
push    0               ; int
lea     ecx, [ebp+var_40]
push    ecx             ; void *
call    _memset
add     esp, 0x0C
mov     esp, ebp
pop     ebp
retn    4

sub_40D0E0:
push    ebp
mov     ebp, esp
sub     esp, 0x1C
mov     eax, dword_411004
xor     eax, ebp
mov     [ebp+var_8], eax
mov     [ebp+var_18], ecx
push    8
mov     eax, [ebp+var_18]
add     eax, 0x10
push    eax
lea     ecx, [ebp+var_10]
push    ecx
mov     ecx, [ebp+var_18]
call    sub_40BEF0
mov     edx, [ebp+var_18]
mov     eax, [edx+0x10]
shr     eax, 3
and     eax, 0x3F
mov     [ebp+var_4], eax
cmp     [ebp+var_4], 0x38
jnb     short loc_40D12A
mov     ecx, 0x38
sub     ecx, [ebp+var_4]
mov     [ebp+var_1C], ecx
jmp     short loc_40D135

loc_40D12A:
mov     edx, 0x78
sub     edx, [ebp+var_4]
mov     [ebp+var_1C], edx

loc_40D135:
mov     eax, [ebp+var_1C]
mov     [ebp+var_14], eax
mov     ecx, [ebp+var_14]
push    ecx             ; int
push    unk_4120A0; void *
mov     ecx, [ebp+var_18]
call    sub_40CFE0
push    8               ; int
lea     edx, [ebp+var_10]
push    edx             ; void *
mov     ecx, [ebp+var_18]
call    sub_40CFE0
push    0x10
mov     eax, [ebp+var_18]
push    eax
mov     ecx, [ebp+var_18]
add     ecx, 0x58
push    ecx
mov     ecx, [ebp+var_18]
call    sub_40BEF0
push    8               ; size_t
push    0               ; int
mov     edx, [ebp+var_18]
add     edx, 0x10
push    edx             ; void *
call    _memset
add     esp, 0x0C
push    0x10             ; size_t
push    0               ; int
mov     eax, [ebp+var_18]
push    eax             ; void *
call    _memset
add     esp, 0x0C
push    0x40             ; size_t
push    0               ; int
mov     ecx, [ebp+var_18]
add     ecx, 0x18
push    ecx             ; void *
call    _memset
add     esp, 0x0C
mov     ecx, [ebp+var_8]
xor     ecx, ebp
call    sub_4029D8
mov     esp, ebp
pop     ebp
retn

_memcpy:
push    ebp
mov     ebp, esp
push    edi
push    esi
mov     esi, [ebp+arg_4]
mov     ecx, [ebp+arg_8]
mov     edi, [ebp+arg_0]
mov     eax, ecx
mov     edx, ecx
add     eax, esi
cmp     edi, esi
jbe     short CopyUp
cmp     edi, eax
jb      CopyDown

loc_402A10:
cmp     ecx, 0x100
jb      short Dword_align
cmp     dword_425F24, 0
jz      short Dword_align
push    edi
push    esi
and     edi, 0x0F
and     esi, 0x0F
cmp     edi, esi
pop     esi
pop     edi
jnz     short Dword_align
pop     esi
pop     edi
pop     ebp
jmp     __VEC_memcpy

loc_402A37:
test    edi, 3
jnz     short CopyLeadUp
shr     ecx, 2
and     edx, 3
cmp     ecx, 8          ; swit0xc 8 cases 
jb      short CopyUnwindUp
rep movsd               ; jumptable 00402A74 default case
jmp     ds:off_402B64[edx*4]

loc_402A54:
mov     eax, edi
mov     edx, 3
sub     ecx, 4
jb      short ByteCopyUp
and     eax, 3
add     ecx, eax
jmp     dword  ds:CopyUnwindUp+4[eax*4]

loc_402A6C:
jmp     dword  ds:TrailUp0[ecx*4]

loc_402A74:
jmp     ds:off_402AF8[ecx*4]; swit0xc jump
mov     0xa, 0x2A
inc     eax
add     al, bl
sub     al, [eax+0]
and     edx, ecx
mov     al, [esi]
mov     [edi], al
mov     al, [esi+1]
mov     [edi+1], al
mov     al, [esi+2]
shr     ecx, 2
mov     [edi+2], al
add     esi, 3
add     edi, 3
cmp     ecx, 8
jb      short CopyUnwindUp
rep movsd
jmp     ds:off_402B64[edx*4]
and     edx, ecx
mov     al, [esi]
mov     [edi], al
mov     al, [esi+1]
shr     ecx, 2
mov     [edi+1], al
add     esi, 2
add     edi, 2
cmp     ecx, 8
jb      short CopyUnwindUp
rep movsd
jmp     ds:off_402B64[edx*4]
and     edx, ecx
mov     al, [esi]
mov     [edi], al
add     esi, 1
shr     ecx, 2
add     edi, 1
cmp     ecx, 8
jb      short CopyUnwindUp
rep movsd
jmp     ds:off_402B64[edx*4]
mov     eax, [esi+ecx*4-0x1C]; jumptable 00402A74 case 7
mov     [edi+ecx*4-0x1C], eax
mov     eax, [esi+ecx*4-0x18]; jumptable 00402A74 case 6
mov     [edi+ecx*4-0x18], eax
mov     eax, [esi+ecx*4-0x14]; jumptable 00402A74 case 5
mov     [edi+ecx*4-0x14], eax
mov     eax, [esi+ecx*4-0x10]; jumptable 00402A74 case 4
mov     [edi+ecx*4-0x10], eax
mov     eax, [esi+ecx*4-0x0C]; jumptable 00402A74 case 3
mov     [edi+ecx*4-0x0C], eax
mov     eax, [esi+ecx*4-8]; jumptable 00402A74 case 2
mov     [edi+ecx*4-8], eax
mov     eax, [esi+ecx*4-4]; jumptable 00402A74 case 1
mov     [edi+ecx*4-4], eax
lea     eax, ds:0[ecx*4]
add     esi, eax
add     edi, eax
jmp     ds:off_402B64[edx*4]; jumptable 00402A74 case 0

loc_402B74:
mov     eax, [ebp+arg_0]
pop     esi
pop     edi
leave
retn
mov     al, [esi]
mov     [edi], al
mov     eax, [ebp+arg_0]
pop     esi
pop     edi
leave
retn
mov     al, [esi]
mov     [edi], al
mov     al, [esi+1]
mov     [edi+1], al
mov     eax, [ebp+arg_0]
pop     esi
pop     edi
leave
retn
mov     al, [esi]
mov     [edi], al
mov     al, [esi+1]
mov     [edi+1], al
mov     al, [esi+2]
mov     [edi+2], al
mov     eax, [ebp+arg_0]
pop     esi
pop     edi
leave
retn

loc_402BB4:
lea     esi, [ecx+esi-4]
lea     edi, [ecx+edi-4]
test    edi, 3
jnz     short CopyLeadDown
shr     ecx, 2
and     edx, 3
cmp     ecx, 8
jb      short CopyUnwindDown
std
rep movsd
cld
jmp     ds:off_402D00[edx*4]; jumptable 00402C00 case 0

loc_402BDC:
neg     ecx
jmp     ds:off_402CB0[ecx*4]

loc_402BE8:
mov     eax, edi
mov     edx, 3
cmp     ecx, 4          ; swit0xc 4 cases 
jb      short ByteCopyDown
and     eax, 3          ; jumptable 00402C00 default case
sub     ecx, eax
jmp     dword  ds:ByteCopyDown+4[eax*4]

loc_402C00:
jmp     ds:off_402D00[ecx*4]; swit0xc jump
mov     al, [esi+3]
and     edx, ecx
mov     [edi+3], al
sub     esi, 1
shr     ecx, 2
sub     edi, 1
cmp     ecx, 8
jb      short CopyUnwindDown
std
rep movsd
cld
jmp     ds:off_402D00[edx*4]; jumptable 00402C00 case 0
mov     al, [esi+3]
and     edx, ecx
mov     [edi+3], al
mov     al, [esi+2]
shr     ecx, 2
mov     [edi+2], al
sub     esi, 2
sub     edi, 2
cmp     ecx, 8
jb      short CopyUnwindDown
std
rep movsd
cld
jmp     ds:off_402D00[edx*4]; jumptable 00402C00 case 0
mov     al, [esi+3]
and     edx, ecx
mov     [edi+3], al
mov     al, [esi+2]
mov     [edi+2], al
mov     al, [esi+1]
shr     ecx, 2
mov     [edi+1], al
sub     esi, 3
sub     edi, 3
cmp     ecx, 8
jb      CopyUnwindDown
std
rep movsd
cld
jmp     ds:off_402D00[edx*4]; jumptable 00402C00 case 0
mov     eax, [esi+ecx*4+0x1C]
mov     [edi+ecx*4+0x1C], eax
mov     eax, [esi+ecx*4+0x18]
mov     [edi+ecx*4+0x18], eax
mov     eax, [esi+ecx*4+0x14]
mov     [edi+ecx*4+0x14], eax
mov     eax, [esi+ecx*4+0x10]
mov     [edi+ecx*4+0x10], eax
mov     eax, [esi+ecx*4+0x0C]
mov     [edi+ecx*4+0x0C], eax
mov     eax, [esi+ecx*4+8]
mov     [edi+ecx*4+8], eax
mov     eax, [esi+ecx*4+4]
mov     [edi+ecx*4+4], eax
lea     eax, ds:0[ecx*4]
add     esi, eax
add     edi, eax
jmp     ds:off_402D00[edx*4]; jumptable 00402C00 case 0
mov     eax, [ebp+arg_0]; jumptable 00402C00 case 0
pop     esi
pop     edi
leave
retn
mov     al, [esi+3]     ; jumptable 00402C00 case 1
mov     [edi+3], al
mov     eax, [ebp+arg_0]
pop     esi
pop     edi
leave
retn
mov     al, [esi+3]     ; jumptable 00402C00 case 2
mov     [edi+3], al
mov     al, [esi+2]
mov     [edi+2], al
mov     eax, [ebp+arg_0]
pop     esi
pop     edi
leave
retn
mov     al, [esi+3]     ; jumptable 00402C00 case 3
mov     [edi+3], al
mov     al, [esi+2]
mov     [edi+2], al
mov     al, [esi+1]
mov     [edi+1], al
mov     eax, [ebp+arg_0]
pop     esi
pop     edi
leave
retn

_sprintf:
mov     edi, edi
push    ebp
mov     ebp, esp
sub     esp, 0x20
push    ebx
xor     ebx, ebx
cmp     [ebp+arg_4], ebx
jnz     short loc_402D82

loc_402D65:
call    __errno
push    ebx
push    ebx
push    ebx
push    ebx
push    ebx
mov     dword  [eax], 0x16
call    __invalid_parameter
add     esp, 0x14
or      eax, 0x0FFFFFFFF
jmp     short loc_402DCF

loc_402D82:
mov     eax, [ebp+arg_0]
cmp     eax, ebx
jz      short loc_402D65
push    esi
mov     [ebp+var_20._base], eax
mov     [ebp+var_20._], eax
lea     eax, [ebp+arg_8]
push    eax             ; int
push    ebx             ; struct localeinfo_struct *
push    [ebp+arg_4]     ; int
lea     eax, [ebp+var_20]
push    eax             ; FILE *
mov     [ebp+var_20._cnt], 0x7FFFFFFF
mov     [ebp+var_20._flag], 0x42
call    __output_l
add     esp, 0x10
dec     [ebp+var_20._cnt]
mov     esi, eax
js      short loc_402DC0
mov     eax, [ebp+var_20._]
mov     [eax], bl
jmp     short loc_402DCC

loc_402DC0:
lea     eax, [ebp+var_20]
push    eax             ; FILE *
push    ebx             ; int
call    __flsbuf
pop     ecx
pop     ecx

loc_402DCC:
mov     eax, esi
pop     esi

loc_402DCF:
pop     ebx
leave
retn

_strncat:
mov     ecx, [esp+arg_8]
push    edi
test    ecx, ecx
jz      finish
mov     edi, [esp+4+arg_0]
push    esi
test    edi, 3
push    ebx
jz      short find_end_of_front_string_loop

loc_402DFB:
mov     al, [edi]
add     edi, 1
test    al, al
jz      short start_byte_3
test    edi, 3
jnz     short front_misaligned

loc_402E0C:
mov     eax, [edi]
mov     edx, 0x7EFEFEFF
add     edx, eax
xor     eax, 0x0FFFFFFFF
xor     eax, edx
add     edi, 4
test    eax, 0x81010100
jz      short find_end_of_front_string_loop
mov     eax, [edi-4]
test    al, al
jz      short start_byte_0
test    0xa, 0xa
jz      short start_byte_1
test    eax, 0x0FF0000
jz      short start_byte_2
test    eax, 0x0FF000000
jnz     short find_end_of_front_string_loop

loc_402E3D:
sub     edi, 1
jmp     short copy_start

loc_402E42:
sub     edi, 2
jmp     short copy_start

loc_402E47:
sub     edi, 3
jmp     short copy_start

loc_402E4C:
sub     edi, 4

loc_402E4F:
mov     esi, [esp+0x0C+arg_4]
test    esi, 3
jnz     short back_misaligned
mov     ebx, ecx
shr     ecx, 2
jnz     short main_loop_entrance
jmp     short tail_loop_start

loc_402E64:
mov     dl, [esi]
add     esi, 1
test    dl, dl
jz      short loc_402EAA
mov     [edi], dl
add     edi, 1
sub     ecx, 1
jz      short empty_counter
test    esi, 3
jnz     short back_misaligned
mov     ebx, ecx
shr     ecx, 2
jnz     short main_loop_entrance

loc_402E86:
mov     ecx, ebx
and     ecx, 3
jz      short empty_counter

loc_402E8D:
mov     dl, [esi]
add     esi, 1
mov     [edi], dl
add     edi, 1
test    dl, dl
jz      short finish1
sub     ecx, 1
jnz     short tail_loop

loc_402EA0:
mov     [edi], cl

loc_402EA2:
pop     ebx
pop     esi

loc_402EA4:
mov     eax, [esp+4+arg_0]
pop     edi
retn

loc_402EAA:
mov     [edi], dl
mov     eax, [esp+0x0C+arg_0]
pop     ebx
pop     esi
pop     edi
retn

loc_402EB4:
mov     [edi], edx
add     edi, 4
sub     ecx, 1
jz      short tail_loop_start

loc_402EBE:
mov     edx, 0x7EFEFEFF
mov     eax, [esi]
add     edx, eax
xor     eax, 0x0FFFFFFFF
xor     eax, edx
mov     edx, [esi]
add     esi, 4
test    eax, 0x81010100
jz      short main_loop
test    dl, dl
jz      short loc_402EAA
test    0xd, 0xd
jz      short loc_402F0A
test    edx, 0x0FF0000
jz      short loc_402EFA
test    edx, 0x0FF000000
jnz     short main_loop
mov     [edi], edx
mov     eax, [esp+0x0C+arg_0]
pop     ebx
pop     esi
pop     edi
retn

loc_402EFA:
mov     [edi], dx
xor     edx, edx
mov     eax, [esp+0x0C+arg_0]
mov     [edi+2], dl
pop     ebx
pop     esi
pop     edi
retn

loc_402F0A:
mov     [edi], dx
mov     eax, [esp+0x0C+arg_0]
pop     ebx
pop     esi
pop     edi
retn

sub_4029D8:
cmp     ecx, dword_411004
jnz     short loc_4029E2
rep retn

loc_4029E2:
jmp     ___report_gsfailure

sub_40BE70:
push    ebp
mov     ebp, esp
sub     esp, 0x0C
mov     [ebp+var_C], ecx
mov     [ebp+var_4], 0
mov     [ebp+var_8], 0
jmp     short loc_40BE9B

loc_40BE89:
mov     eax, [ebp+var_4]
add     eax, 1
mov     [ebp+var_4], eax
mov     ecx, [ebp+var_8]
add     ecx, 4
mov     [ebp+var_8], ecx

loc_40BE9B:
mov     edx, [ebp+var_8]
cmp     edx, [ebp+arg_8]
jnb     short loc_40BEE4
mov     eax, [ebp+arg_4]
add     eax, [ebp+var_8]
movzx   ecx, byte  [eax]
mov     edx, [ebp+arg_4]
add     edx, [ebp+var_8]
movzx   eax, byte  [edx+1]
shl     eax, 8
or      ecx, eax
mov     edx, [ebp+arg_4]
add     edx, [ebp+var_8]
movzx   eax, byte  [edx+2]
shl     eax, 0x10
or      ecx, eax
mov     edx, [ebp+arg_4]
add     edx, [ebp+var_8]
movzx   eax, byte  [edx+3]
shl     eax, 0x18
or      ecx, eax
mov     edx, [ebp+var_4]
mov     eax, [ebp+arg_0]
mov     [eax+edx*4], ecx
jmp     short loc_40BE89

loc_40BEE4:
mov     esp, ebp
pop     ebp
retn    0x0C

_memset:
mov     edx, [esp+arg_8]
mov     ecx, [esp+arg_0]
test    edx, edx
jz      short toend
xor     eax, eax
mov     al, byte  [esp+arg_4]
test    al, al
jnz     short loc_402FDC
cmp     edx, 0x100
jb      short loc_402FDC
cmp     dword_425F24, 0
jz      short loc_402FDC
jmp     __VEC_memzero

loc_402FDC:
push    edi
mov     edi, ecx
cmp     edx, 4
jb      short tail
neg     ecx
and     ecx, 3
jz      short dwords
sub     edx, ecx

loc_402FED:
mov     [edi], al
add     edi, 1
sub     ecx, 1
jnz     short adjust_loop

loc_402FF7:
mov     ecx, eax
shl     eax, 8
add     eax, ecx
mov     ecx, eax
shl     eax, 0x10
add     eax, ecx
mov     ecx, edx
and     edx, 3
shr     ecx, 2
jz      short tail
rep stosd
test    edx, edx
jz      short finish_0

loc_403015:
mov     [edi], al
add     edi, 1
sub     edx, 1
jnz     short tail

loc_40301F:
mov     eax, [esp+4+arg_0]
pop     edi
retn

loc_403025:
mov     eax, [esp+arg_0]
retn

sub_40BEF0:
push    ebp
mov     ebp, esp
sub     esp, 0x0C
mov     [ebp+var_C], ecx
mov     [ebp+var_4], 0
mov     [ebp+var_8], 0
jmp     short loc_40BF1B

loc_40BF09:
mov     eax, [ebp+var_4]
add     eax, 1
mov     [ebp+var_4], eax
mov     ecx, [ebp+var_8]
add     ecx, 4
mov     [ebp+var_8], ecx

loc_40BF1B:
mov     edx, [ebp+var_8]
cmp     edx, [ebp+arg_8]
jnb     short loc_40BF8F
mov     eax, [ebp+var_4]
mov     ecx, [ebp+arg_4]
mov     edx, [ecx+eax*4]
and     edx, 0x0FF
mov     eax, [ebp+arg_0]
add     eax, [ebp+var_8]
mov     [eax], dl
mov     ecx, [ebp+var_4]
mov     edx, [ebp+arg_4]
mov     eax, [edx+ecx*4]
shr     eax, 8
and     eax, 0x0FF
mov     ecx, [ebp+arg_0]
add     ecx, [ebp+var_8]
mov     [ecx+1], al
mov     edx, [ebp+var_4]
mov     eax, [ebp+arg_4]
mov     ecx, [eax+edx*4]
shr     ecx, 0x10
and     ecx, 0x0FF
mov     edx, [ebp+arg_0]
add     edx, [ebp+var_8]
mov     [edx+2], cl
mov     eax, [ebp+var_4]
mov     ecx, [ebp+arg_4]
mov     edx, [ecx+eax*4]
shr     edx, 0x18
and     edx, 0x0FF
mov     eax, [ebp+arg_0]
add     eax, [ebp+var_8]
mov     [eax+3], dl
jmp     loc_40BF09

loc_40BF8F:
mov     esp, ebp
pop     ebp
retn    0x0C


section .data
  a02x db '%02x', 0x0
  unk_4120A0 db 0x80