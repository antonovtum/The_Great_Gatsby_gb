;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.6 #12539 (MINGW32)
;--------------------------------------------------------
	.module gatsby33
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _page_948
	.globl _page_947
	.globl _page_946
	.globl b___func_gatsby_948
	.globl ___func_gatsby_948
	.globl b___func_gatsby_947
	.globl ___func_gatsby_947
	.globl b___func_gatsby_946
	.globl ___func_gatsby_946
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE_255
;res/gatsby33.c:6: BANKREF(gatsby_946)
;	---------------------------------
; Function __func_gatsby_946
; ---------------------------------
	b___func_gatsby_946	= 255
___func_gatsby_946::
	.local b___func_gatsby_946 
	___bank_gatsby_946 = b___func_gatsby_946 
	.globl ___bank_gatsby_946 
;res/gatsby33.c:30: BANKREF(gatsby_947)
;	---------------------------------
; Function __func_gatsby_947
; ---------------------------------
	b___func_gatsby_947	= 255
___func_gatsby_947::
	.local b___func_gatsby_947 
	___bank_gatsby_947 = b___func_gatsby_947 
	.globl ___bank_gatsby_947 
;res/gatsby33.c:54: BANKREF(gatsby_948)
;	---------------------------------
; Function __func_gatsby_948
; ---------------------------------
	b___func_gatsby_948	= 255
___func_gatsby_948::
	.local b___func_gatsby_948 
	___bank_gatsby_948 = b___func_gatsby_948 
	.globl ___bank_gatsby_948 
	.area _CODE_255
