section .text

extern memset
extern strlen
extern memcpy
extern strncat
extern strcmp
extern toupper
extern __strdup
extern sprintf

global _interesting_hash_stuff

_hash_function:
   push    ebp
   mov     ebp, esp
   sub     esp, 78h
   mov     eax, [dword_411004]
   xor     eax, ebp
   mov     [ebp-8], eax
   mov     eax, [ebp+8]
   push    eax
   call    strlen
   add     esp, 4
   mov     [ebp-4], eax
   lea     ecx, [ebp-78h]
   call    _set_IV
   mov     ecx, [ebp-4]
   push    ecx
   mov     edx, [ebp+8]
   push    edx
   lea     ecx, [ebp-78h]
   call    _sub_40CFE0
   lea     ecx, [ebp-78h]
   call    _sub_40D0E0
   lea     eax, [ebp-20h]
   push    eax
   call    _sub_40BFF0
   add     esp, 4
   mov     ecx, [ebp-8]
   xor     ecx, ebp
   call    _sub_4029D8
   mov     esp, ebp
   pop     ebp
   retn    
_set_IV:
   push    ebp
   mov     ebp, esp
   push    ecx
   mov     [ebp-4], ecx
   push    8
   push    0
   mov     eax, [ebp-4]
   add     eax, 10h
   push    eax
   call    memset
   add     esp, 0Ch
   mov     ecx, [ebp-4]
   mov     dword [ecx], 21427531h
   mov     edx, [ebp-4]
   mov     dword [edx+4], 75135135h
   mov     eax, [ebp-4]
   mov     dword [eax+8], 3158AC31h
   mov     ecx, [ebp-4]
   mov     dword [ecx+0Ch], 1A1B2A6h
   mov     esp, ebp
   pop     ebp
   retn    
_sub_40CFE0:
   push    ebp
   mov     ebp, esp
   sub     esp, 10h
   mov     [ebp-10h], ecx
   mov     eax, [ebp-10h]
   mov     ecx, [eax+10h]
   shr     ecx, 3
   and     ecx, 3Fh
   mov     [ebp-8], ecx
   mov     edx, [ebp-10h]
   mov     eax, [edx+10h]
   mov     ecx, [ebp+0Ch]
   lea     edx, [eax+ecx*8]
   mov     eax, [ebp-10h]
   mov     [eax+10h], edx
   mov     ecx, [ebp+0Ch]
   shl     ecx, 3
   mov     edx, [ebp-10h]
   cmp     [edx+10h], ecx
   jnb     loc_40D027
   mov     eax, [ebp-10h]
   mov     ecx, [eax+14h]
   add     ecx, 1
   mov     edx, [ebp-10h]
   mov     [edx+14h], ecx
loc_40D027:
   mov     eax, [ebp+0Ch]
   shr     eax, 1Dh
   mov     ecx, [ebp-10h]
   add     eax, [ecx+14h]
   mov     edx, [ebp-10h]
   mov     [edx+14h], eax
   mov     eax, 40h
   sub     eax, [ebp-8]
   mov     [ebp-0Ch], eax
   mov     ecx, [ebp+0Ch]
   cmp     ecx, [ebp-0Ch]
   jb      loc_40D0AC
   mov     edx, [ebp-0Ch]
   push    edx
   mov     eax, [ebp+8]
   push    eax
   mov     ecx, [ebp-8]
   mov     edx, [ebp-10h]
   lea     eax, [edx+ecx+18h]
   push    eax
   call    memcpy
   add     esp, 0Ch
   mov     ecx, [ebp-10h]
   add     ecx, 18h
   push    ecx
   mov     ecx, [ebp-10h]
   call    _sub_40C090
   mov     edx, [ebp-0Ch]
   mov     [ebp-4], edx
   jmp     loc_40D087
loc_40D07E:
   mov     eax, [ebp-4]
   add     eax, 40h
   mov     [ebp-4], eax
loc_40D087:
   mov     ecx, [ebp-4]
   add     ecx, 3Fh
   cmp     ecx, [ebp+0Ch]
   jnb     loc_40D0A3
   mov     edx, [ebp+8]
   add     edx, [ebp-4]
   push    edx
   mov     ecx, [ebp-10h]
   call    _sub_40C090
   jmp     loc_40D07E
loc_40D0A3:
   mov     dword [ebp-8], 0
   jmp     loc_40D0B3
loc_40D0AC:
   mov     dword [ebp-4], 0
loc_40D0B3:
   mov     eax, [ebp+0Ch]
   sub     eax, [ebp-4]
   push    eax
   mov     ecx, [ebp+8]
   add     ecx, [ebp-4]
   push    ecx
   mov     edx, [ebp-8]
   mov     eax, [ebp-10h]
   lea     ecx, [eax+edx+18h]
   push    ecx
   call    memcpy
   add     esp, 0Ch
   mov     esp, ebp
   pop     ebp
   retn    8
_sub_401000:
   push    ebp
   mov     ebp, esp
   sub     esp, 8
   mov     [ebp-8], ecx
   mov     eax, [ebp+14h]
   not     eax
   or      eax, [ebp+0Ch]
   xor     eax, [ebp+10h]
   add     eax, [ebp+18h]
   add     eax, [ebp+20h]
   mov     ecx, [ebp+8]
   add     eax, [ecx]
   mov     edx, [ebp+8]
   mov     [edx], eax
   mov     eax, [ebp+8]
   mov     ecx, [eax]
   mov     [ebp-4], ecx
   mov     ecx, 20h
   sub     ecx, [ebp+1Ch]
   mov     edx, [ebp-4]
   shr     edx, cl
   mov     eax, [ebp-4]
   mov     ecx, [ebp+1Ch]
   shl     eax, cl
   or      eax, edx
   mov     ecx, [ebp+8]
   mov     [ecx], eax
   mov     edx, [ebp+8]
   mov     eax, [edx]
   add     eax, [ebp+0Ch]
   mov     ecx, [ebp+8]
   mov     [ecx], eax
   mov     esp, ebp
   pop     ebp
   retn    1Ch
_string_to_upper:
   push    ebp
   mov     ebp, esp
   sub     esp, 8
   mov     eax, [ebp+8]
   push    eax
   call    strlen
   add     esp, 4
   mov     [ebp-4], eax
   mov     dword [ebp-8], 0
   jmp     loc_40B807
loc_40B7FE:
   mov     ecx, [ebp-8]
   add     ecx, 1
   mov     [ebp-8], ecx
loc_40B807:
   mov     edx, [ebp-8]
   cmp     edx, [ebp-4]
   jge     loc_40B82B
   mov     eax, [ebp+8]
   add     eax, [ebp-8]
   movsx   ecx, byte [eax]
   push    ecx
   call    toupper
   add     esp, 4
   mov     edx, [ebp+8]
   add     edx, [ebp-8]
   mov     [edx], al
   jmp     loc_40B7FE
loc_40B82B:
   mov     eax, [ebp+8]
   mov     esp, ebp
   pop     ebp
   retn    
_sub_40BFF0:
   push    ebp
   mov     ebp, esp
   sub     esp, 118h
   mov     eax, [dword_411004]
   xor     eax, ebp
   mov     [ebp-4], eax
   push    100h
   push    0
   lea     eax, [ebp-118h]
   push    eax
   call    memset
   add     esp, 0Ch
   push    0Ah
   push    0
   lea     ecx, [ebp-10h]
   push    ecx
   call    memset
   add     esp, 0Ch
   mov     dword [ebp-14h], 0
   jmp     loc_40C03B
loc_40C032:
   mov     edx, [ebp-14h]
   add     edx, 1
   mov     [ebp-14h], edx
