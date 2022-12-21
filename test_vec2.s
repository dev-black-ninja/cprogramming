	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 1
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x0, #0
	bl	_time
                                        ; kill: def $w0 killed $w0 killed $x0
	bl	_srand
	bl	_vector2_print_vector2_type_info
Lloh0:
	adrp	x0, _v@GOTPAGE
Lloh1:
	ldr	x0, [x0, _v@GOTPAGEOFF]
	mov	x8, #70368744177664
	movk	x8, #16527, lsl #48
	fmov	d0, x8
	fmov	d1, #10.00000000
	bl	_vector2_rand_init_vector2
	bl	_clock
	mov	x20, x0
	bl	_vector2_alloc_vector2
	mov	x19, x0
	bl	_clock
	sub	x8, x0, x20
	ucvtf	d0, x8
	adrp	x23, _icps@PAGE
	ldr	d1, [x23, _icps@PAGEOFF]
	fmul	d0, d1, d0
	str	d0, [sp]
Lloh2:
	adrp	x0, l_.str@PAGE
Lloh3:
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	cbz	x19, LBB0_4
; %bb.1:
	bl	_clock
	mov	x21, x0
	bl	_vector2_alloc_vector2
	mov	x20, x0
	bl	_clock
	sub	x8, x0, x21
	ucvtf	d0, x8
	ldr	d1, [x23, _icps@PAGEOFF]
	fmul	d0, d1, d0
	str	d0, [sp]
Lloh4:
	adrp	x0, l_.str.2@PAGE
Lloh5:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	cbz	x20, LBB0_5
; %bb.2:
	mov	x8, #4650248090236747776
	fmov	d0, x8
	fmov	d1, #20.00000000
	mov	x0, x19
	bl	_vector2_rand_init_vector2
	bl	_clock
	mov	x21, x0
Lloh6:
	adrp	x1, _v@GOTPAGE
Lloh7:
	ldr	x1, [x1, _v@GOTPAGEOFF]
	mov	x0, x20
	mov	x2, x19
	bl	_vector2_add
	bl	_clock
	sub	x8, x0, x21
	ucvtf	d0, x8
	ldr	d1, [x23, _icps@PAGEOFF]
	fmul	d0, d1, d0
	str	d0, [sp]
Lloh8:
	adrp	x0, l_.str.4@PAGE
Lloh9:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_printf
	bl	_vector2_alloc_rowsum1
	cbz	x0, LBB0_6
; %bb.3:
	mov	x21, x0
	bl	_clock
	mov	x22, x0
	mov	x0, x21
	mov	x1, x20
	bl	_vector2_sum_rows
	bl	_clock
	sub	x8, x0, x22
	ucvtf	d0, x8
	ldr	d1, [x23, _icps@PAGEOFF]
	fmul	d0, d1, d0
	str	d0, [sp]
Lloh10:
	adrp	x0, l_.str.6@PAGE
Lloh11:
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_printf
	mov	x0, x19
	bl	_vector2_free_vector2
	mov	x0, x20
	bl	_vector2_free_vector2
	mov	x0, x21
	bl	_vector2_free_rowsum1
	mov	w19, #0
	b	LBB0_7
LBB0_4:
Lloh12:
	adrp	x8, ___stderrp@GOTPAGE
Lloh13:
	ldr	x8, [x8, ___stderrp@GOTPAGEOFF]
Lloh14:
	ldr	x3, [x8]
Lloh15:
	adrp	x0, l_.str.1@PAGE
Lloh16:
	add	x0, x0, l_.str.1@PAGEOFF
	mov	w19, #1
	mov	w1, #37
	mov	w2, #1
	bl	_fwrite
	b	LBB0_7
LBB0_5:
Lloh17:
	adrp	x8, ___stderrp@GOTPAGE
Lloh18:
	ldr	x8, [x8, ___stderrp@GOTPAGEOFF]
Lloh19:
	ldr	x3, [x8]
Lloh20:
	adrp	x0, l_.str.3@PAGE
Lloh21:
	add	x0, x0, l_.str.3@PAGEOFF
	mov	w1, #38
	mov	w2, #1
	bl	_fwrite
	mov	w19, #2
	b	LBB0_7
LBB0_6:
Lloh22:
	adrp	x8, ___stderrp@GOTPAGE
Lloh23:
	ldr	x8, [x8, ___stderrp@GOTPAGEOFF]
Lloh24:
	ldr	x3, [x8]
Lloh25:
	adrp	x0, l_.str.5@PAGE
Lloh26:
	add	x0, x0, l_.str.5@PAGEOFF
	mov	w1, #39
	mov	w2, #1
	bl	_fwrite
	mov	w19, #3
LBB0_7:
	mov	x0, x19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpLdrGot	Lloh0, Lloh1
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpLdrGot	Lloh6, Lloh7
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh15, Lloh16
	.loh AdrpLdrGotLdr	Lloh12, Lloh13, Lloh14
	.loh AdrpAdd	Lloh20, Lloh21
	.loh AdrpLdrGotLdr	Lloh17, Lloh18, Lloh19
	.loh AdrpAdd	Lloh25, Lloh26
	.loh AdrpLdrGotLdr	Lloh22, Lloh23, Lloh24
	.cfi_endproc
                                        ; -- End function
	.section	__DATA,__data
	.globl	_icps                           ; @icps
	.p2align	3
_icps:
	.quad	0x3eb0c6f7a0b5ed8d              ; double 9.9999999999999995E-7

	.comm	_v,8000000,3                    ; @v
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"v2 alloc: %.20f\n"

l_.str.1:                               ; @.str.1
	.asciz	"Cannot allocate memory for v2 object\n"

l_.str.2:                               ; @.str.2
	.asciz	"sum alloc: %.20f\n"

l_.str.3:                               ; @.str.3
	.asciz	"Cannot allocate memory for sum object\n"

l_.str.4:                               ; @.str.4
	.asciz	"add: %.20f\n"

l_.str.5:                               ; @.str.5
	.asciz	"Cannot allocate memory for rsum object\n"

l_.str.6:                               ; @.str.6
	.asciz	"rowsum: %.20f\n"

.subsections_via_symbols