_page_946:
	.byte _page_945, (_page_945 >> 8)
	.byte ___bank_gatsby_945, (___bank_gatsby_945 >> 8)
	.byte _page_947, (_page_947 >> 8)
	.byte ___bank_gatsby_947, (___bank_gatsby_947 >> 8)
	.db #0x4e	; 78	'N'
	.db #0x45	; 69	'E'
	.db #0x49	; 73	'I'
	.db #0x54	; 84	'T'
	.db #0x48	; 72	'H'
	.db #0x45	; 69	'E'
	.db #0x52	; 82	'R'
	.db #0x00	; 0
	.db #0x55	; 85	'U'
	.db #0x4e	; 78	'N'
	.db #0x44	; 68	'D'
	.db #0x45	; 69	'E'
	.db #0x52	; 82	'R'
	.db #0x53	; 83	'S'
	.db #0x54	; 84	'T'
	.db #0x4f	; 79	'O'
	.db #0x4f	; 79	'O'
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x4e	; 78	'N'
	.db #0x4f	; 79	'O'
	.db #0x52	; 82	'R'
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x45	; 69	'E'
	.db #0x53	; 83	'S'
	.db #0x49	; 73	'I'
	.db #0x52	; 82	'R'
	.db #0x45	; 69	'E'
	.db #0x44	; 68	'D'
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x46	; 70	'F'
	.db #0x41	; 65	'A'
	.db #0x43	; 67	'C'
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x4f	; 79	'O'
	.db #0x46	; 70	'F'
	.db #0x41	; 65	'A'
	.db #0x43	; 67	'C'
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x46	; 70	'F'
	.db #0x4f	; 79	'O'
	.db #0x52	; 82	'R'
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x48	; 72	'H'
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x4c	; 76	'L'
	.db #0x41	; 65	'A'
	.db #0x53	; 83	'S'
	.db #0x54	; 84	'T'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x49	; 73	'I'
	.db #0x4d	; 77	'M'
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x49	; 73	'I'
	.db #0x4e	; 78	'N'
	.db #0x00	; 0
	.db #0x48	; 72	'H'
	.db #0x49	; 73	'I'
	.db #0x53	; 83	'S'
	.db #0x54	; 84	'T'
	.db #0x4f	; 79	'O'
	.db #0x52	; 82	'R'
	.db #0x59	; 89	'Y'
	.db #0x00	; 0
	.db #0x57	; 87	'W'
	.db #0x49	; 73	'I'
	.db #0x54	; 84	'T'
	.db #0x48	; 72	'H'
	.db #0x53	; 83	'S'
	.db #0x4f	; 79	'O'
	.db #0x4d	; 77	'M'
	.db #0x45	; 69	'E'
	.db #0x54	; 84	'T'
	.db #0x48	; 72	'H'
	.db #0x49	; 73	'I'
	.db #0x4e	; 78	'N'
	.db #0x47	; 71	'G'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x43	; 67	'C'
	.db #0x4f	; 79	'O'
	.db #0x4d	; 77	'M'
	.db #0x4d	; 77	'M'
	.db #0x45	; 69	'E'
	.db #0x4e	; 78	'N'
	.db #0x53	; 83	'S'
	.db #0x55	; 85	'U'
	.db #0x52	; 82	'R'
	.db #0x41	; 65	'A'
	.db #0x54	; 84	'T'
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x4f	; 79	'O'
	.db #0x00	; 0
	.db #0x48	; 72	'H'
	.db #0x49	; 73	'I'
	.db #0x53	; 83	'S'
	.db #0x00	; 0
	.db #0x43	; 67	'C'
	.db #0x41	; 65	'A'
	.db #0x50	; 80	'P'
	.db #0x41	; 65	'A'
	.db #0x43	; 67	'C'
	.db #0x49	; 73	'I'
	.db #0x54	; 84	'T'
	.db #0x59	; 89	'Y'
	.db #0x00	; 0
	.db #0x46	; 70	'F'
	.db #0x4f	; 79	'O'
	.db #0x52	; 82	'R'
	.db #0x00	; 0
	.db #0x57	; 87	'W'
	.db #0x4f	; 79	'O'
	.db #0x4e	; 78	'N'
	.db #0x44	; 68	'D'
	.db #0x45	; 69	'E'
	.db #0x52	; 82	'R'
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x4e	; 78	'N'
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x53	; 83	'S'
	.db #0x00	; 0
	.db #0x29	; 41
	.db #0x00	; 0
	.db #0x53	; 83	'S'
	.db #0x41	; 65	'A'
	.db #0x54	; 84	'T'
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x48	; 72	'H'
	.db #0x45	; 69	'E'
	.db #0x52	; 82	'R'
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x52	; 82	'R'
	.db #0x4f	; 79	'O'
	.db #0x4f	; 79	'O'
	.db #0x44	; 68	'D'
	.db #0x49	; 73	'I'
	.db #0x4e	; 78	'N'
	.db #0x47	; 71	'G'
	.db #0x00	; 0
	.db #0x4f	; 79	'O'
	.db #0x4e	; 78	'N'
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x48	; 72	'H'
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x4f	; 79	'O'
	.db #0x4c	; 76	'L'
	.db #0x44	; 68	'D'
	.db #0x0c	; 12
	.db #0x55	; 85	'U'
	.db #0x4e	; 78	'N'
	.db #0x4b	; 75	'K'
	.db #0x4e	; 78	'N'
	.db #0x4f	; 79	'O'
	.db #0x57	; 87	'W'
	.db #0x4e	; 78	'N'
	.db #0x00	; 0
	.db #0x57	; 87	'W'
	.db #0x4f	; 79	'O'
	.db #0x52	; 82	'R'
	.db #0x4c	; 76	'L'
	.db #0x44	; 68	'D'
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x29	; 41
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x48	; 72	'H'
	.db #0x4f	; 79	'O'
	.db #0x55	; 85	'U'
	.db #0x47	; 71	'G'
	.db #0x48	; 72	'H'
	.db #0x54	; 84	'T'
	.db #0x00	; 0
	.db #0x4f	; 79	'O'
	.db #0x46	; 70	'F'
	.db #0x00	; 0
	.db #0x27	; 39
	.db #0x41	; 65	'A'
	.db #0x54	; 84	'T'
	.db #0x53	; 83	'S'
	.db #0x42	; 66	'B'
	.db #0x59	; 89	'Y'
	.db #0x07	; 7
	.db #0x53	; 83	'S'
	.db #0x00	; 0
	.db #0x57	; 87	'W'
	.db #0x4f	; 79	'O'
	.db #0x4e	; 78	'N'
	.db #0x44	; 68	'D'
	.db #0x45	; 69	'E'
	.db #0x52	; 82	'R'
	.db #0x00	; 0
	.db #0x57	; 87	'W'
	.db #0x48	; 72	'H'
	.db #0x45	; 69	'E'
	.db #0x4e	; 78	'N'
	.db #0x00	; 0
	.db #0x48	; 72	'H'
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x46	; 70	'F'
	.db #0x49	; 73	'I'
	.db #0x52	; 82	'R'
	.db #0x53	; 83	'S'
	.db #0x54	; 84	'T'
	.db #0x50	; 80	'P'
	.db #0x49	; 73	'I'
	.db #0x43	; 67	'C'
	.db #0x4b	; 75	'K'
	.db #0x45	; 69	'E'
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x4f	; 79	'O'
	.db #0x55	; 85	'U'
	.db #0x54	; 84	'T'
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x48	; 72	'H'
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x47	; 71	'G'
	.db #0x52	; 82	'R'
	.db #0x45	; 69	'E'
	.db #0x45	; 69	'E'
	.db #0x4e	; 78	'N'
	.db #0x4c	; 76	'L'
	.db #0x49	; 73	'I'
	.db #0x47	; 71	'G'
	.db #0x48	; 72	'H'
	.db #0x54	; 84	'T'
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x54	; 84	'T'
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x48	; 72	'H'
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x45	; 69	'E'
	.db #0x4e	; 78	'N'
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x4f	; 79	'O'
	.db #0x46	; 70	'F'
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x41	; 65	'A'
	.db #0x49	; 73	'I'
	.db #0x53	; 83	'S'
	.db #0x59	; 89	'Y'
	.db #0x07	; 7
	.db #0x53	; 83	'S'
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x4f	; 79	'O'
	.db #0x43	; 67	'C'
	.db #0x4b	; 75	'K'
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x48	; 72	'H'
	.db #0x41	; 65	'A'
	.db #0x44	; 68	'D'
	.db #0x43	; 67	'C'
	.db #0x4f	; 79	'O'
	.db #0x4d	; 77	'M'
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x4c	; 76	'L'
	.db #0x4f	; 79	'O'
	.db #0x4e	; 78	'N'
	.db #0x47	; 71	'G'
	.db #0x00	; 0
	.db #0x57	; 87	'W'
	.db #0x41	; 65	'A'
	.db #0x59	; 89	'Y'
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x4f	; 79	'O'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x48	; 72	'H'
	.db #0x49	; 73	'I'
	.db #0x53	; 83	'S'
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x4c	; 76	'L'
	.db #0x55	; 85	'U'
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x4c	; 76	'L'
	.db #0x41	; 65	'A'
	.db #0x57	; 87	'W'
	.db #0x4e	; 78	'N'
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x4e	; 78	'N'
	.db #0x44	; 68	'D'
	.db #0x00	; 0