loc_40C03B:
   cmp     dword [ebp-14h], 10h
   jge     loc_40C073
   mov     eax, [ebp+8]
   add     eax, [ebp-14h]
   movzx   ecx, byte [eax]
   push    ecx
   push    a02x
   lea     edx, [ebp-10h]
   push    edx
   call    sprintf
   add     esp, 0Ch
   push    0Ah
   lea     eax, [ebp-10h]
   push    eax
   lea     ecx, [ebp-118h]
   push    ecx
   call    strncat
   add     esp, 0Ch
   jmp     loc_40C032
loc_40C073:
   lea     edx, [ebp-118h]
   push    edx
   call    __strdup
   add     esp, 4
   mov     ecx, [ebp-4]
   xor     ecx, ebp
   call    _sub_4029D8
   mov     esp, ebp
   pop     ebp
   retn    
_sub_40C090:
   push    ebp
   mov     ebp, esp
   sub     esp, 54h
   mov     [ebp-54h], ecx
   mov     eax, [ebp-54h]
   mov     ecx, [eax]
   mov     [ebp-44h], ecx
   mov     edx, [ebp-54h]
   mov     eax, [edx+4]
   mov     [ebp-48h], eax
   mov     ecx, [ebp-54h]
   mov     edx, [ecx+8]
   mov     [ebp-50h], edx
   mov     eax, [ebp-54h]
   mov     ecx, [eax+0Ch]
   mov     [ebp-4Ch], ecx
   push    40h
   mov     edx, [ebp+8]
   push    edx
   lea     eax, [ebp-40h]
   push    eax
   mov     ecx, [ebp-54h]
   call    _sub_40BE70
   mov     ecx, [ebp-48h]
   not     ecx
   and     ecx, [ebp-4Ch]
   mov     edx, [ebp-48h]
   and     edx, [ebp-50h]
   or      edx, ecx
   add     edx, [ebp-40h]
   mov     eax, [ebp-44h]
   lea     ecx, [eax+edx-28955B88h]
   mov     [ebp-44h], ecx
   mov     ecx, 20h
   sub     ecx, 7
   mov     edx, [ebp-44h]
   shr     edx, cl
   mov     eax, [ebp-44h]
   shl     eax, 7
   or      eax, edx
   mov     [ebp-44h], eax
   mov     ecx, [ebp-44h]
   add     ecx, [ebp-48h]
   mov     [ebp-44h], ecx
   mov     edx, [ebp-44h]
   not     edx
   and     edx, [ebp-50h]
   mov     eax, [ebp-44h]
   and     eax, [ebp-48h]
   or      eax, edx
   add     eax, [ebp-3Ch]
   mov     ecx, [ebp-4Ch]
   lea     edx, [ecx+eax-173848AAh]
   mov     [ebp-4Ch], edx
   mov     ecx, 20h
   sub     ecx, 0Ch
   mov     eax, [ebp-4Ch]
   shr     eax, cl
   mov     ecx, [ebp-4Ch]
   shl     ecx, 0Ch
   or      ecx, eax
   mov     [ebp-4Ch], ecx
   mov     edx, [ebp-4Ch]
   add     edx, [ebp-44h]
   mov     [ebp-4Ch], edx
   mov     eax, [ebp-4Ch]
   not     eax
   and     eax, [ebp-48h]
   mov     ecx, [ebp-4Ch]
   and     ecx, [ebp-44h]
   or      ecx, eax
   add     ecx, [ebp-38h]
   mov     edx, [ebp-50h]
   lea     eax, [edx+ecx+242070DBh]
   mov     [ebp-50h], eax
   mov     ecx, 20h
   sub     ecx, 11h
   mov     edx, [ebp-50h]
   shr     edx, cl
   mov     eax, [ebp-50h]
   shl     eax, 11h
   or      eax, edx
   mov     [ebp-50h], eax
   mov     ecx, [ebp-50h]
   add     ecx, [ebp-4Ch]
   mov     [ebp-50h], ecx
   mov     edx, [ebp-50h]
   not     edx
   and     edx, [ebp-44h]
   mov     eax, [ebp-50h]
   and     eax, [ebp-4Ch]
   or      eax, edx
   add     eax, [ebp-34h]
   mov     ecx, [ebp-48h]
   lea     edx, [ecx+eax-3E423112h]
   mov     [ebp-48h], edx
   mov     ecx, 20h
   sub     ecx, 16h
   mov     eax, [ebp-48h]
   shr     eax, cl
   mov     ecx, [ebp-48h]
   shl     ecx, 16h
   or      ecx, eax
   mov     [ebp-48h], ecx
   mov     edx, [ebp-48h]
   add     edx, [ebp-50h]
   mov     [ebp-48h], edx
   mov     eax, [ebp-48h]
   not     eax
   and     eax, [ebp-4Ch]
   mov     ecx, [ebp-48h]
   and     ecx, [ebp-50h]
   or      ecx, eax
   add     ecx, [ebp-30h]
   mov     edx, [ebp-44h]
   lea     eax, [edx+ecx-0A83F051h]
   mov     [ebp-44h], eax
   mov     ecx, 20h
   sub     ecx, 7
   mov     edx, [ebp-44h]
   shr     edx, cl
   mov     eax, [ebp-44h]
   shl     eax, 7
   or      eax, edx
   mov     [ebp-44h], eax
   mov     ecx, [ebp-44h]
   add     ecx, [ebp-48h]
   mov     [ebp-44h], ecx
   mov     edx, [ebp-44h]
   not     edx
   and     edx, [ebp-50h]
   mov     eax, [ebp-44h]
   and     eax, [ebp-48h]
   or      eax, edx
   add     eax, [ebp-2Ch]
   mov     ecx, [ebp-4Ch]
   lea     edx, [ecx+eax+4787C62Ah]
   mov     [ebp-4Ch], edx
   mov     ecx, 20h
   sub     ecx, 0Ch
   mov     eax, [ebp-4Ch]
   shr     eax, cl
   mov     ecx, [ebp-4Ch]
   shl     ecx, 0Ch
   or      ecx, eax
   mov     [ebp-4Ch], ecx
   mov     edx, [ebp-4Ch]
   add     edx, [ebp-44h]
   mov     [ebp-4Ch], edx
   mov     eax, [ebp-4Ch]
   not     eax
   and     eax, [ebp-48h]
   mov     ecx, [ebp-4Ch]
   and     ecx, [ebp-44h]
   or      ecx, eax
   add     ecx, [ebp-28h]
   mov     edx, [ebp-50h]
   lea     eax, [edx+ecx-57CFB9EDh]
   mov     [ebp-50h], eax
   mov     ecx, 20h
   sub     ecx, 11h
   mov     edx, [ebp-50h]
   shr     edx, cl
   mov     eax, [ebp-50h]
   shl     eax, 11h
   or      eax, edx
   mov     [ebp-50h], eax
   mov     ecx, [ebp-50h]
   add     ecx, [ebp-4Ch]
   mov     [ebp-50h], ecx
   mov     edx, [ebp-50h]
   not     edx
   and     edx, [ebp-44h]
   mov     eax, [ebp-50h]
   and     eax, [ebp-4Ch]
   or      eax, edx
   add     eax, [ebp-24h]
   mov     ecx, [ebp-48h]
   lea     edx, [ecx+eax-2B96AFFh]
   mov     [ebp-48h], edx
   mov     ecx, 20h
   sub     ecx, 16h
   mov     eax, [ebp-48h]
   shr     eax, cl
   mov     ecx, [ebp-48h]
   shl     ecx, 16h
   or      ecx, eax
   mov     [ebp-48h], ecx
   mov     edx, [ebp-48h]
   add     edx, [ebp-50h]
   mov     [ebp-48h], edx
   mov     eax, [ebp-48h]
   not     eax
   and     eax, [ebp-4Ch]
   mov     ecx, [ebp-48h]
   and     ecx, [ebp-50h]
   or      ecx, eax
   add     ecx, [ebp-20h]
   mov     edx, [ebp-44h]
   lea     eax, [edx+ecx+698098D8h]
   mov     [ebp-44h], eax
   mov     ecx, 20h
   sub     ecx, 7
   mov     edx, [ebp-44h]
   shr     edx, cl
   mov     eax, [ebp-44h]
   shl     eax, 7
   or      eax, edx
   mov     [ebp-44h], eax
   mov     ecx, [ebp-44h]
   add     ecx, [ebp-48h]
   mov     [ebp-44h], ecx
   mov     edx, [ebp-44h]
   not     edx
   and     edx, [ebp-50h]
   mov     eax, [ebp-44h]
   and     eax, [ebp-48h]
   or      eax, edx
   add     eax, [ebp-1Ch]
   mov     ecx, [ebp-4Ch]
   lea     edx, [ecx+eax-74BB0851h]
   mov     [ebp-4Ch], edx
   mov     ecx, 20h
   sub     ecx, 0Ch
   mov     eax, [ebp-4Ch]
   shr     eax, cl
   mov     ecx, [ebp-4Ch]
   shl     ecx, 0Ch
   or      ecx, eax
   mov     [ebp-4Ch], ecx
   mov     edx, [ebp-4Ch]
   add     edx, [ebp-44h]
   mov     [ebp-4Ch], edx
   mov     eax, [ebp-4Ch]
   not     eax
   and     eax, [ebp-48h]
   mov     ecx, [ebp-4Ch]
   and     ecx, [ebp-44h]
   or      ecx, eax
   add     ecx, [ebp-18h]
   mov     edx, [ebp-50h]
   lea     eax, [edx+ecx-0A44Fh]
   mov     [ebp-50h], eax
   mov     ecx, 20h
   sub     ecx, 11h
   mov     edx, [ebp-50h]
   shr     edx, cl
   mov     eax, [ebp-50h]
   shl     eax, 11h
   or      eax, edx
   mov     [ebp-50h], eax
   mov     ecx, [ebp-50h]
   add     ecx, [ebp-4Ch]
   mov     [ebp-50h], ecx
   mov     edx, [ebp-50h]
   not     edx
   and     edx, [ebp-44h]
   mov     eax, [ebp-50h]
   and     eax, [ebp-4Ch]
   or      eax, edx
   add     eax, [ebp-14h]
   mov     ecx, [ebp-48h]
   lea     edx, [ecx+eax-76A32842h]
   mov     [ebp-48h], edx
   mov     ecx, 20h
   sub     ecx, 16h
   mov     eax, [ebp-48h]
   shr     eax, cl
   mov     ecx, [ebp-48h]
   shl     ecx, 16h
   or      ecx, eax
   mov     [ebp-48h], ecx
   mov     edx, [ebp-48h]
   add     edx, [ebp-50h]
   mov     [ebp-48h], edx
   mov     eax, [ebp-48h]
   not     eax
   and     eax, [ebp-4Ch]
   mov     ecx, [ebp-48h]
   and     ecx, [ebp-50h]
   or      ecx, eax
   add     ecx, [ebp-10h]
   mov     edx, [ebp-44h]
   lea     eax, [edx+ecx+6B901122h]
   mov     [ebp-44h], eax
   mov     ecx, 20h
   sub     ecx, 7
   mov     edx, [ebp-44h]
   shr     edx, cl
   mov     eax, [ebp-44h]
   shl     eax, 7
   or      eax, edx
   mov     [ebp-44h], eax
   mov     ecx, [ebp-44h]
   add     ecx, [ebp-48h]
   mov     [ebp-44h], ecx
   mov     edx, [ebp-44h]
   not     edx
   and     edx, [ebp-50h]
   mov     eax, [ebp-44h]
   and     eax, [ebp-48h]
   or      eax, edx
   add     eax, [ebp-0Ch]
   mov     ecx, [ebp-4Ch]
   lea     edx, [ecx+eax-2678E6Dh]
   mov     [ebp-4Ch], edx
   mov     ecx, 20h
   sub     ecx, 0Ch
   mov     eax, [ebp-4Ch]
   shr     eax, cl
   mov     ecx, [ebp-4Ch]
   shl     ecx, 0Ch
   or      ecx, eax
   mov     [ebp-4Ch], ecx
   mov     edx, [ebp-4Ch]
   add     edx, [ebp-44h]
   mov     [ebp-4Ch], edx
   mov     eax, [ebp-4Ch]
   not     eax
   and     eax, [ebp-48h]
   mov     ecx, [ebp-4Ch]
   and     ecx, [ebp-44h]
   or      ecx, eax
   add     ecx, [ebp-8]
   mov     edx, [ebp-50h]
   lea     eax, [edx+ecx-5986BC72h]
   mov     [ebp-50h], eax
   mov     ecx, 20h
   sub     ecx, 11h
   mov     edx, [ebp-50h]
   shr     edx, cl
   mov     eax, [ebp-50h]
   shl     eax, 11h
   or      eax, edx
   mov     [ebp-50h], eax
   mov     ecx, [ebp-50h]
   add     ecx, [ebp-4Ch]
   mov     [ebp-50h], ecx
   mov     edx, [ebp-50h]
   not     edx
   and     edx, [ebp-44h]
   mov     eax, [ebp-50h]
   and     eax, [ebp-4Ch]
   or      eax, edx
   add     eax, [ebp-4]
   mov     ecx, [ebp-48h]
   lea     edx, [ecx+eax+49B40821h]
   mov     [ebp-48h], edx
   mov     ecx, 20h
   sub     ecx, 16h
   mov     eax, [ebp-48h]
   shr     eax, cl
   mov     ecx, [ebp-48h]
   shl     ecx, 16h
   or      ecx, eax
   mov     [ebp-48h], ecx
   mov     edx, [ebp-48h]
   add     edx, [ebp-50h]
   mov     [ebp-48h], edx
   mov     eax, [ebp-4Ch]
   not     eax
   and     eax, [ebp-50h]
   mov     ecx, [ebp-48h]
   and     ecx, [ebp-4Ch]
   or      ecx, eax
   add     ecx, [ebp-3Ch]
   mov     edx, [ebp-44h]
   lea     eax, [edx+ecx-9E1DA9Eh]
   mov     [ebp-44h], eax
   mov     ecx, 20h
   sub     ecx, 5
   mov     edx, [ebp-44h]
   shr     edx, cl
   mov     eax, [ebp-44h]
   shl     eax, 5
   or      eax, edx
   mov     [ebp-44h], eax
   mov     ecx, [ebp-44h]
   add     ecx, [ebp-48h]
   mov     [ebp-44h], ecx
   mov     edx, [ebp-50h]
   not     edx
   and     edx, [ebp-48h]
   mov     eax, [ebp-44h]
   and     eax, [ebp-50h]
   or      eax, edx
   add     eax, [ebp-28h]
   mov     ecx, [ebp-4Ch]
   lea     edx, [ecx+eax-3FBF4CC0h]
   mov     [ebp-4Ch], edx
   mov     ecx, 20h
   sub     ecx, 9
   mov     eax, [ebp-4Ch]
   shr     eax, cl
   mov     ecx, [ebp-4Ch]
   shl     ecx, 9
   or      ecx, eax
   mov     [ebp-4Ch], ecx
   mov     edx, [ebp-4Ch]
   add     edx, [ebp-44h]
   mov     [ebp-4Ch], edx
   mov     eax, [ebp-48h]
   not     eax
   and     eax, [ebp-44h]
   mov     ecx, [ebp-4Ch]
   and     ecx, [ebp-48h]
   or      ecx, eax
   add     ecx, [ebp-14h]
   mov     edx, [ebp-50h]
   lea     eax, [edx+ecx+265E5A51h]
   mov     [ebp-50h], eax
   mov     ecx, 20h
   sub     ecx, 0Eh
   mov     edx, [ebp-50h]
   shr     edx, cl
   mov     eax, [ebp-50h]
   shl     eax, 0Eh
   or      eax, edx
   mov     [ebp-50h], eax
   mov     ecx, [ebp-50h]
   add     ecx, [ebp-4Ch]
   mov     [ebp-50h], ecx
   mov     edx, [ebp-44h]
   not     edx
   and     edx, [ebp-4Ch]
   mov     eax, [ebp-50h]
   and     eax, [ebp-44h]
   or      eax, edx
   add     eax, [ebp-40h]
   mov     ecx, [ebp-48h]
   lea     edx, [ecx+eax-16493856h]
   mov     [ebp-48h], edx
   mov     ecx, 20h
   sub     ecx, 14h
   mov     eax, [ebp-48h]
   shr     eax, cl
   mov     ecx, [ebp-48h]
   shl     ecx, 14h
   or      ecx, eax
   mov     [ebp-48h], ecx
   mov     edx, [ebp-48h]
   add     edx, [ebp-50h]
   mov     [ebp-48h], edx
   mov     eax, [ebp-4Ch]
   not     eax
   and     eax, [ebp-50h]
   mov     ecx, [ebp-48h]
   and     ecx, [ebp-4Ch]
   or      ecx, eax
   add     ecx, [ebp-2Ch]
   mov     edx, [ebp-44h]
   lea     eax, [edx+ecx-29D0EFA3h]
   mov     [ebp-44h], eax
   mov     ecx, 20h
   sub     ecx, 5
   mov     edx, [ebp-44h]
   shr     edx, cl
   mov     eax, [ebp-44h]
   shl     eax, 5
   or      eax, edx
   mov     [ebp-44h], eax
   mov     ecx, [ebp-44h]
   add     ecx, [ebp-48h]
   mov     [ebp-44h], ecx
   mov     edx, [ebp-50h]
   not     edx
   and     edx, [ebp-48h]
   mov     eax, [ebp-44h]
   and     eax, [ebp-50h]
   or      eax, edx
   add     eax, [ebp-18h]
   mov     ecx, [ebp-4Ch]
   lea     edx, [ecx+eax+2441453h]
   mov     [ebp-4Ch], edx
   mov     ecx, 20h
   sub     ecx, 9
   mov     eax, [ebp-4Ch]
   shr     eax, cl
   mov     ecx, [ebp-4Ch]
   shl     ecx, 9
   or      ecx, eax
   mov     [ebp-4Ch], ecx
   mov     edx, [ebp-4Ch]
   add     edx, [ebp-44h]
   mov     [ebp-4Ch], edx
   mov     eax, [ebp-48h]
   not     eax
   and     eax, [ebp-44h]
   mov     ecx, [ebp-4Ch]
   and     ecx, [ebp-48h]
   or      ecx, eax
   add     ecx, [ebp-4]
   mov     edx, [ebp-50h]
   lea     eax, [edx+ecx-275E197Fh]
   mov     [ebp-50h], eax
   mov     ecx, 20h
   sub     ecx, 0Eh
   mov     edx, [ebp-50h]
   shr     edx, cl
   mov     eax, [ebp-50h]
   shl     eax, 0Eh
   or      eax, edx
   mov     [ebp-50h], eax
   mov     ecx, [ebp-50h]
   add     ecx, [ebp-4Ch]
   mov     [ebp-50h], ecx
   mov     edx, [ebp-44h]
   not     edx
   and     edx, [ebp-4Ch]
   mov     eax, [ebp-50h]
   and     eax, [ebp-44h]
   or      eax, edx
   add     eax, [ebp-30h]
   mov     ecx, [ebp-48h]
   lea     edx, [ecx+eax-182C0438h]
   mov     [ebp-48h], edx
   mov     ecx, 20h
   sub     ecx, 14h
   mov     eax, [ebp-48h]
   shr     eax, cl
   mov     ecx, [ebp-48h]
   shl     ecx, 14h
   or      ecx, eax
   mov     [ebp-48h], ecx
   mov     edx, [ebp-48h]
   add     edx, [ebp-50h]
   mov     [ebp-48h], edx
   mov     eax, [ebp-4Ch]
   not     eax
   and     eax, [ebp-50h]
   mov     ecx, [ebp-48h]
   and     ecx, [ebp-4Ch]
   or      ecx, eax
   add     ecx, [ebp-1Ch]
   mov     edx, [ebp-44h]
   lea     eax, [edx+ecx+21E1CDE6h]
   mov     [ebp-44h], eax
   mov     ecx, 20h
   sub     ecx, 5
   mov     edx, [ebp-44h]
   shr     edx, cl
   mov     eax, [ebp-44h]
   shl     eax, 5
   or      eax, edx
   mov     [ebp-44h], eax
   mov     ecx, [ebp-44h]
   add     ecx, [ebp-48h]
   mov     [ebp-44h], ecx
   mov     edx, [ebp-50h]
   not     edx
   and     edx, [ebp-48h]
   mov     eax, [ebp-44h]
   and     eax, [ebp-50h]
   or      eax, edx
   add     eax, [ebp-8]
   mov     ecx, [ebp-4Ch]
   lea     edx, [ecx+eax-3CC8F82Ah]
   mov     [ebp-4Ch], edx
   mov     ecx, 20h
   sub     ecx, 9
   mov     eax, [ebp-4Ch]
   shr     eax, cl
   mov     ecx, [ebp-4Ch]
   shl     ecx, 9
   or      ecx, eax
   mov     [ebp-4Ch], ecx
   mov     edx, [ebp-4Ch]
   add     edx, [ebp-44h]
   mov     [ebp-4Ch], edx
   mov     eax, [ebp-48h]
   not     eax
   and     eax, [ebp-44h]
   mov     ecx, [ebp-4Ch]
   and     ecx, [ebp-48h]
   or      ecx, eax
   add     ecx, [ebp-34h]
   mov     edx, [ebp-50h]
   lea     eax, [edx+ecx-0B2AF279h]
   mov     [ebp-50h], eax
   mov     ecx, 20h
   sub     ecx, 0Eh
   mov     edx, [ebp-50h]
   shr     edx, cl
   mov     eax, [ebp-50h]
   shl     eax, 0Eh
   or      eax, edx
   mov     [ebp-50h], eax
   mov     ecx, [ebp-50h]
   add     ecx, [ebp-4Ch]
   mov     [ebp-50h], ecx
   mov     edx, [ebp-44h]
   not     edx
   and     edx, [ebp-4Ch]
   mov     eax, [ebp-50h]
   and     eax, [ebp-44h]
   or      eax, edx
   add     eax, [ebp-20h]
   mov     ecx, [ebp-48h]
   lea     edx, [ecx+eax+455A14EDh]
   mov     [ebp-48h], edx
   mov     ecx, 20h
   sub     ecx, 14h
   mov     eax, [ebp-48h]
   shr     eax, cl
   mov     ecx, [ebp-48h]
   shl     ecx, 14h
   or      ecx, eax
   mov     [ebp-48h], ecx
   mov     edx, [ebp-48h]
   add     edx, [ebp-50h]
   mov     [ebp-48h], edx
   mov     eax, [ebp-4Ch]
   not     eax
   and     eax, [ebp-50h]
   mov     ecx, [ebp-48h]
   and     ecx, [ebp-4Ch]
   or      ecx, eax
   add     ecx, [ebp-0Ch]
   mov     edx, [ebp-44h]
   lea     eax, [edx+ecx-561C16FBh]
   mov     [ebp-44h], eax
   mov     ecx, 20h
   sub     ecx, 5
   mov     edx, [ebp-44h]
   shr     edx, cl
   mov     eax, [ebp-44h]
   shl     eax, 5
   or      eax, edx
   mov     [ebp-44h], eax
   mov     ecx, [ebp-44h]
   add     ecx, [ebp-48h]
   mov     [ebp-44h], ecx
   mov     edx, [ebp-50h]
   not     edx
   and     edx, [ebp-48h]
   mov     eax, [ebp-44h]
   and     eax, [ebp-50h]
   or      eax, edx
   add     eax, [ebp-38h]
   mov     ecx, [ebp-4Ch]
   lea     edx, [ecx+eax-3105C08h]
   mov     [ebp-4Ch], edx
   mov     ecx, 20h
   sub     ecx, 9
   mov     eax, [ebp-4Ch]
   shr     eax, cl
   mov     ecx, [ebp-4Ch]
   shl     ecx, 9
   or      ecx, eax
   mov     [ebp-4Ch], ecx
   mov     edx, [ebp-4Ch]
   add     edx, [ebp-44h]
   mov     [ebp-4Ch], edx
   mov     eax, [ebp-48h]
   not     eax
   and     eax, [ebp-44h]
   mov     ecx, [ebp-4Ch]
   and     ecx, [ebp-48h]
   or      ecx, eax
   add     ecx, [ebp-24h]
   mov     edx, [ebp-50h]
   lea     eax, [edx+ecx+676F02D9h]
   mov     [ebp-50h], eax
   mov     ecx, 20h
   sub     ecx, 0Eh
   mov     edx, [ebp-50h]
   shr     edx, cl
   mov     eax, [ebp-50h]
   shl     eax, 0Eh
   or      eax, edx
   mov     [ebp-50h], eax
   mov     ecx, [ebp-50h]
   add     ecx, [ebp-4Ch]
   mov     [ebp-50h], ecx
   mov     edx, [ebp-44h]
   not     edx
   and     edx, [ebp-4Ch]
   mov     eax, [ebp-50h]
   and     eax, [ebp-44h]
   or      eax, edx
   add     eax, [ebp-10h]
   mov     ecx, [ebp-48h]
   lea     edx, [ecx+eax-72D5B376h]
   mov     [ebp-48h], edx
   mov     ecx, 20h
   sub     ecx, 14h
   mov     eax, [ebp-48h]
   shr     eax, cl
   mov     ecx, [ebp-48h]
   shl     ecx, 14h
   or      ecx, eax
   mov     [ebp-48h], ecx
   mov     edx, [ebp-48h]
   add     edx, [ebp-50h]
   mov     [ebp-48h], edx
   mov     eax, [ebp-48h]
   xor     eax, [ebp-50h]
   xor     eax, [ebp-4Ch]
   add     eax, [ebp-2Ch]
   mov     ecx, [ebp-44h]
   lea     edx, [ecx+eax-5C6BEh]
   mov     [ebp-44h], edx
   mov     ecx, 20h
   sub     ecx, 4
   mov     eax, [ebp-44h]
   shr     eax, cl
   mov     ecx, [ebp-44h]
   shl     ecx, 4
   or      ecx, eax
   mov     [ebp-44h], ecx
   mov     edx, [ebp-44h]
   add     edx, [ebp-48h]
   mov     [ebp-44h], edx
   mov     eax, [ebp-44h]
   xor     eax, [ebp-48h]
   xor     eax, [ebp-50h]
   add     eax, [ebp-20h]
   mov     ecx, [ebp-4Ch]
   lea     edx, [ecx+eax-788E097Fh]
   mov     [ebp-4Ch], edx
   mov     ecx, 20h
   sub     ecx, 0Bh
   mov     eax, [ebp-4Ch]
   shr     eax, cl
   mov     ecx, [ebp-4Ch]
   shl     ecx, 0Bh
   or      ecx, eax
   mov     [ebp-4Ch], ecx
   mov     edx, [ebp-4Ch]
   add     edx, [ebp-44h]
   mov     [ebp-4Ch], edx
   mov     eax, [ebp-4Ch]
   xor     eax, [ebp-44h]
   xor     eax, [ebp-48h]
   add     eax, [ebp-14h]
   mov     ecx, [ebp-50h]
   lea     edx, [ecx+eax+6D9D6122h]
   mov     [ebp-50h], edx
   mov     ecx, 20h
   sub     ecx, 10h
   mov     eax, [ebp-50h]
   shr     eax, cl
   mov     ecx, [ebp-50h]
   shl     ecx, 10h
   or      ecx, eax
   mov     [ebp-50h], ecx
   mov     edx, [ebp-50h]
   add     edx, [ebp-4Ch]
   mov     [ebp-50h], edx
   mov     eax, [ebp-50h]
   xor     eax, [ebp-4Ch]
   xor     eax, [ebp-44h]
   add     eax, [ebp-8]
   mov     ecx, [ebp-48h]
   lea     edx, [ecx+eax-21AC7F4h]
   mov     [ebp-48h], edx
   mov     ecx, 20h
   sub     ecx, 17h
   mov     eax, [ebp-48h]
   shr     eax, cl
   mov     ecx, [ebp-48h]
   shl     ecx, 17h
   or      ecx, eax
   mov     [ebp-48h], ecx
   mov     edx, [ebp-48h]
   add     edx, [ebp-50h]
   mov     [ebp-48h], edx
   mov     eax, [ebp-48h]
   xor     eax, [ebp-50h]
   xor     eax, [ebp-4Ch]
   add     eax, [ebp-3Ch]
   mov     ecx, [ebp-44h]
   lea     edx, [ecx+eax-5B4115BCh]
   mov     [ebp-44h], edx
   mov     ecx, 20h
   sub     ecx, 4
   mov     eax, [ebp-44h]
   shr     eax, cl
   mov     ecx, [ebp-44h]
   shl     ecx, 4
   or      ecx, eax
   mov     [ebp-44h], ecx
   mov     edx, [ebp-44h]
   add     edx, [ebp-48h]
   mov     [ebp-44h], edx
   mov     eax, [ebp-44h]
   xor     eax, [ebp-48h]
   xor     eax, [ebp-50h]
   add     eax, [ebp-30h]
   mov     ecx, [ebp-4Ch]
   lea     edx, [ecx+eax+4BDECFA9h]
   mov     [ebp-4Ch], edx
   mov     ecx, 20h
   sub     ecx, 0Bh
   mov     eax, [ebp-4Ch]
   shr     eax, cl
   mov     ecx, [ebp-4Ch]
   shl     ecx, 0Bh
   or      ecx, eax
   mov     [ebp-4Ch], ecx
   mov     edx, [ebp-4Ch]
   add     edx, [ebp-44h]
   mov     [ebp-4Ch], edx
   mov     eax, [ebp-4Ch]
   xor     eax, [ebp-44h]
   xor     eax, [ebp-48h]
   add     eax, [ebp-24h]
   mov     ecx, [ebp-50h]
   lea     edx, [ecx+eax-944B4A0h]
   mov     [ebp-50h], edx
   mov     ecx, 20h
   sub     ecx, 10h
   mov     eax, [ebp-50h]
   shr     eax, cl
   mov     ecx, [ebp-50h]
   shl     ecx, 10h
   or      ecx, eax
   mov     [ebp-50h], ecx
   mov     edx, [ebp-50h]
   add     edx, [ebp-4Ch]
   mov     [ebp-50h], edx
   mov     eax, [ebp-50h]
   xor     eax, [ebp-4Ch]
   xor     eax, [ebp-44h]
   add     eax, [ebp-18h]
   mov     ecx, [ebp-48h]
   lea     edx, [ecx+eax-41404390h]
   mov     [ebp-48h], edx
   mov     ecx, 20h
   sub     ecx, 17h
   mov     eax, [ebp-48h]
   shr     eax, cl
   mov     ecx, [ebp-48h]
   shl     ecx, 17h
   or      ecx, eax
   mov     [ebp-48h], ecx
   mov     edx, [ebp-48h]
   add     edx, [ebp-50h]
   mov     [ebp-48h], edx
   mov     eax, [ebp-48h]
   xor     eax, [ebp-50h]
   xor     eax, [ebp-4Ch]
   add     eax, [ebp-0Ch]
   mov     ecx, [ebp-44h]
   lea     edx, [ecx+eax+289B7EC6h]
   mov     [ebp-44h], edx
   mov     ecx, 20h
   sub     ecx, 4
   mov     eax, [ebp-44h]
   shr     eax, cl
   mov     ecx, [ebp-44h]
   shl     ecx, 4
   or      ecx, eax
   mov     [ebp-44h], ecx
   mov     edx, [ebp-44h]
   add     edx, [ebp-48h]
   mov     [ebp-44h], edx
   mov     eax, [ebp-44h]
   xor     eax, [ebp-48h]
   xor     eax, [ebp-50h]
   add     eax, [ebp-40h]
   mov     ecx, [ebp-4Ch]
   lea     edx, [ecx+eax-155ED806h]
   mov     [ebp-4Ch], edx
   mov     ecx, 20h
   sub     ecx, 0Bh
   mov     eax, [ebp-4Ch]
   shr     eax, cl
   mov     ecx, [ebp-4Ch]
   shl     ecx, 0Bh
   or      ecx, eax
   mov     [ebp-4Ch], ecx
   mov     edx, [ebp-4Ch]
   add     edx, [ebp-44h]
   mov     [ebp-4Ch], edx
   mov     eax, [ebp-4Ch]
   xor     eax, [ebp-44h]
   xor     eax, [ebp-48h]
   add     eax, [ebp-34h]
   mov     ecx, [ebp-50h]
   lea     edx, [ecx+eax-2B10CF7Bh]
   mov     [ebp-50h], edx
   mov     ecx, 20h
   sub     ecx, 10h
   mov     eax, [ebp-50h]
   shr     eax, cl
   mov     ecx, [ebp-50h]
   shl     ecx, 10h
   or      ecx, eax
   mov     [ebp-50h], ecx
   mov     edx, [ebp-50h]
   add     edx, [ebp-4Ch]
   mov     [ebp-50h], edx
   mov     eax, [ebp-50h]
   xor     eax, [ebp-4Ch]
   xor     eax, [ebp-44h]
   add     eax, [ebp-28h]
   mov     ecx, [ebp-48h]
   lea     edx, [ecx+eax+4881D05h]
   mov     [ebp-48h], edx
   mov     ecx, 20h
   sub     ecx, 17h
   mov     eax, [ebp-48h]
   shr     eax, cl
   mov     ecx, [ebp-48h]
   shl     ecx, 17h
   or      ecx, eax
   mov     [ebp-48h], ecx
   mov     edx, [ebp-48h]
   add     edx, [ebp-50h]
   mov     [ebp-48h], edx
   mov     eax, [ebp-48h]
   xor     eax, [ebp-50h]
   xor     eax, [ebp-4Ch]
   add     eax, [ebp-1Ch]
   mov     ecx, [ebp-44h]
   lea     edx, [ecx+eax-262B2FC7h]
   mov     [ebp-44h], edx
   mov     ecx, 20h
   sub     ecx, 4
   mov     eax, [ebp-44h]
   shr     eax, cl
   mov     ecx, [ebp-44h]
   shl     ecx, 4
   or      ecx, eax
   mov     [ebp-44h], ecx
   mov     edx, [ebp-44h]
   add     edx, [ebp-48h]
   mov     [ebp-44h], edx
   mov     eax, [ebp-44h]
   xor     eax, [ebp-48h]
   xor     eax, [ebp-50h]
   add     eax, [ebp-10h]
   mov     ecx, [ebp-4Ch]
   lea     edx, [ecx+eax-1924661Bh]
   mov     [ebp-4Ch], edx
   mov     ecx, 20h
   sub     ecx, 0Bh
   mov     eax, [ebp-4Ch]
   shr     eax, cl
   mov     ecx, [ebp-4Ch]
   shl     ecx, 0Bh
   or      ecx, eax
   mov     [ebp-4Ch], ecx
   mov     edx, [ebp-4Ch]
   add     edx, [ebp-44h]
   mov     [ebp-4Ch], edx
   mov     eax, [ebp-4Ch]
   xor     eax, [ebp-44h]
   xor     eax, [ebp-48h]
   add     eax, [ebp-4]
   mov     ecx, [ebp-50h]
   lea     edx, [ecx+eax+1FA27CF8h]
   mov     [ebp-50h], edx
   mov     ecx, 20h
   sub     ecx, 10h
   mov     eax, [ebp-50h]
   shr     eax, cl
   mov     ecx, [ebp-50h]
   shl     ecx, 10h
   or      ecx, eax
   mov     [ebp-50h], ecx
   mov     edx, [ebp-50h]
   add     edx, [ebp-4Ch]
   mov     [ebp-50h], edx
   mov     eax, [ebp-50h]
   xor     eax, [ebp-4Ch]
   xor     eax, [ebp-44h]
   add     eax, [ebp-38h]
   mov     ecx, [ebp-48h]
   lea     edx, [ecx+eax-3B53A99Bh]
   mov     [ebp-48h], edx
   mov     ecx, 20h
   sub     ecx, 17h
   mov     eax, [ebp-48h]
   shr     eax, cl
   mov     ecx, [ebp-48h]
   shl     ecx, 17h
   or      ecx, eax
   mov     [ebp-48h], ecx
   mov     edx, [ebp-48h]
   add     edx, [ebp-50h]
   mov     [ebp-48h], edx
   mov     eax, [ebp-4Ch]
   not     eax
   or      eax, [ebp-48h]
   xor     eax, [ebp-50h]
   add     eax, [ebp-40h]
   mov     ecx, [ebp-44h]
   lea     edx, [ecx+eax-0BD6DDBCh]
   mov     [ebp-44h], edx
   mov     ecx, 20h
   sub     ecx, 6
   mov     eax, [ebp-44h]
   shr     eax, cl
   mov     ecx, [ebp-44h]
   shl     ecx, 6
   or      ecx, eax
   mov     [ebp-44h], ecx
   mov     edx, [ebp-44h]
   add     edx, [ebp-48h]
   mov     [ebp-44h], edx
   mov     eax, [ebp-50h]
   not     eax
   or      eax, [ebp-44h]
   xor     eax, [ebp-48h]
   add     eax, [ebp-24h]
   mov     ecx, [ebp-4Ch]
   lea     edx, [ecx+eax+432AFF97h]
   mov     [ebp-4Ch], edx
   mov     ecx, 20h
   sub     ecx, 0Ah
   mov     eax, [ebp-4Ch]
   shr     eax, cl
   mov     ecx, [ebp-4Ch]
   shl     ecx, 0Ah
   or      ecx, eax
   mov     [ebp-4Ch], ecx
   mov     edx, [ebp-4Ch]
   add     edx, [ebp-44h]
   mov     [ebp-4Ch], edx
   mov     eax, [ebp-48h]
   not     eax
   or      eax, [ebp-4Ch]
   xor     eax, [ebp-44h]
   add     eax, [ebp-8]
   mov     ecx, [ebp-50h]
   lea     edx, [ecx+eax-546BDC59h]
   mov     [ebp-50h], edx
   mov     ecx, 20h
   sub     ecx, 0Fh
   mov     eax, [ebp-50h]
   shr     eax, cl
   mov     ecx, [ebp-50h]
   shl     ecx, 0Fh
   or      ecx, eax
   mov     [ebp-50h], ecx
   mov     edx, [ebp-50h]
   add     edx, [ebp-4Ch]
   mov     [ebp-50h], edx
   mov     eax, [ebp-44h]
   not     eax
   or      eax, [ebp-50h]
   xor     eax, [ebp-4Ch]
   add     eax, [ebp-2Ch]
   mov     ecx, [ebp-48h]
   lea     edx, [ecx+eax-36C5FC7h]
   mov     [ebp-48h], edx
   mov     ecx, 20h
   sub     ecx, 15h
   mov     eax, [ebp-48h]
   shr     eax, cl
   mov     ecx, [ebp-48h]
   shl     ecx, 15h
   or      ecx, eax
   mov     [ebp-48h], ecx
   mov     edx, [ebp-48h]
   add     edx, [ebp-50h]
   mov     [ebp-48h], edx
   mov     eax, [ebp-4Ch]
   not     eax
   or      eax, [ebp-48h]
   xor     eax, [ebp-50h]
   add     eax, [ebp-10h]
   mov     ecx, [ebp-44h]
   lea     edx, [ecx+eax+655B59C3h]
   mov     [ebp-44h], edx
   mov     ecx, 20h
   sub     ecx, 6
   mov     eax, [ebp-44h]
   shr     eax, cl
   mov     ecx, [ebp-44h]
   shl     ecx, 6
   or      ecx, eax
   mov     [ebp-44h], ecx
   mov     edx, [ebp-44h]
   add     edx, [ebp-48h]
   mov     [ebp-44h], edx
   mov     eax, [ebp-50h]
   not     eax
   or      eax, [ebp-44h]
   xor     eax, [ebp-48h]
   add     eax, [ebp-34h]
   mov     ecx, [ebp-4Ch]
   lea     edx, [ecx+eax-70F3336Eh]
   mov     [ebp-4Ch], edx
   mov     ecx, 20h
   sub     ecx, 0Ah
   mov     eax, [ebp-4Ch]
   shr     eax, cl
   mov     ecx, [ebp-4Ch]
   shl     ecx, 0Ah
   or      ecx, eax
   mov     [ebp-4Ch], ecx
   mov     edx, [ebp-4Ch]
   add     edx, [ebp-44h]
   mov     [ebp-4Ch], edx
   mov     eax, [ebp-48h]
   not     eax
   or      eax, [ebp-4Ch]
   xor     eax, [ebp-44h]
   add     eax, [ebp-18h]
   mov     ecx, [ebp-50h]
   lea     edx, [ecx+eax-100B83h]
   mov     [ebp-50h], edx
   mov     ecx, 20h
   sub     ecx, 0Fh
   mov     eax, [ebp-50h]
   shr     eax, cl
   mov     ecx, [ebp-50h]
   shl     ecx, 0Fh
   or      ecx, eax
   mov     [ebp-50h], ecx
   mov     edx, [ebp-50h]
   add     edx, [ebp-4Ch]
   mov     [ebp-50h], edx
   mov     eax, [ebp-44h]
   not     eax
   or      eax, [ebp-50h]
   xor     eax, [ebp-4Ch]
   add     eax, [ebp-3Ch]
   mov     ecx, [ebp-48h]
   lea     edx, [ecx+eax-7A7BA22Fh]
   mov     [ebp-48h], edx
   mov     ecx, 20h
   sub     ecx, 15h
   mov     eax, [ebp-48h]
   shr     eax, cl
   mov     ecx, [ebp-48h]
   shl     ecx, 15h
   or      ecx, eax
   mov     [ebp-48h], ecx
   mov     edx, [ebp-48h]
   add     edx, [ebp-50h]
   mov     [ebp-48h], edx
   push    6FA87E4Fh
   push    6
   mov     eax, [ebp-20h]
   push    eax
   mov     ecx, [ebp-4Ch]
   push    ecx
   mov     edx, [ebp-50h]
   push    edx
   mov     eax, [ebp-48h]
   push    eax
   lea     ecx, [ebp-44h]
   push    ecx
   mov     ecx, [ebp-54h]
   call    _sub_401000
   push    0FE2CE6E0h
   push    0Ah
   mov     edx, [ebp-4]
   push    edx
   mov     eax, [ebp-50h]
   push    eax
   mov     ecx, [ebp-48h]
   push    ecx
   mov     edx, [ebp-44h]
   push    edx
   lea     eax, [ebp-4Ch]
   push    eax
   mov     ecx, [ebp-54h]
   call    _sub_401000
   push    0A3014314h
   push    0Fh
   mov     ecx, [ebp-28h]
   push    ecx
   mov     edx, [ebp-48h]
   push    edx
   mov     eax, [ebp-44h]
   push    eax
   mov     ecx, [ebp-4Ch]
   push    ecx
   lea     edx, [ebp-50h]
   push    edx
   mov     ecx, [ebp-54h]
   call    _sub_401000
   push    4E0811A1h
   push    15h
   mov     eax, [ebp-0Ch]
   push    eax
   mov     ecx, [ebp-44h]
   push    ecx
   mov     edx, [ebp-4Ch]
   push    edx
   mov     eax, [ebp-50h]
   push    eax
   lea     ecx, [ebp-48h]
   push    ecx
   mov     ecx, [ebp-54h]
   call    _sub_401000
   push    0F7537E82h
   push    6
   mov     edx, [ebp-30h]
   push    edx
   mov     eax, [ebp-4Ch]
   push    eax
   mov     ecx, [ebp-50h]
   push    ecx
   mov     edx, [ebp-48h]
   push    edx
   lea     eax, [ebp-44h]
   push    eax
   mov     ecx, [ebp-54h]
   call    _sub_401000
   push    0BD3AF235h
   push    0Ah
   mov     ecx, [ebp-14h]
   push    ecx
   mov     edx, [ebp-50h]
   push    edx
   mov     eax, [ebp-48h]
   push    eax
   mov     ecx, [ebp-44h]
   push    ecx
   lea     edx, [ebp-4Ch]
   push    edx
   mov     ecx, [ebp-54h]
   call    _sub_401000
   push    2AD7D2BBh
   push    0Fh
   mov     eax, [ebp-38h]
   push    eax
   mov     ecx, [ebp-48h]
   push    ecx
   mov     edx, [ebp-44h]
   push    edx
   mov     eax, [ebp-4Ch]
   push    eax
   lea     ecx, [ebp-50h]
   push    ecx
   mov     ecx, [ebp-54h]
   call    _sub_401000
   push    0EB86D391h
   push    15h
   mov     edx, [ebp-1Ch]
   push    edx
   mov     eax, [ebp-44h]
   push    eax
   mov     ecx, [ebp-4Ch]
   push    ecx
   mov     edx, [ebp-50h]
   push    edx
   lea     eax, [ebp-48h]
   push    eax
   mov     ecx, [ebp-54h]
   call    _sub_401000
   mov     ecx, [ebp-54h]
   mov     edx, [ecx]
   add     edx, [ebp-44h]
   mov     eax, [ebp-54h]
   mov     [eax], edx
   mov     ecx, [ebp-54h]
   mov     edx, [ecx+4]
   add     edx, [ebp-48h]
   mov     eax, [ebp-54h]
   mov     [eax+4], edx
   mov     ecx, [ebp-54h]
   mov     edx, [ecx+8]
   add     edx, [ebp-50h]
   mov     eax, [ebp-54h]
   mov     [eax+8], edx
   mov     ecx, [ebp-54h]
   mov     edx, [ecx+0Ch]
   add     edx, [ebp-4Ch]
   mov     eax, [ebp-54h]
   mov     [eax+0Ch], edx
   push    40h
   push    0
   lea     ecx, [ebp-40h]
   push    ecx
   call    memset
   add     esp, 0Ch
   mov     esp, ebp
   pop     ebp
   retn    4
