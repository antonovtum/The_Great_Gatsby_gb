;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.6 #12539 (MINGW32)
;--------------------------------------------------------
	.module main
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _interrupt_LCD
	.globl _font_set
	.globl _font_load
	.globl _font_init
	.globl _itoa
	.globl _printf
	.globl _set_bkg_tile_xy
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _wait_vbl_done
	.globl _set_interrupts
	.globl _joypad
	.globl _add_LCD
	.globl _forward
	.globl _i
	.globl _mapped_bookmark
	.globl _end_p_height
	.globl _frame
	.globl _joy
	.globl _b_button_down
	.globl _a_button_down
	.globl _l_button_down
	.globl _r_button_down
	.globl _h_b
	.globl _h_a
	.globl _h_left
	.globl _h_right
	.globl _current_page
	.globl _book_font
	.globl _map
	.globl _update_joy
	.globl _next_page
	.globl _prev_page
	.globl _resolve_jumping_point
	.globl _jump_page
	.globl _update_page_bookmark
	.globl _choose_page
	.globl _main
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$book_font$0_0$0==.
_book_font::
	.ds 2
G$current_page$0_0$0==.
_current_page::
	.ds 368
Fmain$page_number$0_0$0==.
_page_number:
	.ds 2
Fmain$page_number_temp$0_0$0==.
_page_number_temp:
	.ds 2
Fmain$page_select$0_0$0==.
_page_select:
	.ds 1
Fmain$page_chars$0_0$0==.
_page_chars:
	.ds 4
Fmain$p_turner_cd$0_0$0==.
_p_turner_cd:
	.ds 1
Fmain$p_turner_i$0_0$0==.
_p_turner_i:
	.ds 1
G$h_right$0_0$0==.
_h_right::
	.ds 1
G$h_left$0_0$0==.
_h_left::
	.ds 1
G$h_a$0_0$0==.
_h_a::
	.ds 1
G$h_b$0_0$0==.
_h_b::
	.ds 1
G$r_button_down$0_0$0==.
_r_button_down::
	.ds 1
G$l_button_down$0_0$0==.
_l_button_down::
	.ds 1
G$a_button_down$0_0$0==.
_a_button_down::
	.ds 1
G$b_button_down$0_0$0==.
_b_button_down::
	.ds 1
G$joy$0_0$0==.
_joy::
	.ds 1
G$frame$0_0$0==.
_frame::
	.ds 1
G$end_p_height$0_0$0==.
_end_p_height::
	.ds 1
G$mapped_bookmark$0_0$0==.
_mapped_bookmark::
	.ds 1
G$i$0_0$0==.
_i::
	.ds 2
G$forward$0_0$0==.
_forward::
	.ds 1
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
	.area _CODE
	G$map$0$0	= .
	.globl	G$map$0$0
	C$main.c$45$0_0$136	= .
	.globl	C$main.c$45$0_0$136
;src/main.c:45: int16_t map(int16_t x) {
;	---------------------------------
; Function map
; ---------------------------------
_map::
	add	sp, #-8
	C$main.c$46$1_0$136	= .
	.globl	C$main.c$46$1_0$136
;src/main.c:46: return (int32_t)((int32_t)(((int32_t)(x) - 1) * -119) / 947) + 255;
	ldhl	sp,	#10
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl), a
	ldhl	sp,	#11
	ld	a, (hl)
	ldhl	sp,	#1
	ld	(hl+), a
	rlca
	sbc	a, a
	ld	(hl+), a
	ld	(hl+), a
	inc	hl
	pop	de
	push	de
	ld	a, e
	sub	a, #0x01
	ld	e, a
	ld	a, d
	sbc	a, #0x00
	push	af
	ld	(hl-), a
	ld	a, e
	ld	(hl-), a
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	pop	af
	ld	a, e
	sbc	a, #0x00
	ld	e, a
	ld	a, d
	sbc	a, #0x00
	ldhl	sp,	#7
	ld	(hl-), a
	ld	(hl), e
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ldhl	sp,	#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	de, #0xffff
	push	de
	ld	e, #0x89
	push	de
	call	__mullong
	add	sp, #8
	ld	bc, #0x0000
	push	bc
	ld	bc, #0x03b3
	push	bc
	push	hl
	push	de
	call	__divslong
	add	sp, #8
	ld	hl, #0x00ff
	add	hl, de
	ld	e, l
	ld	d, h
	C$main.c$47$1_0$136	= .
	.globl	C$main.c$47$1_0$136
;src/main.c:47: }
	add	sp, #8
	C$main.c$47$1_0$136	= .
	.globl	C$main.c$47$1_0$136
	XG$map$0$0	= .
	.globl	XG$map$0$0
	ret
	G$update_joy$0$0	= .
	.globl	G$update_joy$0$0
	C$main.c$49$1_0$138	= .
	.globl	C$main.c$49$1_0$138