_page_947:
	.byte _page_946, (_page_946 >> 8)
	.byte ___bank_gatsby_946, (___bank_gatsby_946 >> 8)
	.byte _page_948, (_page_948 >> 8)
	.byte ___bank_gatsby_948, (___bank_gatsby_948 >> 8)
	.db #0x48	; 72	'H'
	.db #0x49	; 73	'I'
	.db #0x53	; 83	'S'
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x52	; 82	'R'
	.db #0x45	; 69	'E'
	.db #0x41	; 65	'A'
	.db #0x4d	; 77	'M'
	.db #0x00	; 0
	.db #0x4d	; 77	'M'
	.db #0x55	; 85	'U'
	.db #0x53	; 83	'S'
	.db #0x54	; 84	'T'
	.db #0x00	; 0
	.db #0x48	; 72	'H'
	.db #0x41	; 65	'A'
	.db #0x56	; 86	'V'
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x53	; 83	'S'
	.db #0x45	; 69	'E'
	.db #0x45	; 69	'E'
	.db #0x4d	; 77	'M'
	.db #0x45	; 69	'E'
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x53	; 83	'S'
	.db #0x4f	; 79	'O'
	.db #0x00	; 0
	.db #0x43	; 67	'C'
	.db #0x4c	; 76	'L'
	.db #0x4f	; 79	'O'
	.db #0x53	; 83	'S'
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x48	; 72	'H'
	.db #0x41	; 65	'A'
	.db #0x54	; 84	'T'
	.db #0x48	; 72	'H'
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x43	; 67	'C'
	.db #0x4f	; 79	'O'
	.db #0x55	; 85	'U'
	.db #0x4c	; 76	'L'
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x48	; 72	'H'
	.db #0x41	; 65	'A'
	.db #0x52	; 82	'R'
	.db #0x44	; 68	'D'
	.db #0x4c	; 76	'L'
	.db #0x59	; 89	'Y'
	.db #0x00	; 0
	.db #0x46	; 70	'F'
	.db #0x41	; 65	'A'
	.db #0x49	; 73	'I'
	.db #0x4c	; 76	'L'
	.db #0x54	; 84	'T'
	.db #0x4f	; 79	'O'
	.db #0x00	; 0
	.db #0x47	; 71	'G'
	.db #0x52	; 82	'R'
	.db #0x41	; 65	'A'
	.db #0x53	; 83	'S'
	.db #0x50	; 80	'P'
	.db #0x00	; 0
	.db #0x49	; 73	'I'
	.db #0x54	; 84	'T'
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x49	; 73	'I'
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x4e	; 78	'N'
	.db #0x4f	; 79	'O'
	.db #0x54	; 84	'T'
	.db #0x00	; 0
	.db #0x4b	; 75	'K'
	.db #0x4e	; 78	'N'
	.db #0x4f	; 79	'O'
	.db #0x57	; 87	'W'
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x48	; 72	'H'
	.db #0x41	; 65	'A'
	.db #0x54	; 84	'T'
	.db #0x00	; 0
	.db #0x49	; 73	'I'
	.db #0x54	; 84	'T'
	.db #0x00	; 0
	.db #0x57	; 87	'W'
	.db #0x41	; 65	'A'
	.db #0x53	; 83	'S'
	.db #0x41	; 65	'A'
	.db #0x4c	; 76	'L'
	.db #0x52	; 82	'R'
	.db #0x45	; 69	'E'
	.db #0x41	; 65	'A'
	.db #0x44	; 68	'D'
	.db #0x59	; 89	'Y'
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x45	; 69	'E'
	.db #0x48	; 72	'H'
	.db #0x49	; 73	'I'
	.db #0x4e	; 78	'N'
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x48	; 72	'H'
	.db #0x49	; 73	'I'
	.db #0x4d	; 77	'M'
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x53	; 83	'S'
	.db #0x4f	; 79	'O'
	.db #0x4d	; 77	'M'
	.db #0x45	; 69	'E'
	.db #0x57	; 87	'W'
	.db #0x48	; 72	'H'
	.db #0x45	; 69	'E'
	.db #0x52	; 82	'R'
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x41	; 65	'A'
	.db #0x43	; 67	'C'
	.db #0x4b	; 75	'K'
	.db #0x00	; 0
	.db #0x49	; 73	'I'
	.db #0x4e	; 78	'N'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x48	; 72	'H'
	.db #0x41	; 65	'A'
	.db #0x54	; 84	'T'
	.db #0x00	; 0
	.db #0x56	; 86	'V'
	.db #0x41	; 65	'A'
	.db #0x53	; 83	'S'
	.db #0x54	; 84	'T'
	.db #0x00	; 0
	.db #0x4f	; 79	'O'
	.db #0x42	; 66	'B'
	.db #0x53	; 83	'S'
	.db #0x43	; 67	'C'
	.db #0x55	; 85	'U'
	.db #0x52	; 82	'R'
	.db #0x49	; 73	'I'
	.db #0x54	; 84	'T'
	.db #0x59	; 89	'Y'
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x45	; 69	'E'
	.db #0x59	; 89	'Y'
	.db #0x4f	; 79	'O'
	.db #0x4e	; 78	'N'
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x48	; 72	'H'
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x43	; 67	'C'
	.db #0x49	; 73	'I'
	.db #0x54	; 84	'T'
	.db #0x59	; 89	'Y'
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x57	; 87	'W'
	.db #0x48	; 72	'H'
	.db #0x45	; 69	'E'
	.db #0x52	; 82	'R'
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x48	; 72	'H'
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x41	; 65	'A'
	.db #0x52	; 82	'R'
	.db #0x4b	; 75	'K'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x46	; 70	'F'
	.db #0x49	; 73	'I'
	.db #0x45	; 69	'E'
	.db #0x4c	; 76	'L'
	.db #0x44	; 68	'D'
	.db #0x53	; 83	'S'
	.db #0x00	; 0
	.db #0x4f	; 79	'O'
	.db #0x46	; 70	'F'
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x48	; 72	'H'
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x52	; 82	'R'
	.db #0x45	; 69	'E'
	.db #0x50	; 80	'P'
	.db #0x55	; 85	'U'
	.db #0x42	; 66	'B'
	.db #0x4c	; 76	'L'
	.db #0x49	; 73	'I'
	.db #0x43	; 67	'C'
	.db #0x00	; 0
	.db #0x52	; 82	'R'
	.db #0x4f	; 79	'O'
	.db #0x4c	; 76	'L'
	.db #0x4c	; 76	'L'
	.db #0x45	; 69	'E'
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x4f	; 79	'O'
	.db #0x4e	; 78	'N'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x55	; 85	'U'
	.db #0x4e	; 78	'N'
	.db #0x44	; 68	'D'
	.db #0x45	; 69	'E'
	.db #0x52	; 82	'R'
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x48	; 72	'H'
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x4e	; 78	'N'
	.db #0x49	; 73	'I'
	.db #0x47	; 71	'G'
	.db #0x48	; 72	'H'
	.db #0x54	; 84	'T'
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x27	; 39
	.db #0x41	; 65	'A'
	.db #0x54	; 84	'T'
	.db #0x53	; 83	'S'
	.db #0x42	; 66	'B'
	.db #0x59	; 89	'Y'
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x45	; 69	'E'
	.db #0x4c	; 76	'L'
	.db #0x49	; 73	'I'
	.db #0x45	; 69	'E'
	.db #0x56	; 86	'V'
	.db #0x45	; 69	'E'
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x49	; 73	'I'
	.db #0x4e	; 78	'N'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x48	; 72	'H'
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x47	; 71	'G'
	.db #0x52	; 82	'R'
	.db #0x45	; 69	'E'
	.db #0x45	; 69	'E'
	.db #0x4e	; 78	'N'
	.db #0x00	; 0
	.db #0x4c	; 76	'L'
	.db #0x49	; 73	'I'
	.db #0x47	; 71	'G'
	.db #0x48	; 72	'H'
	.db #0x54	; 84	'T'
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x48	; 72	'H'
	.db #0x45	; 69	'E'
	.db #0x4f	; 79	'O'
	.db #0x52	; 82	'R'
	.db #0x47	; 71	'G'
	.db #0x41	; 65	'A'
	.db #0x53	; 83	'S'
	.db #0x54	; 84	'T'
	.db #0x49	; 73	'I'
	.db #0x43	; 67	'C'
	.db #0x00	; 0
	.db #0x46	; 70	'F'
	.db #0x55	; 85	'U'
	.db #0x54	; 84	'T'
	.db #0x55	; 85	'U'
	.db #0x52	; 82	'R'
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x48	; 72	'H'
	.db #0x41	; 65	'A'
	.db #0x54	; 84	'T'
	.db #0x59	; 89	'Y'
	.db #0x45	; 69	'E'
	.db #0x41	; 65	'A'
	.db #0x52	; 82	'R'
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x59	; 89	'Y'
	.db #0x00	; 0
	.db #0x59	; 89	'Y'
	.db #0x45	; 69	'E'
	.db #0x41	; 65	'A'
	.db #0x52	; 82	'R'
	.db #0x00	; 0
	.db #0x52	; 82	'R'
	.db #0x45	; 69	'E'
	.db #0x43	; 67	'C'
	.db #0x45	; 69	'E'
	.db #0x44	; 68	'D'
	.db #0x45	; 69	'E'
	.db #0x53	; 83	'S'