_sub_40D0E0:
   push    ebp
   mov     ebp, esp
   sub     esp, 1Ch
   mov     eax, [dword_411004]
   xor     eax, ebp
   mov     [ebp-8], eax
   mov     [ebp-18h], ecx
   push    8
   mov     eax, [ebp-18h]
   add     eax, 10h
   push    eax
   lea     ecx, [ebp-10h]
   push    ecx
   mov     ecx, [ebp-18h]
   call    _sub_40BEF0
   mov     edx, [ebp-18h]
   mov     eax, [edx+10h]
   shr     eax, 3
   and     eax, 3Fh
   mov     [ebp-4], eax
   cmp     dword [ebp-4], 38h
   jnb     loc_40D12A
   mov     ecx, 38h
   sub     ecx, [ebp-4]
   mov     [ebp-1Ch], ecx
   jmp     loc_40D135
loc_40D12A:
   mov     edx, 78h
   sub     edx, [ebp-4]
   mov     [ebp-1Ch], edx
loc_40D135:
   mov     eax, [ebp-1Ch]
   mov     [ebp-14h], eax
   mov     ecx, [ebp-14h]
   push    ecx
   push    unk_4120A0
   mov     ecx, [ebp-18h]
   call    _sub_40CFE0
   push    8
   lea     edx, [ebp-10h]
   push    edx
   mov     ecx, [ebp-18h]
   call    _sub_40CFE0
   push    10h
   mov     eax, [ebp-18h]
   push    eax
   mov     ecx, [ebp-18h]
   add     ecx, 58h
   push    ecx
   mov     ecx, [ebp-18h]
   call    _sub_40BEF0
   push    8
   push    0
   mov     edx, [ebp-18h]
   add     edx, 10h
   push    edx
   call    memset
   add     esp, 0Ch
   push    10h
   push    0
   mov     eax, [ebp-18h]
   push    eax
   call    memset
   add     esp, 0Ch
   push    40h
   push    0
   mov     ecx, [ebp-18h]
   add     ecx, 18h
   push    ecx
   call    memset
   add     esp, 0Ch
   mov     ecx, [ebp-8]
   xor     ecx, ebp
   call    _sub_4029D8
   mov     esp, ebp
   pop     ebp
   retn    
