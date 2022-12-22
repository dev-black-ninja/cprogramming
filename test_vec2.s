	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 1
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	d9, d8, [sp, #16]               ; 16-byte Folded Spill
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset b8, -88
	.cfi_offset b9, -96
	mov	x0, #0
	bl	_time
                                        ; kill: def $w0 killed $w0 killed $x0
	bl	_srand
	bl	_vector2_print_vector2_type_info
	mov	w0, #128
	bl	_vector2_alloc_vector2_aligned
	cbz	x0, LBB0_8
; %bb.1:
	mov	x19, x0
	str	x0, [sp]
Lloh0:
	adrp	x0, l_.str.1@PAGE
Lloh1:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	mov	x8, #70368744177664
	movk	x8, #16527, lsl #48
	fmov	d0, x8
	fmov	d1, #10.00000000
	mov	x0, x19
	bl	_vector2_rand_init_vector2
	bl	_clock
	mov	x21, x0
	mov	w0, #128
	bl	_vector2_alloc_vector2_aligned
	mov	x20, x0
	bl	_clock
	sub	x8, x0, x21
	ucvtf	d0, x8
	mov	x8, #60813
	movk	x8, #41141, lsl #16
	movk	x8, #50935, lsl #32
	movk	x8, #16048, lsl #48
	fmov	d1, x8
	fmul	d0, d0, d1
	str	d0, [sp]
Lloh2:
	adrp	x0, l_.str.2@PAGE
Lloh3:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	str	x20, [sp]
Lloh4:
	adrp	x0, l_.str.3@PAGE
Lloh5:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	cbz	x20, LBB0_9
; %bb.2:
	bl	_clock
	mov	x22, x0
	mov	w0, #128
	bl	_vector2_alloc_vector2_aligned
	mov	x21, x0
	bl	_clock
	sub	x8, x0, x22
	ucvtf	d0, x8
	mov	x8, #60813
	movk	x8, #41141, lsl #16
	movk	x8, #50935, lsl #32
	movk	x8, #16048, lsl #48
	fmov	d1, x8
	fmul	d0, d0, d1
	str	d0, [sp]
Lloh6:
	adrp	x0, l_.str.5@PAGE
Lloh7:
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_printf
	str	x21, [sp]
Lloh8:
	adrp	x0, l_.str.6@PAGE
Lloh9:
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_printf
	cbz	x21, LBB0_10
; %bb.3:
	mov	x8, #4650248090236747776
	fmov	d0, x8
	fmov	d1, #20.00000000
	mov	x0, x20
	bl	_vector2_rand_init_vector2
	bl	_clock
	mov	x22, x0
	mov	x0, x21
	mov	x1, x19
	mov	x2, x20
	bl	_vector2_add
	bl	_clock
	sub	x8, x0, x22
	ucvtf	d0, x8
	mov	x8, #60813
	movk	x8, #41141, lsl #16
	movk	x8, #50935, lsl #32
	movk	x8, #16048, lsl #48
	fmov	d1, x8
	fmul	d0, d0, d1
	str	d0, [sp]
Lloh10:
	adrp	x0, l_.str.8@PAGE
Lloh11:
	add	x0, x0, l_.str.8@PAGEOFF
	bl	_printf
	mov	w0, #128
	bl	_vector2_alloc_vector2_aligned
	cbz	x0, LBB0_11
; %bb.4:
	mov	x22, x0
	mov	w0, #128
	bl	_vector2_alloc_vector2_aligned
	cbz	x0, LBB0_12
; %bb.5:
	mov	x23, x0
	bl	_vector2_zero_init_vector2
	bl	_clock
	mov	x24, x0
	mov	x0, x22
	mov	x1, x20
	bl	_vector2_transpose
	mov	x0, x23
	mov	x1, x19
	mov	x2, x22
	bl	_vector2_mul_transpose
	bl	_clock
	sub	x8, x0, x24
	ucvtf	d0, x8
	mov	x8, #60813
	movk	x8, #41141, lsl #16
	movk	x8, #50935, lsl #32
	movk	x8, #16048, lsl #48
	fmov	d8, x8
	fmul	d0, d0, d8
	str	d0, [sp]
Lloh12:
	adrp	x0, l_.str.11@PAGE
Lloh13:
	add	x0, x0, l_.str.11@PAGEOFF
	bl	_printf
	mov	x0, x23
	bl	_vector2_zero_init_vector2
	bl	_clock
	mov	x24, x0
	mov	x0, x23
	mov	x1, x19
	mov	x2, x20
	bl	_vector2_mul
	bl	_clock
	sub	x8, x0, x24
	ucvtf	d0, x8
	fmul	d0, d0, d8
	str	d0, [sp]
Lloh14:
	adrp	x0, l_.str.12@PAGE
Lloh15:
	add	x0, x0, l_.str.12@PAGEOFF
	bl	_printf
	bl	_vector2_alloc_rowsum1
	cbz	x0, LBB0_13
; %bb.6:
	mov	x24, x0
	bl	_clock
	mov	x25, x0
	mov	x0, x24
	mov	x1, x21
	bl	_vector2_sum_rows
	bl	_clock
	sub	x8, x0, x25
	ucvtf	d0, x8
	mov	x8, #60813
	movk	x8, #41141, lsl #16
	movk	x8, #50935, lsl #32
	movk	x8, #16048, lsl #48
	fmov	d1, x8
	fmul	d0, d0, d1
	str	d0, [sp]
Lloh16:
	adrp	x0, l_.str.14@PAGE
Lloh17:
	add	x0, x0, l_.str.14@PAGEOFF
	bl	_printf
	bl	_vector2_alloc_colsum1
	cbz	x0, LBB0_14
; %bb.7:
	mov	x25, x0
	bl	_clock
	mov	x26, x0
	mov	x0, x25
	mov	x1, x20
	bl	_vector2_sum_cols
	bl	_clock
	sub	x8, x0, x26
	ucvtf	d0, x8
	mov	x8, #60813
	movk	x8, #41141, lsl #16
	movk	x8, #50935, lsl #32
	movk	x8, #16048, lsl #48
	fmov	d1, x8
	fmul	d0, d0, d1
	str	d0, [sp]
Lloh18:
	adrp	x0, l_.str.16@PAGE
Lloh19:
	add	x0, x0, l_.str.16@PAGEOFF
	bl	_printf
	mov	x0, x19
	bl	_vector2_free_vector2
	mov	x0, x20
	bl	_vector2_free_vector2
	mov	x0, x21
	bl	_vector2_free_vector2
	mov	x0, x22
	bl	_vector2_free_vector2
	mov	x0, x23
	bl	_vector2_free_vector2
	mov	x0, x24
	bl	_vector2_free_rowsum1
	mov	x0, x25
	bl	_vector2_free_colsum1
	mov	w19, #0
	b	LBB0_15
LBB0_8:
Lloh20:
	adrp	x8, ___stderrp@GOTPAGE
Lloh21:
	ldr	x8, [x8, ___stderrp@GOTPAGEOFF]
Lloh22:
	ldr	x3, [x8]
Lloh23:
	adrp	x0, l_.str@PAGE
Lloh24:
	add	x0, x0, l_.str@PAGEOFF
	mov	w19, #1
	mov	w1, #37
	mov	w2, #1
	bl	_fwrite
	b	LBB0_15
LBB0_9:
Lloh25:
	adrp	x8, ___stderrp@GOTPAGE
Lloh26:
	ldr	x8, [x8, ___stderrp@GOTPAGEOFF]
Lloh27:
	ldr	x3, [x8]
Lloh28:
	adrp	x0, l_.str.4@PAGE
Lloh29:
	add	x0, x0, l_.str.4@PAGEOFF
	mov	w19, #1
	mov	w1, #37
	mov	w2, #1
	bl	_fwrite
                                        ; kill: def $w19 killed $w19 killed $x19 def $x19
	b	LBB0_15
LBB0_10:
Lloh30:
	adrp	x8, ___stderrp@GOTPAGE
Lloh31:
	ldr	x8, [x8, ___stderrp@GOTPAGEOFF]
Lloh32:
	ldr	x3, [x8]
Lloh33:
	adrp	x0, l_.str.7@PAGE
Lloh34:
	add	x0, x0, l_.str.7@PAGEOFF
	mov	w1, #38
	mov	w2, #1
	bl	_fwrite
	mov	w19, #2
	b	LBB0_15
LBB0_11:
Lloh35:
	adrp	x8, ___stderrp@GOTPAGE
Lloh36:
	ldr	x8, [x8, ___stderrp@GOTPAGEOFF]
Lloh37:
	ldr	x3, [x8]
Lloh38:
	adrp	x0, l_.str.9@PAGE
Lloh39:
	add	x0, x0, l_.str.9@PAGEOFF
	mov	w1, #38
	mov	w2, #1
	bl	_fwrite
	mov	w19, #7
	b	LBB0_15
LBB0_12:
Lloh40:
	adrp	x8, ___stderrp@GOTPAGE
Lloh41:
	ldr	x8, [x8, ___stderrp@GOTPAGEOFF]
Lloh42:
	ldr	x3, [x8]
Lloh43:
	adrp	x0, l_.str.10@PAGE
Lloh44:
	add	x0, x0, l_.str.10@PAGEOFF
	mov	w1, #38
	mov	w2, #1
	bl	_fwrite
	mov	w19, #5
	b	LBB0_15
LBB0_13:
Lloh45:
	adrp	x8, ___stderrp@GOTPAGE
Lloh46:
	ldr	x8, [x8, ___stderrp@GOTPAGEOFF]
Lloh47:
	ldr	x3, [x8]
Lloh48:
	adrp	x0, l_.str.13@PAGE
Lloh49:
	add	x0, x0, l_.str.13@PAGEOFF
	mov	w1, #39
	mov	w2, #1
	bl	_fwrite
	mov	w19, #3
	b	LBB0_15
LBB0_14:
Lloh50:
	adrp	x8, ___stderrp@GOTPAGE
Lloh51:
	ldr	x8, [x8, ___stderrp@GOTPAGEOFF]
Lloh52:
	ldr	x3, [x8]
Lloh53:
	adrp	x0, l_.str.15@PAGE
Lloh54:
	add	x0, x0, l_.str.15@PAGEOFF
	mov	w1, #39
	mov	w2, #1
	bl	_fwrite
	mov	w19, #4
LBB0_15:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #16]               ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpAdd	Lloh23, Lloh24
	.loh AdrpLdrGotLdr	Lloh20, Lloh21, Lloh22
	.loh AdrpAdd	Lloh28, Lloh29
	.loh AdrpLdrGotLdr	Lloh25, Lloh26, Lloh27
	.loh AdrpAdd	Lloh33, Lloh34
	.loh AdrpLdrGotLdr	Lloh30, Lloh31, Lloh32
	.loh AdrpAdd	Lloh38, Lloh39
	.loh AdrpLdrGotLdr	Lloh35, Lloh36, Lloh37
	.loh AdrpAdd	Lloh43, Lloh44
	.loh AdrpLdrGotLdr	Lloh40, Lloh41, Lloh42
	.loh AdrpAdd	Lloh48, Lloh49
	.loh AdrpLdrGotLdr	Lloh45, Lloh46, Lloh47
	.loh AdrpAdd	Lloh53, Lloh54
	.loh AdrpLdrGotLdr	Lloh50, Lloh51, Lloh52
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Cannot allocate memory for v1 object\n"

l_.str.1:                               ; @.str.1
	.asciz	"v1 = %p\n"

l_.str.2:                               ; @.str.2
	.asciz	"v2 alloc: %.20f\n"

l_.str.3:                               ; @.str.3
	.asciz	"v2 = %p\n"

l_.str.4:                               ; @.str.4
	.asciz	"Cannot allocate memory for v2 object\n"

l_.str.5:                               ; @.str.5
	.asciz	"sum alloc: %.20f\n"

l_.str.6:                               ; @.str.6
	.asciz	"sum = %p\n"

l_.str.7:                               ; @.str.7
	.asciz	"Cannot allocate memory for sum object\n"

l_.str.8:                               ; @.str.8
	.asciz	"add: %.20f\n"

l_.str.9:                               ; @.str.9
	.asciz	"Cannot allocate memory for tv2 object\n"

l_.str.10:                              ; @.str.10
	.asciz	"Cannot allocate memory for mul object\n"

l_.str.11:                              ; @.str.11
	.asciz	"mul transposed: %.20f\n"

l_.str.12:                              ; @.str.12
	.asciz	"mul: %.20f\n"

l_.str.13:                              ; @.str.13
	.asciz	"Cannot allocate memory for rsum object\n"

l_.str.14:                              ; @.str.14
	.asciz	"rowsum: %.20f\n"

l_.str.15:                              ; @.str.15
	.asciz	"Cannot allocate memory for csum object\n"

l_.str.16:                              ; @.str.16
	.asciz	"colsum: %.20f\n"

.subsections_via_symbols
