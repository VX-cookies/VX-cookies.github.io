; Anti Virtual Machine (VMXh)
;
; Indicator :
; - 564D5868h (Hex) -> VMXh (ASCII)
; - ED
;
; .text:100061DB ED                      in      eax, dx
; .text:100061DC 81 FB 68 58 4D 56       cmp     ebx, 'VMXh'
 

.text:100061C0                         ;   __try { // __except at loc_100061EF
.text:100061C0 83 65 FC 00             and     [ebp+ms_exc.registration.TryLevel], 0
.text:100061C4 52                      push    edx
.text:100061C5 51                      push    ecx
.text:100061C6 53                      push    ebx
.text:100061C7 B8 68 58 4D 56          mov     eax, 564D5868h ; 'VMXh'
.text:100061CC BB 00 00 00 00          mov     ebx, 0
.text:100061D1 B9 0A 00 00 00          mov     ecx, 0Ah
.text:100061D6 BA 58 56 00 00          mov     edx, 5658h
.text:100061DB ED                      in      eax, dx
.text:100061DC 81 FB 68 58 4D 56       cmp     ebx, 'VMXh' ; 564D5868h
.text:100061E2 0F 94 45 E4             setz    [ebp+var_1C]
.text:100061E6 5B                      pop     ebx
.text:100061E7 59                      pop     ecx
.text:100061E8 5A                      pop     edx
.text:100061E9 EB 0B                   jmp     short loc_100061F6