_interesting_hash_stuff:
   push    ebp
   mov     ebp, esp
   sub     esp, 110h
   mov     eax, [dword_411004]
   xor     eax, ebp
   mov     [ebp-0Ch], eax
   push    0FFh
   push    0
   lea     eax, [ebp-110h]
   push    eax
   call    memset
   add     esp, 0Ch
   mov     dword [ebp-4], 0
   mov     dword [ebp-8], 0
   mov     dword [ebp-8], 0
   jmp     loc_40BB99
loc_40BB90:
   mov     ecx, [ebp-8]
   add     ecx, 1
   mov     [ebp-8], ecx
loc_40BB99:
   mov     edx, [ebp+8]
   push    edx
   call    strlen
   add     esp, 4
   cmp     [ebp-8], eax
   jnb     loc_40BBBB
   mov     eax, [ebp+8]
   add     eax, [ebp-8]
   movsx   ecx, byte [eax]
   add     ecx, [ebp-4]
   mov     [ebp-4], ecx
   jmp     loc_40BB90
loc_40BBBB:
   mov     edx, 0FFh
   sub     edx, [ebp-4]
   mov     [ebp-4], edx
   mov     eax, [ebp-4]
   imul    eax, 0x133729
   mov     [ebp-4], eax
   mov     ecx, [ebp-4]
   imul    ecx, 0x3122
   mov     [ebp-4], ecx
   mov     edx, [ebp+8]
   push    edx
   call    strlen
   add     esp, 4
   cmp     eax, 2
   jbe     loc_40BC0A
   mov     eax, [ebp+8]
   movsx   ecx, byte [eax]
   imul    ecx, 0x0a
   mov     edx, [ebp+8]
   movsx   eax, byte [edx+1]
   imul    eax, 0x64
   add     eax, [ebp-4]
   add     eax, ecx
   mov     [ebp-4], eax
