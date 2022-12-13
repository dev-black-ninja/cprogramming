	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 0
	.globl	__loop_rowise_optim_internal_column ; -- Begin function _loop_rowise_optim_internal_column
	.p2align	2
__loop_rowise_optim_internal_column:    ; @_loop_rowise_optim_internal_column
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	mov	w8, #625
	str	w8, [sp, #28]
	str	wzr, [sp, #24]
	mov	w8, #4
	str	w8, [sp, #20]
	mov	w8, #8
	str	w8, [sp, #16]
	mov	w8, #12
	str	w8, [sp, #12]
	b	LBB0_1
LBB0_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_2 Depth 2
	b	LBB0_2
LBB0_2:                                 ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x9, [sp, #40]
	ldrsw	x10, [sp, #24]
	mov	w8, #1
	str	w8, [sp, #8]                    ; 4-byte Folded Spill
	str	w8, [x9, x10, lsl #2]
	ldr	x9, [sp, #40]
	ldrsw	x10, [sp, #20]
	str	w8, [x9, x10, lsl #2]
	ldr	x9, [sp, #40]
	ldrsw	x10, [sp, #16]
	str	w8, [x9, x10, lsl #2]
	ldr	x9, [sp, #40]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	ldr	x9, [sp, #32]
	ldrsw	x10, [sp, #24]
	str	w8, [x9, x10, lsl #2]
	ldr	x9, [sp, #32]
	ldrsw	x10, [sp, #20]
	str	w8, [x9, x10, lsl #2]
	ldr	x9, [sp, #32]
	ldrsw	x10, [sp, #16]
	str	w8, [x9, x10, lsl #2]
	ldr	x9, [sp, #32]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_2 Depth=2
	ldr	w8, [sp, #24]
	and	w8, w8, #0x3
	cbnz	w8, LBB0_2
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #24]
	add	w8, w8, #12
	str	w8, [sp, #24]
	ldr	w8, [sp, #20]
	add	w8, w8, #12
	str	w8, [sp, #20]
	ldr	w8, [sp, #16]
	add	w8, w8, #12
	str	w8, [sp, #16]
	ldr	w8, [sp, #12]
	add	w8, w8, #12
	str	w8, [sp, #12]
	ldr	w8, [sp, #28]
	subs	w8, w8, #1
	str	w8, [sp, #28]
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #28]
	cbnz	w8, LBB0_1
	b	LBB0_6
LBB0_6:
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__loop_rowise_optim             ; -- Begin function _loop_rowise_optim
	.p2align	2
__loop_rowise_optim:                    ; @_loop_rowise_optim
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	mov	w8, #1250
	str	w8, [sp, #4]
	str	wzr, [sp]
	b	LBB1_1
LBB1_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_2 Depth 2
	b	LBB1_2
LBB1_2:                                 ;   Parent Loop BB1_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #8]
	ldrsw	x9, [sp]
	mov	x10, #40000
	mul	x9, x9, x10
	add	x0, x8, x9
	ldr	x10, [sp, #8]
	ldr	w8, [sp]
	add	w8, w8, #4
	mov	w9, #40000
	smaddl	x1, w8, w9, x10
	bl	__loop_rowise_optim_internal_column
	ldr	w8, [sp]
	add	w8, w8, #1
	str	w8, [sp]
	b	LBB1_3
LBB1_3:                                 ;   in Loop: Header=BB1_2 Depth=2
	ldr	w8, [sp]
	and	w8, w8, #0x3
	cbnz	w8, LBB1_2
	b	LBB1_4
LBB1_4:                                 ;   in Loop: Header=BB1_1 Depth=1
	ldr	w8, [sp]
	add	w8, w8, #4
	str	w8, [sp]
	ldr	w8, [sp, #4]
	subs	w8, w8, #1
	str	w8, [sp, #4]
	b	LBB1_5
LBB1_5:                                 ;   in Loop: Header=BB1_1 Depth=1
	ldr	w8, [sp, #4]
	cbnz	w8, LBB1_1
	b	LBB1_6
LBB1_6:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__loop_colwise                  ; -- Begin function _loop_colwise
	.p2align	2
__loop_colwise:                         ; @_loop_colwise
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	wzr, [sp, #8]
	b	LBB2_1
LBB2_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_3 Depth 2
	ldr	w8, [sp, #8]
	mov	w9, #10000
	subs	w8, w8, w9
	b.ge	LBB2_8
	b	LBB2_2
LBB2_2:                                 ;   in Loop: Header=BB2_1 Depth=1
	str	wzr, [sp, #12]
	b	LBB2_3
LBB2_3:                                 ;   Parent Loop BB2_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #12]
	mov	w9, #10000
	subs	w8, w8, w9
	b.ge	LBB2_6
	b	LBB2_4
LBB2_4:                                 ;   in Loop: Header=BB2_3 Depth=2
	ldrsw	x8, [sp, #12]
	mov	x9, #40000
	mul	x9, x8, x9
	adrp	x8, _ia@GOTPAGE
	ldr	x8, [x8, _ia@GOTPAGEOFF]
	add	x9, x8, x9
	ldrsw	x10, [sp, #8]
	mov	w8, #1
	str	w8, [x9, x10, lsl #2]
	b	LBB2_5
LBB2_5:                                 ;   in Loop: Header=BB2_3 Depth=2
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB2_3
LBB2_6:                                 ;   in Loop: Header=BB2_1 Depth=1
	b	LBB2_7
LBB2_7:                                 ;   in Loop: Header=BB2_1 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	LBB2_1
LBB2_8:
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__loop_rowise_baseline          ; -- Begin function _loop_rowise_baseline
	.p2align	2
__loop_rowise_baseline:                 ; @_loop_rowise_baseline
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	wzr, [sp, #8]
	b	LBB3_1
LBB3_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB3_3 Depth 2
	ldr	w8, [sp, #8]
	mov	w9, #10000
	subs	w8, w8, w9
	b.ge	LBB3_8
	b	LBB3_2
LBB3_2:                                 ;   in Loop: Header=BB3_1 Depth=1
	str	wzr, [sp, #12]
	b	LBB3_3
LBB3_3:                                 ;   Parent Loop BB3_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #12]
	mov	w9, #10000
	subs	w8, w8, w9
	b.ge	LBB3_6
	b	LBB3_4
LBB3_4:                                 ;   in Loop: Header=BB3_3 Depth=2
	ldrsw	x8, [sp, #8]
	mov	x9, #40000
	mul	x9, x8, x9
	adrp	x8, _ia@GOTPAGE
	ldr	x8, [x8, _ia@GOTPAGEOFF]
	add	x9, x8, x9
	ldrsw	x10, [sp, #12]
	mov	w8, #1
	str	w8, [x9, x10, lsl #2]
	b	LBB3_5
LBB3_5:                                 ;   in Loop: Header=BB3_3 Depth=2
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB3_3
LBB3_6:                                 ;   in Loop: Header=BB3_1 Depth=1
	b	LBB3_7
LBB3_7:                                 ;   in Loop: Header=BB3_1 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	LBB3_1
LBB3_8:
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ; -- Begin function main
lCPI4_0:
	.quad	0x412e848000000000              ; double 1.0E+6
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #0
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	stur	wzr, [x29, #-4]
	stur	w0, [x29, #-8]
	stur	x1, [x29, #-16]
	bl	_clock
	stur	x0, [x29, #-24]
	adrp	x0, _ia@GOTPAGE
	ldr	x0, [x0, _ia@GOTPAGEOFF]
	bl	__loop_rowise_optim
	bl	_clock
	str	x0, [sp, #32]
	ldr	x8, [sp, #32]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	ucvtf	d0, x8
	adrp	x8, lCPI4_0@PAGE
	ldr	d1, [x8, lCPI4_0@PAGEOFF]
	fdiv	d0, d0, d1
	str	d0, [sp, #24]
	ldr	d0, [sp, #24]
	mov	x8, sp
	str	d0, [x8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldr	w0, [sp, #20]                   ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.comm	_ia,400000000,2                 ; @ia
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Elapsed = %.20lf\n"

.subsections_via_symbols
