%include "pm.inc"

org     07c00h
        jmp         LABEL_BEGIN

    

[SECTION .gdt] ; a section, save the gdt

;                               base ,  limit,    attr
LABEL_GDT:          Descriptor      0,      0,      0
LABEL_DESC_NORMAL:  Descriptor      0, 0ffffh, DA_DRW
LABEL_DESC_CODE32:  Descriptor      0, SegCodeLen32 - 1, DA_C + DA_32
LABEL_DESC_CODE16:  Descriptor      0, 0ffffh, DA_C
LABEL_DESC_DATA:    Descriptor      0, DataLen - 1, DA_DRW + DA_DPL1
LABEL_DESC_STACK:   Descriptor      0, TopOfStack, DA_DRWA + DA_32
LABEL_DESC_LDT:     Descriptor      0, LDTLen - 1, DA_LDT 
LABEL_DESC_VIDEO:   Descriptor      0B8000h, 0ffffh, DA_DRW 
; END GDT
; ATTR
GdtLen      equ $ - LABEL_GDT
GdtPtr      dw  GdtLen - 1
    dd  0
; END ATTR
; SELECTORS [Actually Index]
SelectorNormal      equ  LABEL_DESC_NORMAL  - LABEL_GDT
SelectorCode32      equ  LABEL_DESC_CODE32  - LABEL_GDT
SelectorCode16      equ  LABEL_DESC_CODE16  - LABEL_GDT
SelectorData        equ  LABEL_DESC_DATA    - LABEL_GDT
SelectorStack       equ  LABEL_DESC_STACK   - LABEL_GDT
SelectorLDT         equ  LABEL_DESC_LDT     - LABEL_GDT
SelectorVideo       equ  LABEL_DESC_VIDEO   - LABEL_GDT

; END SECTION .gdt

[SECTION .data1]
ALIGN   32
[BITS 32]

LABEL_DATA:
SPValueInRealMode   dw  0

Message: db "In PROTECT MODE now. QAQ", 0
OffsetMessage   equ     Message - $$ ; initial position based this Section
; Maybe Str Test is not needed
DataLen     equ     $ - LABEL_DATA

; END SECTION .data1

[SECTION .gs]
ALIGN  32
[BITS  32]
LABEL_STACK:
  times 512 db 0

TopOfStack  equ  $ - LABEL_STACK - 1

; END SECTION gs

[SECTION .s16]