loc_40BC0A:
   mov     ecx, [ebp-4]
   push    ecx
   push    aGrnX
   lea     edx, [ebp-110h]
   push    edx
   call    sprintf
   add     esp, 0Ch
   lea     eax, [ebp-110h]
   push    eax
   call    _hash_function
   add     esp, 4
   push    eax
   call    _string_to_upper
   ; add     esp, 4
   ; push    eax
   ; mov     ecx, [ebp+0Ch]
   ; push    ecx
   ; call    strcmp
   ; add     esp, 8
   ; neg     eax
   ; sbb     eax, eax
   ; add     eax, 1
   ; mov     ecx, [ebp-0Ch]
   ; xor     ecx, ebp
   ; call    _sub_4029D8
   mov     esp, ebp
   pop     ebp
   retn    
_sub_4029D8:
   ; cmp     ecx, [dword_411004]
   ; jnz     loc_4029E2
   rep retn
; loc_4029E2:
;    jmp     ___report_gsfailure
_sub_40BE70:
   push    ebp
   mov     ebp, esp
   sub     esp, 0Ch
   mov     [ebp-0Ch], ecx
   mov     dword [ebp-4], 0
   mov     dword [ebp-8], 0
   jmp     loc_40BE9B
loc_40BE89:
   mov     eax, [ebp-4]
   add     eax, 1
   mov     [ebp-4], eax
   mov     ecx, [ebp-8]
   add     ecx, 4
   mov     [ebp-8], ecx