_page_948:
	.byte _page_947, (_page_947 >> 8)
	.byte ___bank_gatsby_947, (___bank_gatsby_947 >> 8)
	.dw #0x0000
	.dw #0x0000
	.db #0x42	; 66	'B'
	.db #0x45	; 69	'E'
	.db #0x46	; 70	'F'
	.db #0x4f	; 79	'O'
	.db #0x52	; 82	'R'
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x55	; 85	'U'
	.db #0x53	; 83	'S'
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x29	; 41
	.db #0x54	; 84	'T'
	.db #0x00	; 0
	.db #0x45	; 69	'E'
	.db #0x4c	; 76	'L'
	.db #0x55	; 85	'U'
	.db #0x44	; 68	'D'
	.db #0x45	; 69	'E'
	.db #0x44	; 68	'D'
	.db #0x55	; 85	'U'
	.db #0x53	; 83	'S'
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x48	; 72	'H'
	.db #0x45	; 69	'E'
	.db #0x4e	; 78	'N'
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x55	; 85	'U'
	.db #0x54	; 84	'T'
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x48	; 72	'H'
	.db #0x41	; 65	'A'
	.db #0x54	; 84	'T'
	.db #0x07	; 7
	.db #0x53	; 83	'S'
	.db #0x00	; 0
	.db #0x4e	; 78	'N'
	.db #0x4f	; 79	'O'
	.db #0x00	; 0
	.db #0x4d	; 77	'M'
	.db #0x41	; 65	'A'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x45	; 69	'E'
	.db #0x52	; 82	'R'
	.db #0x0d	; 13
	.db #0x54	; 84	'T'
	.db #0x4f	; 79	'O'
	.db #0x4d	; 77	'M'
	.db #0x4f	; 79	'O'
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x4f	; 79	'O'
	.db #0x57	; 87	'W'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x57	; 87	'W'
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x57	; 87	'W'
	.db #0x49	; 73	'I'
	.db #0x4c	; 76	'L'
	.db #0x4c	; 76	'L'
	.db #0x00	; 0
	.db #0x52	; 82	'R'
	.db #0x55	; 85	'U'
	.db #0x4e	; 78	'N'
	.db #0x00	; 0
	.db #0x46	; 70	'F'
	.db #0x41	; 65	'A'
	.db #0x53	; 83	'S'
	.db #0x54	; 84	'T'
	.db #0x45	; 69	'E'
	.db #0x52	; 82	'R'
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x53	; 83	'S'
	.db #0x54	; 84	'T'
	.db #0x52	; 82	'R'
	.db #0x45	; 69	'E'
	.db #0x54	; 84	'T'
	.db #0x43	; 67	'C'
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.db #0x4f	; 79	'O'
	.db #0x55	; 85	'U'
	.db #0x54	; 84	'T'
	.db #0x00	; 0
	.db #0x4f	; 79	'O'
	.db #0x55	; 85	'U'
	.db #0x52	; 82	'R'
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x52	; 82	'R'
	.db #0x4d	; 77	'M'
	.db #0x53	; 83	'S'
	.db #0x46	; 70	'F'
	.db #0x55	; 85	'U'
	.db #0x52	; 82	'R'
	.db #0x54	; 84	'T'
	.db #0x48	; 72	'H'
	.db #0x45	; 69	'E'
	.db #0x52	; 82	'R'
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x4e	; 78	'N'
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x4f	; 79	'O'
	.db #0x4e	; 78	'N'
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x46	; 70	'F'
	.db #0x49	; 73	'I'
	.db #0x4e	; 78	'N'
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x4d	; 77	'M'
	.db #0x4f	; 79	'O'
	.db #0x52	; 82	'R'
	.db #0x4e	; 78	'N'
	.db #0x49	; 73	'I'
	.db #0x4e	; 78	'N'
	.db #0x47	; 71	'G'
	.db #0x0d	; 13
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x4f	; 79	'O'
	.db #0x00	; 0
	.db #0x57	; 87	'W'
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x45	; 69	'E'
	.db #0x41	; 65	'A'
	.db #0x54	; 84	'T'
	.db #0x00	; 0
	.db #0x4f	; 79	'O'
	.db #0x4e	; 78	'N'
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x4f	; 79	'O'
	.db #0x41	; 65	'A'
	.db #0x54	; 84	'T'
	.db #0x53	; 83	'S'
	.db #0x41	; 65	'A'
	.db #0x47	; 71	'G'
	.db #0x41	; 65	'A'
	.db #0x49	; 73	'I'
	.db #0x4e	; 78	'N'
	.db #0x53	; 83	'S'
	.db #0x54	; 84	'T'
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x48	; 72	'H'
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x43	; 67	'C'
	.db #0x55	; 85	'U'
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x45	; 69	'E'
	.db #0x4e	; 78	'N'
	.db #0x54	; 84	'T'
	.db #0x0c	; 12
	.db #0x42	; 66	'B'
	.db #0x4f	; 79	'O'
	.db #0x52	; 82	'R'
	.db #0x4e	; 78	'N'
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x41	; 65	'A'
	.db #0x43	; 67	'C'
	.db #0x4b	; 75	'K'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x43	; 67	'C'
	.db #0x45	; 69	'E'
	.db #0x41	; 65	'A'
	.db #0x53	; 83	'S'
	.db #0x45	; 69	'E'
	.db #0x4c	; 76	'L'
	.db #0x45	; 69	'E'
	.db #0x53	; 83	'S'
	.db #0x53	; 83	'S'
	.db #0x4c	; 76	'L'
	.db #0x59	; 89	'Y'
	.db #0x00	; 0
	.db #0x49	; 73	'I'
	.db #0x4e	; 78	'N'
	.db #0x54	; 84	'T'
	.db #0x4f	; 79	'O'
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x48	; 72	'H'
	.db #0x45	; 69	'E'
	.db #0x50	; 80	'P'
	.db #0x41	; 65	'A'
	.db #0x53	; 83	'S'
	.db #0x54	; 84	'T'
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.area _INITIALIZER
	.area _CABS (ABS)
