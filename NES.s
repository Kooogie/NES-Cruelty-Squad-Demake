;
; File generated by cc65 v 2.19 - Git ce3bcad
;
	.fopt		compiler,"cc65 v 2.19 - Git ce3bcad"
	.setcpu		"6502"
	.smart		on
	.autoimport	on
	.case		on
	.debuginfo	off
	.importzp	sp, sreg, regsave, regbank
	.importzp	tmp1, tmp2, tmp3, tmp4, ptr1, ptr2, ptr3, ptr4
	.macpack	longbranch

	.export		_main

; ---------------------------------------------------------------
; int __near__ main (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_main: near

.segment	"CODE"

	lda     #$01
	sta     $6104
	lda     #$20
	sta     $6100
	lda     #$1A
	sta     $6101
	lda     #$02
	sta     $6102
	lda     #$20
	sta     $6103
	lda     #$00
	sta     $0050
L0035:	lda     $0050
	cmp     #$FF
	bcs     L0036
	ldy     $0050
	ldx     #$00
	lda     $F000,y
	sta     M0002
	stx     M0002+1
	lda     #$20
	sta     $2006
	lda     $0050
	sta     $2006
	lda     M0002
	sta     $2007
	inc     $0050
	jmp     L0035
L0036:	lda     #$00
	sta     $0050
L0037:	lda     $0050
	cmp     #$FF
	bcs     L0038
	ldy     $0050
	ldx     #$00
	lda     $F100,y
	sta     M0002
	stx     M0002+1
	lda     #$21
	sta     $2006
	lda     $0050
	sta     $2006
	lda     M0002
	sta     $2007
	inc     $0050
	jmp     L0037
L0038:	lda     #$00
	sta     $0050
L0039:	lda     $0050
	cmp     #$FF
	bcs     L003A
	ldy     $0050
	ldx     #$00
	lda     $F200,y
	sta     M0002
	stx     M0002+1
	lda     #$22
	sta     $2006
	lda     $0050
	sta     $2006
	lda     M0002
	sta     $2007
	inc     $0050
	jmp     L0039
L003A:	lda     #$00
	sta     $0050
L003B:	lda     $0050
	cmp     #$C0
	bcs     L003C
	ldy     $0050
	ldx     #$00
	lda     $F300,y
	sta     M0002
	stx     M0002+1
	lda     #$23
	sta     $2006
	lda     $0050
	sta     $2006
	lda     M0002
	sta     $2007
	inc     $0050
	jmp     L003B
L003C:	lda     #$00
	sta     $0009
	lda     #$01
	sta     $0011
	sta     $0013
	lda     #$BF
	sta     $0050
L003D:	lda     $0050
	cmp     #$10
	beq     L003E
	ldy     $0050
	ldx     #$00
	lda     $FC00,y
	sta     M0002
	stx     M0002+1
	lda     #$3F
	sta     $2006
	lda     $0050
	sta     $2006
	lda     M0002
	sta     $2007
	inc     $0050
	jmp     L003D
L003E:	lda     #$20
	sta     $2006
	lda     #$00
	sta     $2006
	sta     $2007
	lda     #$1A
	sta     $2001
L003F:	lda     #$01
	sta     $4016
	lda     #$00
	sta     $4016
	sta     M0001
L0040:	lda     M0001
	cmp     #$08
	beq     L0041
	lda     $4016
	and     #$01
	sta     $0014
	lda     $0015
	asl     a
	sta     $0015
	lda     $0014
	ora     $0015
	sta     $0015
	inc     M0001
	jmp     L0040
L0041:	lda     $0015
	cmp     #$80
	bne     L0042
	lda     $0016
	cmp     $0015
	beq     L0048
	lda     $0015
	sta     $0016
	jmp     L0048
L0042:	lda     $0015
	cmp     #$40
	bne     L0043
	lda     $0016
	cmp     $0015
	beq     L0048
	lda     $0015
	sta     $0016
	jmp     L0048
L0043:	lda     $0015
	cmp     #$01
	bne     L0044
	lda     $0016
	cmp     $0015
	beq     L0048
	inc     $6100
	inc     $6104
	lda     $0015
	sta     $0016
	jmp     L0048
L0044:	lda     $0015
	cmp     #$02
	bne     L0045
	lda     $0016
	cmp     $0015
	beq     L0048
	lda     $0015
	sta     $0016
	jmp     L0048
L0045:	lda     $0015
	cmp     #$04
	bne     L0046
	lda     $0016
	cmp     $0015
	beq     L0048
	lda     $0015
	sta     $0016
	jmp     L0048
L0046:	lda     $0015
	cmp     #$08
	bne     L0047
	lda     $0016
	cmp     $0015
	beq     L0048
	lda     $0015
	sta     $0016
	jmp     L0048
L0047:	lda     #$00
	sta     $0016
	sta     $0015
L0048:	lda     $6104
	jeq     L003F
	lda     #$00
	sta     $2001
	lda     #$61
	sta     $4014
	lda     #$1A
	sta     $2001
	lda     #$00
	sta     $6104
	jmp     L003F

.segment	"BSS"

M0001:
	.res	6,$00
M0002:
	.res	2,$00

.endproc