loc_40BE9B:
   mov     edx, [ebp-8]
   cmp     edx, [ebp+10h]
   jnb     loc_40BEE4
   mov     eax, [ebp+0Ch]
   add     eax, [ebp-8]
   movzx   ecx, byte [eax]
   mov     edx, [ebp+0Ch]
   add     edx, [ebp-8]
   movzx   eax, byte [edx+1]
   shl     eax, 8
   or      ecx, eax
   mov     edx, [ebp+0Ch]
   add     edx, [ebp-8]
   movzx   eax, byte [edx+2]
   shl     eax, 10h
   or      ecx, eax
   mov     edx, [ebp+0Ch]
   add     edx, [ebp-8]
   movzx   eax, byte [edx+3]
   shl     eax, 18h
   or      ecx, eax
   mov     edx, [ebp-4]
   mov     eax, [ebp+8]
   mov     [eax+edx*4], ecx
   jmp     loc_40BE89
loc_40BEE4:
   mov     esp, ebp
   pop     ebp
   retn    0Ch
_sub_40BEF0:
   push    ebp
   mov     ebp, esp
   sub     esp, 0Ch
   mov     [ebp-0Ch], ecx
   mov     dword [ebp-4], 0
   mov     dword [ebp-8], 0
   jmp     loc_40BF1B