;src/main.c:49: void update_joy(void){
;	---------------------------------
; Function update_joy
; ---------------------------------
_update_joy::
	C$main.c$50$1_0$138	= .
	.globl	C$main.c$50$1_0$138
;src/main.c:50: joy = joypad();
	call	_joypad
	ld	hl, #_joy
	ld	(hl), e
	C$main.c$52$1_0$138	= .
	.globl	C$main.c$52$1_0$138
;src/main.c:52: if(joy & J_RIGHT){
	ld	c, (hl)
	bit	0, c
	jr	Z, 00105$
	C$main.c$53$2_0$139	= .
	.globl	C$main.c$53$2_0$139
;src/main.c:53: if(h_right){
	ld	hl, #_h_right
	bit	0, (hl)
	jr	Z, 00102$
	C$main.c$54$3_0$140	= .
	.globl	C$main.c$54$3_0$140
;src/main.c:54: r_button_down = false;
	ld	hl, #_r_button_down
	ld	(hl), #0x00
	jr	00106$
00102$:
	C$main.c$56$3_0$141	= .
	.globl	C$main.c$56$3_0$141
;src/main.c:56: h_right = true;
	ld	hl, #_h_right
	ld	(hl), #0x01
	C$main.c$57$3_0$141	= .
	.globl	C$main.c$57$3_0$141
;src/main.c:57: r_button_down = true;
	ld	hl, #_r_button_down
	ld	(hl), #0x01
	jr	00106$
00105$:
	C$main.c$60$2_0$142	= .
	.globl	C$main.c$60$2_0$142
;src/main.c:60: h_right = false;
	ld	hl, #_h_right
	ld	(hl), #0x00
	C$main.c$61$2_0$142	= .
	.globl	C$main.c$61$2_0$142
;src/main.c:61: r_button_down = false;
	ld	hl, #_r_button_down
	ld	(hl), #0x00
00106$:
	C$main.c$64$1_0$138	= .
	.globl	C$main.c$64$1_0$138
;src/main.c:64: if(joy & J_LEFT){
	bit	1, c
	jr	Z, 00111$
	C$main.c$65$2_0$143	= .
	.globl	C$main.c$65$2_0$143
;src/main.c:65: if(h_left){
	ld	hl, #_h_left
	bit	0, (hl)
	jr	Z, 00108$
	C$main.c$66$3_0$144	= .
	.globl	C$main.c$66$3_0$144
;src/main.c:66: l_button_down = false;
	ld	hl, #_l_button_down
	ld	(hl), #0x00
	jr	00112$
00108$:
	C$main.c$68$3_0$145	= .
	.globl	C$main.c$68$3_0$145
;src/main.c:68: h_left = true;
	ld	hl, #_h_left
	ld	(hl), #0x01
	C$main.c$69$3_0$145	= .
	.globl	C$main.c$69$3_0$145
;src/main.c:69: l_button_down = true;
	ld	hl, #_l_button_down
	ld	(hl), #0x01
	jr	00112$
00111$:
	C$main.c$72$2_0$146	= .
	.globl	C$main.c$72$2_0$146
;src/main.c:72: h_left = false;
	ld	hl, #_h_left
	ld	(hl), #0x00
	C$main.c$73$2_0$146	= .
	.globl	C$main.c$73$2_0$146
;src/main.c:73: l_button_down = false;
	ld	hl, #_l_button_down
	ld	(hl), #0x00
00112$:
	C$main.c$76$1_0$138	= .
	.globl	C$main.c$76$1_0$138
;src/main.c:76: if(joy & J_A){
	bit	4, c
	jr	Z, 00117$
	C$main.c$77$2_0$147	= .
	.globl	C$main.c$77$2_0$147
;src/main.c:77: if(h_a){
	ld	hl, #_h_a
	bit	0, (hl)
	jr	Z, 00114$
	C$main.c$78$3_0$148	= .
	.globl	C$main.c$78$3_0$148
;src/main.c:78: a_button_down = false;
	ld	hl, #_a_button_down
	ld	(hl), #0x00
	jr	00118$
00114$:
	C$main.c$80$3_0$149	= .
	.globl	C$main.c$80$3_0$149
;src/main.c:80: h_a = true;
	ld	hl, #_h_a
	ld	(hl), #0x01
	C$main.c$81$3_0$149	= .
	.globl	C$main.c$81$3_0$149
;src/main.c:81: a_button_down = true;
	ld	hl, #_a_button_down
	ld	(hl), #0x01
	jr	00118$
00117$:
	C$main.c$84$2_0$150	= .
	.globl	C$main.c$84$2_0$150
;src/main.c:84: h_a = false;
	ld	hl, #_h_a
	ld	(hl), #0x00
	C$main.c$85$2_0$150	= .
	.globl	C$main.c$85$2_0$150
;src/main.c:85: a_button_down = false;
	ld	hl, #_a_button_down
	ld	(hl), #0x00
00118$:
	C$main.c$88$1_0$138	= .
	.globl	C$main.c$88$1_0$138
;src/main.c:88: if(joy & J_B){
	bit	5, c
	jr	Z, 00123$
	C$main.c$89$2_0$151	= .
	.globl	C$main.c$89$2_0$151
;src/main.c:89: if(h_b){
	ld	hl, #_h_b
	bit	0, (hl)
	jr	Z, 00120$
	C$main.c$90$3_0$152	= .
	.globl	C$main.c$90$3_0$152
;src/main.c:90: b_button_down = false;
	ld	hl, #_b_button_down
	ld	(hl), #0x00
	ret
00120$:
	C$main.c$92$3_0$153	= .
	.globl	C$main.c$92$3_0$153
;src/main.c:92: h_b = true;
	ld	hl, #_h_b
	ld	(hl), #0x01
	C$main.c$93$3_0$153	= .
	.globl	C$main.c$93$3_0$153
;src/main.c:93: b_button_down = true;
	ld	hl, #_b_button_down
	ld	(hl), #0x01
	ret
00123$:
	C$main.c$96$2_0$154	= .
	.globl	C$main.c$96$2_0$154
;src/main.c:96: h_b = false;
	ld	hl, #_h_b
	ld	(hl), #0x00
	C$main.c$97$2_0$154	= .
	.globl	C$main.c$97$2_0$154
;src/main.c:97: b_button_down = false;
	ld	hl, #_b_button_down
	ld	(hl), #0x00
	C$main.c$99$1_0$138	= .
	.globl	C$main.c$99$1_0$138
;src/main.c:99: }
	C$main.c$99$1_0$138	= .
	.globl	C$main.c$99$1_0$138
	XG$update_joy$0$0	= .
	.globl	XG$update_joy$0$0
	ret
	G$next_page$0$0	= .
	.globl	G$next_page$0$0
	C$main.c$101$1_0$156	= .
	.globl	C$main.c$101$1_0$156
;src/main.c:101: void next_page(void){
;	---------------------------------
; Function next_page
; ---------------------------------
_next_page::
	C$main.c$102$1_0$156	= .
	.globl	C$main.c$102$1_0$156
;src/main.c:102: if(current_page.next_bank == NULL) return;
	ld	hl, #_current_page + 6
	ld	a, (hl+)
	ld	c,a
	or	a,(hl)
	ret	Z
	C$main.c$103$1_0$156	= .
	.globl	C$main.c$103$1_0$156
;src/main.c:103: SWITCH_ROM(current_page.next_bank);
	ld	a, c
	ldh	(__current_bank + 0), a
	ld	(#0x2000),a
	C$main.c$104$1_0$156	= .
	.globl	C$main.c$104$1_0$156
;src/main.c:104: current_page = *(page_t*)(current_page.next_ofs);
	ld	hl, #(_current_page + 4)
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	de, #0x0170
	push	de
	push	bc
	ld	de, #_current_page
	push	de
	call	___memcpy
	add	sp, #6
	C$main.c$105$1_0$156	= .
	.globl	C$main.c$105$1_0$156
;src/main.c:105: set_bkg_tiles(0, 0, 20, 18, current_page.page_data);
	ld	de, #(_current_page + 8)
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$main.c$106$1_0$156	= .
	.globl	C$main.c$106$1_0$156
;src/main.c:106: page_number++;
	ld	hl, #_page_number
	inc	(hl)
	ret	NZ
	inc	hl
	inc	(hl)
	C$main.c$107$1_0$156	= .
	.globl	C$main.c$107$1_0$156
;src/main.c:107: }
	C$main.c$107$1_0$156	= .
	.globl	C$main.c$107$1_0$156
	XG$next_page$0$0	= .
	.globl	XG$next_page$0$0
	ret
	G$prev_page$0$0	= .
	.globl	G$prev_page$0$0
	C$main.c$109$1_0$158	= .
	.globl	C$main.c$109$1_0$158
;src/main.c:109: void prev_page(void){
;	---------------------------------
; Function prev_page
; ---------------------------------
_prev_page::
	C$main.c$110$1_0$158	= .
	.globl	C$main.c$110$1_0$158
;src/main.c:110: if(current_page.prev_bank == NULL) return;
	ld	hl, #_current_page + 2
	ld	a, (hl+)
	ld	c,a
	or	a,(hl)
	ret	Z
	C$main.c$111$1_0$158	= .
	.globl	C$main.c$111$1_0$158
;src/main.c:111: SWITCH_ROM(current_page.prev_bank);
	ld	a, c
	ldh	(__current_bank + 0), a
	ld	(#0x2000),a
	C$main.c$112$1_0$158	= .
	.globl	C$main.c$112$1_0$158
;src/main.c:112: current_page = *(page_t*)(current_page.prev_ofs);
	ld	hl, #_current_page
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	de, #0x0170
	push	de
	push	bc
	ld	de, #_current_page
	push	de
	call	___memcpy
	add	sp, #6
	C$main.c$113$1_0$158	= .
	.globl	C$main.c$113$1_0$158
;src/main.c:113: set_bkg_tiles(0, 0, 20, 18, current_page.page_data);
	ld	de, #(_current_page + 8)
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$main.c$114$1_0$158	= .
	.globl	C$main.c$114$1_0$158
;src/main.c:114: page_number--;
	ld	hl, #_page_number
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl-)
	ld	d, a
	dec	de
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
	C$main.c$115$1_0$158	= .
	.globl	C$main.c$115$1_0$158
;src/main.c:115: }
	C$main.c$115$1_0$158	= .
	.globl	C$main.c$115$1_0$158
	XG$prev_page$0$0	= .
	.globl	XG$prev_page$0$0
	ret
	G$resolve_jumping_point$0$0	= .
	.globl	G$resolve_jumping_point$0$0
	C$main.c$117$1_0$160	= .
	.globl	C$main.c$117$1_0$160
;src/main.c:117: void resolve_jumping_point(void){
;	---------------------------------
; Function resolve_jumping_point
; ---------------------------------
_resolve_jumping_point::
	add	sp, #-4
	C$main.c$119$1_0$160	= .
	.globl	C$main.c$119$1_0$160
;src/main.c:119: if(page_number < 238){
	ld	a, (#_page_number)
	ldhl	sp,	#0
	ld	(hl), a
	ld	a, (#_page_number + 1)
	ldhl	sp,	#1
	ld	(hl-), a
	ld	a, (hl+)
	sub	a, #0xee
	ld	a, (hl)
	sbc	a, #0x00
	jr	NC, 00102$
	C$main.c$121$2_0$161	= .
	.globl	C$main.c$121$2_0$161
;src/main.c:121: SWITCH_ROM( BANK(gatsby_1) );
	ld	a, #<(___bank_gatsby_1)
	ldh	(__current_bank + 0), a
	ld	a, #<(___bank_gatsby_1)
	ld	(#0x2000),a
	C$main.c$122$2_0$161	= .
	.globl	C$main.c$122$2_0$161
;src/main.c:122: current_page = page_1;
	ld	de, #0x0170
	push	de
	ld	de, #_page_1
	push	de
	ld	de, #_current_page
	push	de
	call	___memcpy
	add	sp, #6
	C$main.c$123$2_0$161	= .
	.globl	C$main.c$123$2_0$161
;src/main.c:123: i = 1;
	ld	hl, #_i
	ld	a, #0x01
	ld	(hl+), a
	xor	a, a
	ld	(hl), a
	C$main.c$124$2_0$161	= .
	.globl	C$main.c$124$2_0$161
;src/main.c:124: forward = true;
	ld	hl, #_forward
	ld	(hl), #0x01
	C$main.c$125$2_0$161	= .
	.globl	C$main.c$125$2_0$161
;src/main.c:125: return;
	jp	00113$
00102$:
	C$main.c$127$1_0$160	= .
	.globl	C$main.c$127$1_0$160
;src/main.c:127: if(page_number > 711){
	ldhl	sp,	#0
	ld	a, #0xc7
	sub	a, (hl)
	inc	hl
	ld	a, #0x02
	sbc	a, (hl)
	jr	NC, 00104$
	C$main.c$129$2_0$162	= .
	.globl	C$main.c$129$2_0$162
;src/main.c:129: SWITCH_ROM( BANK(gatsby_948) );
	ld	a, #<(___bank_gatsby_948)
	ldh	(__current_bank + 0), a
	ld	a, #<(___bank_gatsby_948)
	ld	(#0x2000),a
	C$main.c$130$2_0$162	= .
	.globl	C$main.c$130$2_0$162
;src/main.c:130: current_page = page_948;
	ld	de, #0x0170
	push	de
	ld	de, #_page_948
	push	de
	ld	de, #_current_page
	push	de
	call	___memcpy
	add	sp, #6
	C$main.c$131$2_0$162	= .
	.globl	C$main.c$131$2_0$162
;src/main.c:131: i = 948;
	ld	hl, #_i
	ld	a, #0xb4
	ld	(hl+), a
	ld	(hl), #0x03
	C$main.c$132$2_0$162	= .
	.globl	C$main.c$132$2_0$162
;src/main.c:132: forward = false;
	ld	hl, #_forward
	ld	(hl), #0x00
	C$main.c$133$2_0$162	= .
	.globl	C$main.c$133$2_0$162
;src/main.c:133: return;
	jp	00113$
00104$:
	C$main.c$136$1_0$160	= .
	.globl	C$main.c$136$1_0$160
;src/main.c:136: if(page_number > page_number_temp - 237 && page_number < page_number_temp){
	ld	hl, #_page_number_temp
	ld	a, (hl+)
	ld	c, a
	C$main.c$138$1_0$160	= .
	.globl	C$main.c$138$1_0$160
;src/main.c:138: i = page_number_temp;
	ld	a, (hl-)
	ld	b, a
	ld	a, c
	add	a, #0x13
	ld	e, a
	ld	a, b
	adc	a, #0xff
	ld	d, a
	ld	a, (hl)
	ldhl	sp,	#2
	ld	(hl), a
	ld	a, (#_page_number_temp + 1)
	ldhl	sp,	#3
	ld	(hl), a
	C$main.c$136$1_0$160	= .
	.globl	C$main.c$136$1_0$160
;src/main.c:136: if(page_number > page_number_temp - 237 && page_number < page_number_temp){
	ldhl	sp,	#0
	ld	a, e
	sub	a, (hl)
	inc	hl
	ld	a, d
	sbc	a, (hl)
	jr	NC, 00106$
	ld	de, #_page_number
	ld	hl, #_page_number_temp
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	jr	NC, 00106$
	C$main.c$138$2_0$163	= .
	.globl	C$main.c$138$2_0$163
;src/main.c:138: i = page_number_temp;
	ldhl	sp,	#2
	ld	a, (hl)
	ld	(#_i),a
	ldhl	sp,	#3
	ld	a, (hl)
	ld	(#_i + 1),a
	C$main.c$139$2_0$163	= .
	.globl	C$main.c$139$2_0$163
;src/main.c:139: forward = false;
	ld	hl, #_forward
	ld	(hl), #0x00
	C$main.c$140$2_0$163	= .
	.globl	C$main.c$140$2_0$163
;src/main.c:140: return;
	jr	00113$
00106$:
	C$main.c$142$1_0$160	= .
	.globl	C$main.c$142$1_0$160
;src/main.c:142: if(page_number < page_number_temp + 237 && page_number > page_number_temp){
	ld	hl, #0x00ed
	add	hl, bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#0
	ld	a, (hl+)
	sub	a, c
	ld	a, (hl)
	sbc	a, b
	jr	NC, 00109$
	ld	de, #_page_number_temp
	ld	hl, #_page_number
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	jr	NC, 00109$
	C$main.c$143$2_0$164	= .
	.globl	C$main.c$143$2_0$164
;src/main.c:143: i = page_number_temp;
	ldhl	sp,	#2
	ld	a, (hl)
	ld	(#_i),a
	ldhl	sp,	#3
	ld	a, (hl)
	ld	(#_i + 1),a
	C$main.c$144$2_0$164	= .
	.globl	C$main.c$144$2_0$164
;src/main.c:144: forward = true;
	ld	hl, #_forward
	ld	(hl), #0x01
	C$main.c$145$2_0$164	= .
	.globl	C$main.c$145$2_0$164
;src/main.c:145: return;
	jr	00113$
00109$:
	C$main.c$148$1_0$160	= .
	.globl	C$main.c$148$1_0$160
;src/main.c:148: SWITCH_ROM( BANK(gatsby_474) );
	ld	a, #<(___bank_gatsby_474)
	ldh	(__current_bank + 0), a
	ld	a, #<(___bank_gatsby_474)
	ld	(#0x2000),a
	C$main.c$149$1_0$160	= .
	.globl	C$main.c$149$1_0$160
;src/main.c:149: current_page = page_474;
	ld	de, #0x0170
	push	de
	ld	de, #_page_474
	push	de
	ld	de, #_current_page
	push	de
	call	___memcpy
	add	sp, #6
	C$main.c$150$1_0$160	= .
	.globl	C$main.c$150$1_0$160
;src/main.c:150: i = 474;
	ld	hl, #_i
	ld	a, #0xda
	ld	(hl+), a
	ld	(hl), #0x01
	C$main.c$151$1_0$160	= .
	.globl	C$main.c$151$1_0$160
;src/main.c:151: if(page_number <= 474){
	ld	hl, #_page_number
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	a, #0xda
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	C, 00112$
	C$main.c$152$2_0$165	= .
	.globl	C$main.c$152$2_0$165
;src/main.c:152: forward = false;
	ld	hl, #_forward
	ld	(hl), #0x00
	C$main.c$153$2_0$165	= .
	.globl	C$main.c$153$2_0$165
;src/main.c:153: return;
	jr	00113$
00112$:
	C$main.c$155$1_0$160	= .
	.globl	C$main.c$155$1_0$160
;src/main.c:155: forward = true;    
	ld	hl, #_forward
	ld	(hl), #0x01
00113$:
	C$main.c$157$1_0$160	= .
	.globl	C$main.c$157$1_0$160
;src/main.c:157: }
	add	sp, #4
	C$main.c$157$1_0$160	= .
	.globl	C$main.c$157$1_0$160
	XG$resolve_jumping_point$0$0	= .
	.globl	XG$resolve_jumping_point$0$0
	ret
	G$jump_page$0$0	= .
	.globl	G$jump_page$0$0
	C$main.c$159$1_0$167	= .
	.globl	C$main.c$159$1_0$167
;src/main.c:159: void jump_page(void){
;	---------------------------------
; Function jump_page
; ---------------------------------
_jump_page::
	C$main.c$161$1_0$167	= .
	.globl	C$main.c$161$1_0$167
;src/main.c:161: if(page_number == page_number_temp) return;
	ld	a, (#_page_number)
	ld	hl, #_page_number_temp
	sub	a, (hl)
	jr	NZ, 00102$
	ld	a, (#_page_number + 1)
	ld	hl, #_page_number_temp + 1
	sub	a, (hl)
	ret	Z
	jr	00102$
00102$:
	C$main.c$163$1_0$167	= .
	.globl	C$main.c$163$1_0$167
;src/main.c:163: resolve_jumping_point();
	call	_resolve_jumping_point
	C$main.c$171$3_0$169	= .
	.globl	C$main.c$171$3_0$169
;src/main.c:171: while(i != page_number){
00106$:
	ld	a, (#_i)
	ld	hl, #_page_number
	sub	a, (hl)
	jr	NZ, 00133$
	ld	a, (#_i + 1)
	ld	hl, #_page_number + 1
	sub	a, (hl)
	jr	Z, 00108$
00133$:
	C$main.c$172$2_0$168	= .
	.globl	C$main.c$172$2_0$168
;src/main.c:172: if(forward){
	ld	hl, #_forward
	bit	0, (hl)
	jr	Z, 00104$
	C$main.c$173$3_0$169	= .
	.globl	C$main.c$173$3_0$169
;src/main.c:173: SWITCH_ROM(current_page.next_bank);
	ld	a, (#(_current_page + 6) + 0)
	ldh	(__current_bank + 0), a
	ld	(#0x2000),a
	C$main.c$174$3_0$169	= .
	.globl	C$main.c$174$3_0$169
;src/main.c:174: current_page = *(page_t*)(current_page.next_ofs);
	ld	hl, #(_current_page + 4)
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	de, #0x0170
	push	de
	push	bc
	ld	de, #_current_page
	push	de
	call	___memcpy
	add	sp, #6
	C$main.c$175$3_0$169	= .
	.globl	C$main.c$175$3_0$169
;src/main.c:175: i++;
	ld	hl, #_i
	inc	(hl)
	jr	NZ, 00106$
	inc	hl
	inc	(hl)
	C$main.c$176$3_0$169	= .
	.globl	C$main.c$176$3_0$169
;src/main.c:176: continue;
	jr	00106$
00104$:
	C$main.c$178$3_0$170	= .
	.globl	C$main.c$178$3_0$170
;src/main.c:178: SWITCH_ROM(current_page.prev_bank);
	ld	a, (#(_current_page + 2) + 0)
	ldh	(__current_bank + 0), a
	ld	(#0x2000),a
	C$main.c$179$3_0$170	= .
	.globl	C$main.c$179$3_0$170
;src/main.c:179: current_page = *(page_t*)(current_page.prev_ofs);
	ld	hl, #_current_page
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	de, #0x0170
	push	de
	push	bc
	ld	de, #_current_page
	push	de
	call	___memcpy
	add	sp, #6
	C$main.c$180$3_0$170	= .
	.globl	C$main.c$180$3_0$170
;src/main.c:180: i--;
	ld	hl, #_i
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl-)
	ld	d, a
	dec	de
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
	C$main.c$181$3_0$170	= .
	.globl	C$main.c$181$3_0$170
;src/main.c:181: continue;
	jr	00106$
00108$:
	C$main.c$184$1_0$167	= .
	.globl	C$main.c$184$1_0$167
;src/main.c:184: set_bkg_tiles(0, 0, 20, 18, current_page.page_data);
	ld	de, #(_current_page + 8)
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$main.c$185$1_0$167	= .
	.globl	C$main.c$185$1_0$167
;src/main.c:185: }
	C$main.c$185$1_0$167	= .
	.globl	C$main.c$185$1_0$167
	XG$jump_page$0$0	= .
	.globl	XG$jump_page$0$0
	ret
	G$update_page_bookmark$0$0	= .
	.globl	G$update_page_bookmark$0$0
	C$main.c$187$1_0$172	= .
	.globl	C$main.c$187$1_0$172
;src/main.c:187: void update_page_bookmark(void){
;	---------------------------------
; Function update_page_bookmark
; ---------------------------------
_update_page_bookmark::
	dec	sp
	C$main.c$189$1_0$172	= .
	.globl	C$main.c$189$1_0$172
;src/main.c:189: itoa(page_number, page_chars, 10);
	ld	bc, #_page_chars+0
	ld	e, c
	ld	d, b
	ld	hl, #_page_number
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_page_number + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	a, #0x0a
	push	af
	inc	sp
	push	de
	push	hl
	call	_itoa
	add	sp, #5
	pop	bc
	C$main.c$190$1_0$172	= .
	.globl	C$main.c$190$1_0$172
;src/main.c:190: if(page_number < 10){
	ld	hl, #_page_number
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	C$main.c$191$1_0$172	= .
	.globl	C$main.c$191$1_0$172
;src/main.c:191: page_chars[0] = page_chars[0] - 32;
	ld	a, (bc)
	add	a, #0xe0
	ldhl	sp,	#0
	ld	(hl), a
	C$main.c$190$1_0$172	= .
	.globl	C$main.c$190$1_0$172
;src/main.c:190: if(page_number < 10){
	ld	a, e
	sub	a, #0x0a
	ld	a, d
	sbc	a, #0x00
	jr	NC, 00105$
	C$main.c$191$2_0$173	= .
	.globl	C$main.c$191$2_0$173
;src/main.c:191: page_chars[0] = page_chars[0] - 32;
	ld	a, (hl)
	ld	(bc), a
	C$main.c$192$2_0$173	= .
	.globl	C$main.c$192$2_0$173
;src/main.c:192: set_bkg_tile_xy(1, 19, 0x00);
	xor	a, a
	ld	h, a
	ld	l, #0x13
	push	hl
	ld	a, #0x01
	push	af
	inc	sp
	call	_set_bkg_tile_xy
	add	sp, #3
	C$main.c$193$2_0$173	= .
	.globl	C$main.c$193$2_0$173
;src/main.c:193: set_bkg_tile_xy(2, 19, 0x00);
	xor	a, a
	ld	h, a
	ld	l, #0x13
	push	hl
	ld	a, #0x02
	push	af
	inc	sp
	call	_set_bkg_tile_xy
	add	sp, #3
	C$main.c$194$2_0$173	= .
	.globl	C$main.c$194$2_0$173
;src/main.c:194: set_bkg_tile_xy(3, 19, page_chars[0]);
	ld	a, (bc)
	ld	h, a
	ld	l, #0x13
	push	hl
	ld	a, #0x03
	push	af
	inc	sp
	call	_set_bkg_tile_xy
	add	sp, #3
	jp	00106$
00105$:
	C$main.c$197$1_0$172	= .
	.globl	C$main.c$197$1_0$172
;src/main.c:197: page_chars[1] = page_chars[1] - 32;
	C$main.c$195$1_0$172	= .
	.globl	C$main.c$195$1_0$172
;src/main.c:195: } else if(page_number < 100){
	ld	a, e
	sub	a, #0x64
	ld	a, d
	sbc	a, #0x00
	jr	NC, 00102$
	C$main.c$196$2_0$174	= .
	.globl	C$main.c$196$2_0$174
;src/main.c:196: page_chars[0] = page_chars[0] - 32;
	ldhl	sp,	#0
	ld	a, (hl)
	ld	(bc), a
	C$main.c$197$2_0$174	= .
	.globl	C$main.c$197$2_0$174
;src/main.c:197: page_chars[1] = page_chars[1] - 32;
	ld	a, (#(_page_chars + 1) + 0)
	add	a, #0xe0
	ld	(#(_page_chars + 1)),a
	C$main.c$198$2_0$174	= .
	.globl	C$main.c$198$2_0$174
;src/main.c:198: set_bkg_tile_xy(1, 19, 0x00);
	xor	a, a
	ld	h, a
	ld	l, #0x13
	push	hl
	ld	a, #0x01
	push	af
	inc	sp
	call	_set_bkg_tile_xy
	add	sp, #3
	C$main.c$199$2_0$174	= .
	.globl	C$main.c$199$2_0$174
;src/main.c:199: set_bkg_tile_xy(2, 19, page_chars[0]);
	ld	a, (bc)
	ld	h, a
	ld	l, #0x13
	push	hl
	ld	a, #0x02
	push	af
	inc	sp
	call	_set_bkg_tile_xy
	add	sp, #3
	C$main.c$200$2_0$174	= .
	.globl	C$main.c$200$2_0$174
;src/main.c:200: set_bkg_tile_xy(3, 19, page_chars[1]);
	ld	a, (#(_page_chars + 1) + 0)
	ld	h, a
	ld	l, #0x13
	push	hl
	ld	a, #0x03
	push	af
	inc	sp
	call	_set_bkg_tile_xy
	add	sp, #3
	jr	00106$
00102$:
	C$main.c$202$2_0$175	= .
	.globl	C$main.c$202$2_0$175
;src/main.c:202: page_chars[0] = page_chars[0] - 32;
	ldhl	sp,	#0
	ld	a, (hl)
	ld	(bc), a
	C$main.c$203$2_0$175	= .
	.globl	C$main.c$203$2_0$175
;src/main.c:203: page_chars[1] = page_chars[1] - 32;
	ld	a, (#(_page_chars + 1) + 0)
	add	a, #0xe0
	ld	(#(_page_chars + 1)),a
	C$main.c$204$2_0$175	= .
	.globl	C$main.c$204$2_0$175
;src/main.c:204: page_chars[2] = page_chars[2] - 32;
	inc	bc
	inc	bc
	ld	a, (bc)
	add	a, #0xe0
	ld	(bc), a
	C$main.c$205$2_0$175	= .
	.globl	C$main.c$205$2_0$175
;src/main.c:205: set_bkg_tile_xy(1, 19, page_chars[0]);
	ldhl	sp,	#0
	ld	h, (hl)
	ld	l, #0x13
	push	hl
	ld	a, #0x01
	push	af
	inc	sp
	call	_set_bkg_tile_xy
	add	sp, #3
	C$main.c$206$2_0$175	= .
	.globl	C$main.c$206$2_0$175
;src/main.c:206: set_bkg_tile_xy(2, 19, page_chars[1]);
	ld	a, (#(_page_chars + 1) + 0)
	ld	h, a
	ld	l, #0x13
	push	hl
	ld	a, #0x02
	push	af
	inc	sp
	call	_set_bkg_tile_xy
	add	sp, #3
	C$main.c$207$2_0$175	= .
	.globl	C$main.c$207$2_0$175
;src/main.c:207: set_bkg_tile_xy(3, 19, page_chars[2]);
	ld	a, (bc)
	ld	h, a
	ld	l, #0x13
	push	hl
	ld	a, #0x03
	push	af
	inc	sp
	call	_set_bkg_tile_xy
	add	sp, #3
00106$:
	C$main.c$210$1_0$172	= .
	.globl	C$main.c$210$1_0$172
;src/main.c:210: mapped_bookmark = map((int16_t)(page_number));
	ld	hl, #_page_number
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	push	bc
	call	_map
	pop	hl
	ld	hl, #_mapped_bookmark
	ld	(hl), e
	C$main.c$211$1_0$172	= .
	.globl	C$main.c$211$1_0$172
;src/main.c:211: }
	inc	sp
	C$main.c$211$1_0$172	= .
	.globl	C$main.c$211$1_0$172
	XG$update_page_bookmark$0$0	= .
	.globl	XG$update_page_bookmark$0$0
	ret
	G$choose_page$0$0	= .
	.globl	G$choose_page$0$0
	C$main.c$213$1_0$177	= .
	.globl	C$main.c$213$1_0$177
;src/main.c:213: void choose_page(void){
;	---------------------------------
; Function choose_page
; ---------------------------------
_choose_page::
	C$main.c$214$1_0$177	= .
	.globl	C$main.c$214$1_0$177
;src/main.c:214: if(h_right){
	ld	hl, #_h_right
	bit	0, (hl)
	jr	Z, 00108$
	C$main.c$215$2_0$178	= .
	.globl	C$main.c$215$2_0$178
;src/main.c:215: if(r_button_down){
	ld	hl, #_r_button_down
	bit	0, (hl)
	jr	Z, 00102$
	C$main.c$216$3_0$179	= .
	.globl	C$main.c$216$3_0$179
;src/main.c:216: p_turner_cd = 20;
	ld	hl, #_p_turner_cd
	ld	(hl), #0x14
	C$main.c$217$3_0$179	= .
	.globl	C$main.c$217$3_0$179
;src/main.c:217: p_turner_i = 20;
	ld	hl, #_p_turner_i
	ld	(hl), #0x14
00102$:
	C$main.c$219$2_0$178	= .
	.globl	C$main.c$219$2_0$178
;src/main.c:219: if(p_turner_cd == p_turner_i){
	ld	a, (#_p_turner_cd)
	ld	hl, #_p_turner_i
	sub	a, (hl)
	jr	NZ, 00106$
	C$main.c$220$3_0$180	= .
	.globl	C$main.c$220$3_0$180
;src/main.c:220: p_turner_i = 0;
	ld	hl, #_p_turner_i
	ld	(hl), #0x00
	C$main.c$221$3_0$180	= .
	.globl	C$main.c$221$3_0$180
;src/main.c:221: p_turner_cd--;
	ld	hl, #_p_turner_cd
	C$main.c$222$3_0$180	= .
	.globl	C$main.c$222$3_0$180
;src/main.c:222: if(!p_turner_cd) p_turner_cd = 1;
	dec	(hl)
	jr	NZ, 00104$
	ld	(hl), #0x01
00104$:
	C$main.c$223$3_0$180	= .
	.globl	C$main.c$223$3_0$180
;src/main.c:223: page_number = page_number == (uint16_t)(948) ? 1 : page_number + 1;
	ld	hl, #_page_number
	ld	a, (hl)
	sub	a, #0xb4
	jr	NZ, 00119$
	inc	hl
	ld	a, (hl)
	sub	a, #0x03
	jr	NZ, 00119$
	ld	bc, #0x0001
	jr	00120$
00119$:
	ld	hl, #_page_number
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	inc	bc
00120$:
	ld	hl, #_page_number
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	C$main.c$224$3_0$180	= .
	.globl	C$main.c$224$3_0$180
;src/main.c:224: update_page_bookmark();
	call	_update_page_bookmark
00106$:
	C$main.c$226$2_0$178	= .
	.globl	C$main.c$226$2_0$178
;src/main.c:226: p_turner_i++;
	ld	hl, #_p_turner_i
	inc	(hl)
00108$:
	C$main.c$228$1_0$177	= .
	.globl	C$main.c$228$1_0$177
;src/main.c:228: if(h_left){
	ld	hl, #_h_left
	bit	0, (hl)
	ret	Z
	C$main.c$229$2_0$181	= .
	.globl	C$main.c$229$2_0$181
;src/main.c:229: if(l_button_down){
	ld	hl, #_l_button_down
	bit	0, (hl)
	jr	Z, 00110$
	C$main.c$230$3_0$182	= .
	.globl	C$main.c$230$3_0$182
;src/main.c:230: p_turner_cd = 20;
	ld	hl, #_p_turner_cd
	ld	(hl), #0x14
	C$main.c$231$3_0$182	= .
	.globl	C$main.c$231$3_0$182
;src/main.c:231: p_turner_i = 20;
	ld	hl, #_p_turner_i
	ld	(hl), #0x14
00110$:
	C$main.c$233$2_0$181	= .
	.globl	C$main.c$233$2_0$181
;src/main.c:233: if(p_turner_cd == p_turner_i){
	ld	a, (#_p_turner_cd)
	ld	hl, #_p_turner_i
	sub	a, (hl)
	jr	NZ, 00114$
	C$main.c$234$3_0$183	= .
	.globl	C$main.c$234$3_0$183
;src/main.c:234: p_turner_i = 0;
	ld	hl, #_p_turner_i
	ld	(hl), #0x00
	C$main.c$235$3_0$183	= .
	.globl	C$main.c$235$3_0$183
;src/main.c:235: p_turner_cd--;
	ld	hl, #_p_turner_cd
	C$main.c$236$3_0$183	= .
	.globl	C$main.c$236$3_0$183
;src/main.c:236: if(!p_turner_cd) p_turner_cd = 1;
	dec	(hl)
	jr	NZ, 00112$
	ld	(hl), #0x01
00112$:
	C$main.c$237$3_0$183	= .
	.globl	C$main.c$237$3_0$183
;src/main.c:237: page_number = page_number == 1 ? (uint16_t)(948) : page_number - 1;
	ld	hl, #_page_number
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	a, c
	dec	a
	or	a, b
	jr	NZ, 00121$
	ld	bc, #0x03b4
	jr	00122$
00121$:
	dec	bc
00122$:
	ld	hl, #_page_number
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	C$main.c$238$3_0$183	= .
	.globl	C$main.c$238$3_0$183
;src/main.c:238: update_page_bookmark();
	call	_update_page_bookmark
00114$:
	C$main.c$240$2_0$181	= .
	.globl	C$main.c$240$2_0$181
;src/main.c:240: p_turner_i++;
	ld	hl, #_p_turner_i
	inc	(hl)
	C$main.c$242$1_0$177	= .
	.globl	C$main.c$242$1_0$177
;src/main.c:242: }
	C$main.c$242$1_0$177	= .
	.globl	C$main.c$242$1_0$177
	XG$choose_page$0$0	= .
	.globl	XG$choose_page$0$0
	ret
	G$interrupt_LCD$0$0	= .
	.globl	G$interrupt_LCD$0$0
	C$main.c$244$1_0$185	= .
	.globl	C$main.c$244$1_0$185
;src/main.c:244: void interrupt_LCD(void){
;	---------------------------------
; Function interrupt_LCD
; ---------------------------------
_interrupt_LCD::
	C$main.c$245$1_0$185	= .
	.globl	C$main.c$245$1_0$185
;src/main.c:245: if(LYC_REG == 0x00){
	ld	a, (#_LYC_REG)
	C$main.c$246$2_0$186	= .
	.globl	C$main.c$246$2_0$186
;src/main.c:246: SCX_REG = 0x00;
	or	a,a
	jr	NZ, 00104$
	ldh	(_SCX_REG + 0), a
	C$main.c$247$2_0$186	= .
	.globl	C$main.c$247$2_0$186
;src/main.c:247: LYC_REG = (144 - end_p_height);
	ld	hl, #_end_p_height
	ld	c, (hl)
	ld	a, #0x90
	sub	a, c
	ldh	(_LYC_REG + 0), a
	ret
00104$:
	C$main.c$249$1_0$185	= .
	.globl	C$main.c$249$1_0$185
;src/main.c:249: else if(LYC_REG == (144 - end_p_height)){
	ld	hl, #_end_p_height
	ld	c, (hl)
	ld	b, #0x00
	ld	a, #0x90
	sub	a, c
	ld	c, a
	sbc	a, a
	sub	a, b
	ld	b, a
	ldh	a, (_LYC_REG + 0)
	ld	e, a
	ld	d, #0x00
	ld	a, e
	sub	a, c
	ret	NZ
	ld	a, d
	sub	a, b
	ret	NZ
	C$main.c$250$2_0$187	= .
	.globl	C$main.c$250$2_0$187
;src/main.c:250: SCX_REG = mapped_bookmark;
	ld	a, (#_mapped_bookmark)
	ldh	(_SCX_REG + 0), a
	C$main.c$251$2_0$187	= .
	.globl	C$main.c$251$2_0$187
;src/main.c:251: LYC_REG = 0x00;
	xor	a, a
	ldh	(_LYC_REG + 0), a
	C$main.c$254$1_0$185	= .
	.globl	C$main.c$254$1_0$185
;src/main.c:254: }
	C$main.c$254$1_0$185	= .
	.globl	C$main.c$254$1_0$185
	XG$interrupt_LCD$0$0	= .
	.globl	XG$interrupt_LCD$0$0
	ret
	G$main$0$0	= .
	.globl	G$main$0$0
	C$main.c$256$1_0$189	= .
	.globl	C$main.c$256$1_0$189
;src/main.c:256: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
	C$main.c$262$1_0$189	= .
	.globl	C$main.c$262$1_0$189
;src/main.c:262: }
	di
	C$main.c$259$2_0$190	= .
	.globl	C$main.c$259$2_0$190
;src/main.c:259: STAT_REG = 0x45;
	ld	a, #0x45
	ldh	(_STAT_REG + 0), a
	C$main.c$260$2_0$190	= .
	.globl	C$main.c$260$2_0$190
;src/main.c:260: LYC_REG = 0x00;
	xor	a, a
	ldh	(_LYC_REG + 0), a
	C$main.c$261$2_0$190	= .
	.globl	C$main.c$261$2_0$190
;src/main.c:261: add_LCD(interrupt_LCD);
	ld	de, #_interrupt_LCD
	push	de
	call	_add_LCD
	pop	hl
	ei
	C$main.c$263$1_0$189	= .
	.globl	C$main.c$263$1_0$189
;src/main.c:263: set_interrupts(VBL_IFLAG | LCD_IFLAG);
	ld	a, #0x03
	push	af
	inc	sp
	call	_set_interrupts
	inc	sp
	C$main.c$265$1_0$189	= .
	.globl	C$main.c$265$1_0$189
;src/main.c:265: font_init();
	call	_font_init
	C$main.c$266$1_0$189	= .
	.globl	C$main.c$266$1_0$189
;src/main.c:266: book_font = font_load(font_spect);
	ld	de, #_font_spect
	push	de
	call	_font_load
	pop	hl
	ld	hl, #_book_font
	ld	a, e
	ld	(hl+), a
	C$main.c$267$1_0$189	= .
	.globl	C$main.c$267$1_0$189
;src/main.c:267: font_set(book_font);
	ld	a, d
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	call	_font_set
	pop	hl
	C$main.c$269$1_0$189	= .
	.globl	C$main.c$269$1_0$189
;src/main.c:269: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
	C$main.c$270$1_0$189	= .
	.globl	C$main.c$270$1_0$189
;src/main.c:270: h_right = false;
	ld	hl, #_h_right
	ld	(hl), #0x00
	C$main.c$271$1_0$189	= .
	.globl	C$main.c$271$1_0$189
;src/main.c:271: h_left = false;
	ld	hl, #_h_left
	ld	(hl), #0x00
	C$main.c$273$1_0$189	= .
	.globl	C$main.c$273$1_0$189
;src/main.c:273: frame = 0;
	ld	hl, #_frame
	ld	(hl), #0x00
	C$main.c$274$1_0$189	= .
	.globl	C$main.c$274$1_0$189
;src/main.c:274: SWITCH_ROM( BANK(gatsby_1) );
	ld	a, #<(___bank_gatsby_1)
	ldh	(__current_bank + 0), a
	ld	a, #<(___bank_gatsby_1)
	ld	(#0x2000),a
	C$main.c$275$1_0$189	= .
	.globl	C$main.c$275$1_0$189
;src/main.c:275: printf("Hello world");
	ld	de, #___str_0
	push	de
	call	_printf
	pop	hl
	C$main.c$276$1_0$189	= .
	.globl	C$main.c$276$1_0$189
;src/main.c:276: current_page = page_1;
	ld	de, #0x0170
	push	de
	ld	de, #_page_1
	push	de
	ld	de, #_current_page
	push	de
	call	___memcpy
	add	sp, #6
	C$main.c$277$1_0$189	= .
	.globl	C$main.c$277$1_0$189
;src/main.c:277: page_number = 1;
	ld	hl, #_page_number
	ld	a, #0x01
	ld	(hl+), a
	xor	a, a
	ld	(hl), a
	C$main.c$278$1_0$189	= .
	.globl	C$main.c$278$1_0$189
;src/main.c:278: set_bkg_data(102, 10, Bookmark_tiles);
	ld	de, #_Bookmark_tiles
	push	de
	ld	hl, #0xa66
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$main.c$279$1_0$189	= .
	.globl	C$main.c$279$1_0$189
;src/main.c:279: set_bkg_tiles(0, 18, 32, 3, bookmark);
	ld	de, #_bookmark
	push	de
	ld	hl, #0x320
	push	hl
	ld	hl, #0x1200
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$main.c$280$1_0$189	= .
	.globl	C$main.c$280$1_0$189
;src/main.c:280: set_bkg_tiles(0, 0, 20, 18, current_page.page_data);
	ld	de, #(_current_page + 8)
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$main.c$282$1_0$189	= .
	.globl	C$main.c$282$1_0$189
;src/main.c:282: while(1) {
00119$:
	C$main.c$284$2_0$191	= .
	.globl	C$main.c$284$2_0$191
;src/main.c:284: update_joy();
	call	_update_joy
	C$main.c$286$2_0$191	= .
	.globl	C$main.c$286$2_0$191
;src/main.c:286: if(a_button_down){
	ld	hl, #_a_button_down
	bit	0, (hl)
	jr	Z, 00107$
	C$main.c$287$3_0$192	= .
	.globl	C$main.c$287$3_0$192
;src/main.c:287: page_select = !page_select;
	ld	hl, #_page_select
	ld	a, (hl)
	xor	a, #0x01
	ld	(hl), a
	C$main.c$288$3_0$192	= .
	.globl	C$main.c$288$3_0$192
;src/main.c:288: if(page_select){
	bit	0, (hl)
	jr	Z, 00104$
	C$main.c$289$4_0$193	= .
	.globl	C$main.c$289$4_0$193
;src/main.c:289: page_number_temp = page_number;
	ld	a, (#_page_number)
	ld	(#_page_number_temp),a
	ld	a, (#_page_number + 1)
	ld	(#_page_number_temp + 1),a
	C$main.c$290$4_0$193	= .
	.globl	C$main.c$290$4_0$193
;src/main.c:290: update_page_bookmark();
	call	_update_page_bookmark
	C$main.c$291$5_0$194	= .
	.globl	C$main.c$291$5_0$194
;src/main.c:291: for(end_p_height=0; end_p_height<20; end_p_height++){
	ld	hl, #_end_p_height
	ld	(hl), #0x00
00124$:
;src/main.c:292: move_bkg(0, end_p_height);
	ld	hl, #_end_p_height
	ld	c, (hl)
;C:/gbdk/include/gb/gb.h:1080: SCX_REG=x, SCY_REG=y;
	xor	a, a
	ldh	(_SCX_REG + 0), a
	ld	a, c
	ldh	(_SCY_REG + 0), a
	C$main.c$293$6_0$195	= .
	.globl	C$main.c$293$6_0$195
;src/main.c:293: wait_vbl_done();
	call	_wait_vbl_done
	C$main.c$291$5_0$194	= .
	.globl	C$main.c$291$5_0$194
;src/main.c:291: for(end_p_height=0; end_p_height<20; end_p_height++){
	ld	hl, #_end_p_height
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x14
	jr	C, 00124$
	jr	00107$
00104$:
	C$main.c$297$4_0$196	= .
	.globl	C$main.c$297$4_0$196
;src/main.c:297: jump_page();
	call	_jump_page
	C$main.c$299$5_0$197	= .
	.globl	C$main.c$299$5_0$197
;src/main.c:299: for(end_p_height=20; end_p_height!=255; end_p_height--){
	ld	hl, #_end_p_height
	ld	(hl), #0x14
00126$:
;src/main.c:300: move_bkg(0, end_p_height);
	ld	hl, #_end_p_height
	ld	c, (hl)
;C:/gbdk/include/gb/gb.h:1080: SCX_REG=x, SCY_REG=y;
	xor	a, a
	ldh	(_SCX_REG + 0), a
	ld	a, c
	ldh	(_SCY_REG + 0), a
	C$main.c$301$6_0$198	= .
	.globl	C$main.c$301$6_0$198
;src/main.c:301: wait_vbl_done();
	call	_wait_vbl_done
	C$main.c$299$5_0$197	= .
	.globl	C$main.c$299$5_0$197
;src/main.c:299: for(end_p_height=20; end_p_height!=255; end_p_height--){
	ld	hl, #_end_p_height
	dec	(hl)
	ld	a, (hl)
	inc	a
	jr	NZ, 00126$
	C$main.c$303$4_0$196	= .
	.globl	C$main.c$303$4_0$196
;src/main.c:303: end_p_height = 0;
	ld	hl, #_end_p_height
	ld	(hl), #0x00
00107$:
	C$main.c$307$2_0$191	= .
	.globl	C$main.c$307$2_0$191
;src/main.c:307: if(b_button_down && page_select){
	ld	hl, #_b_button_down
	bit	0, (hl)
	jr	Z, 00110$
	ld	hl, #_page_select
	bit	0, (hl)
	jr	Z, 00110$
	C$main.c$308$3_0$199	= .
	.globl	C$main.c$308$3_0$199
;src/main.c:308: page_select = false;
	ld	(hl), #0x00
	C$main.c$309$4_0$200	= .
	.globl	C$main.c$309$4_0$200
;src/main.c:309: for(end_p_height=20; end_p_height!=255; end_p_height--){
	ld	hl, #_end_p_height
	ld	(hl), #0x14
00128$:
;src/main.c:310: move_bkg(0, end_p_height);
	ld	hl, #_end_p_height
	ld	c, (hl)
;C:/gbdk/include/gb/gb.h:1080: SCX_REG=x, SCY_REG=y;
	xor	a, a
	ldh	(_SCX_REG + 0), a
	ld	a, c
	ldh	(_SCY_REG + 0), a
	C$main.c$311$5_0$201	= .
	.globl	C$main.c$311$5_0$201
;src/main.c:311: wait_vbl_done();
	call	_wait_vbl_done
	C$main.c$309$4_0$200	= .
	.globl	C$main.c$309$4_0$200
;src/main.c:309: for(end_p_height=20; end_p_height!=255; end_p_height--){
	ld	hl, #_end_p_height
	dec	(hl)
	ld	a, (hl)
	inc	a
	jr	NZ, 00128$
	C$main.c$313$3_0$199	= .
	.globl	C$main.c$313$3_0$199
;src/main.c:313: end_p_height = 0;
	ld	hl, #_end_p_height
	ld	(hl), #0x00
	C$main.c$314$3_0$199	= .
	.globl	C$main.c$314$3_0$199
;src/main.c:314: page_number = page_number_temp;
	ld	a, (#_page_number_temp)
	ld	(#_page_number),a
	ld	a, (#_page_number_temp + 1)
	ld	(#_page_number + 1),a
00110$:
	C$main.c$317$2_0$191	= .
	.globl	C$main.c$317$2_0$191
;src/main.c:317: if(page_select){
	ld	hl, #_page_select
	bit	0, (hl)
	jr	Z, 00113$
	C$main.c$318$3_0$202	= .
	.globl	C$main.c$318$3_0$202
;src/main.c:318: choose_page();
	call	_choose_page
	C$main.c$319$3_0$202	= .
	.globl	C$main.c$319$3_0$202
;src/main.c:319: wait_vbl_done();
	call	_wait_vbl_done
	C$main.c$320$3_0$202	= .
	.globl	C$main.c$320$3_0$202
;src/main.c:320: continue;
	jp	00119$
00113$:
	C$main.c$322$2_0$191	= .
	.globl	C$main.c$322$2_0$191
;src/main.c:322: if(r_button_down){
	ld	hl, #_r_button_down
	bit	0, (hl)
	jr	Z, 00115$
	C$main.c$323$3_0$203	= .
	.globl	C$main.c$323$3_0$203
;src/main.c:323: next_page();
	call	_next_page
00115$:
	C$main.c$325$2_0$191	= .
	.globl	C$main.c$325$2_0$191
;src/main.c:325: if(l_button_down){
	ld	hl, #_l_button_down
	bit	0, (hl)
	jr	Z, 00117$
	C$main.c$326$3_0$204	= .
	.globl	C$main.c$326$3_0$204
;src/main.c:326: prev_page();
	call	_prev_page
00117$:
	C$main.c$330$2_0$191	= .
	.globl	C$main.c$330$2_0$191
;src/main.c:330: frame++;
	ld	hl, #_frame
	inc	(hl)
	C$main.c$331$2_0$191	= .
	.globl	C$main.c$331$2_0$191
;src/main.c:331: wait_vbl_done();
	call	_wait_vbl_done
	C$main.c$333$1_0$189	= .
	.globl	C$main.c$333$1_0$189
;src/main.c:333: }
	C$main.c$333$1_0$189	= .
	.globl	C$main.c$333$1_0$189
	XG$main$0$0	= .
	.globl	XG$main$0$0
	jp	00119$
Fmain$__str_0$0_0$0 == .
___str_0:
	.ascii "Hello world"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