loc_40BF09:
   mov     eax, [ebp-4]
   add     eax, 1
   mov     [ebp-4], eax
   mov     ecx, [ebp-8]
   add     ecx, 4
   mov     [ebp-8], ecx
loc_40BF1B:
   mov     edx, [ebp-8]
   cmp     edx, [ebp+10h]
   jnb     loc_40BF8F
   mov     eax, [ebp-4]
   mov     ecx, [ebp+0Ch]
   mov     edx, [ecx+eax*4]
   and     edx, 0FFh
   mov     eax, [ebp+8]
   add     eax, [ebp-8]
   mov     [eax], dl
   mov     ecx, [ebp-4]
   mov     edx, [ebp+0Ch]
   mov     eax, [edx+ecx*4]
   shr     eax, 8
   and     eax, 0FFh
   mov     ecx, [ebp+8]
   add     ecx, [ebp-8]
   mov     [ecx+1], al
   mov     edx, [ebp-4]
   mov     eax, [ebp+0Ch]
   mov     ecx, [eax+edx*4]
   shr     ecx, 10h
   and     ecx, 0FFh
   mov     edx, [ebp+8]
   add     edx, [ebp-8]
   mov     [edx+2], cl
   mov     eax, [ebp-4]
   mov     ecx, [ebp+0Ch]
   mov     edx, [ecx+eax*4]
   shr     edx, 18h
   and     edx, 0FFh
   mov     eax, [ebp+8]
   add     eax, [ebp-8]
   mov     [eax+3], dl
   jmp     loc_40BF09
loc_40BF8F:
   mov     esp, ebp
   pop     ebp
   retn    0Ch

section .data
   dword_411004: dd 0x0BB40E64E
   unk_4120A0: dd 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 ; <--- THIS
   a02x: db '%02x', 0x0
   aGrnX: db 'gRn-%X', 0x0