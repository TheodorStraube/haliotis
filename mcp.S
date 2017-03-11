#ifdef __linux__
#ifdef __i386__
	.text
	.file	"mcp-S.cc"
	.globl	_Z5printPKcz
	.align	16, 0x90
	.type	_Z5printPKcz,@function
_Z5printPKcz:                           # @_Z5printPKcz
# BB#0:
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$32, %esp
	calll	.L0$pb
.L0$pb:
	popl	%ebx
.Ltmp0:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp0-.L0$pb), %ebx
	movl	48(%esp), %esi
	leal	52(%esp), %eax
	movl	%eax, 28(%esp)
	movl	stderr@GOT(%ebx), %edi
	movl	(%edi), %eax
	movl	%eax, 12(%esp)
	leal	.L.str@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$1, 8(%esp)
	movl	$6, 4(%esp)
	calll	fwrite@PLT
	movl	(%edi), %eax
	movl	28(%esp), %ecx
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	calll	vfprintf@PLT
	addl	$32, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	retl
.Lfunc_end0:
	.size	_Z5printPKcz, .Lfunc_end0-_Z5printPKcz

	.globl	_Z8print_nlv
	.align	16, 0x90
	.type	_Z8print_nlv,@function
_Z8print_nlv:                           # @_Z8print_nlv
# BB#0:
	pushl	%ebx
	subl	$8, %esp
	calll	.L1$pb
.L1$pb:
	popl	%ebx
.Ltmp1:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp1-.L1$pb), %ebx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	calll	fputc@PLT
	addl	$8, %esp
	popl	%ebx
	retl
.Lfunc_end1:
	.size	_Z8print_nlv, .Lfunc_end1-_Z8print_nlv

	.globl	_Z15serialize_stateiPK10game_state
	.align	16, 0x90
	.type	_Z15serialize_stateiPK10game_state,@function
_Z15serialize_stateiPK10game_state:     # @_Z15serialize_stateiPK10game_state
	.cfi_startproc
# BB#0:
	pushl	%ebp
.Ltmp2:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.Ltmp3:
	.cfi_def_cfa_offset 12
	pushl	%edi
.Ltmp4:
	.cfi_def_cfa_offset 16
	pushl	%esi
.Ltmp5:
	.cfi_def_cfa_offset 20
	subl	$92, %esp
.Ltmp6:
	.cfi_def_cfa_offset 112
.Ltmp7:
	.cfi_offset %esi, -20
.Ltmp8:
	.cfi_offset %edi, -16
.Ltmp9:
	.cfi_offset %ebx, -12
.Ltmp10:
	.cfi_offset %ebp, -8
	calll	.L2$pb
.Ltmp11:
	.cfi_adjust_cfa_offset 4
.L2$pb:
	popl	%eax
.Ltmp12:
	.cfi_adjust_cfa_offset -4
.Ltmp13:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp13-.L2$pb), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	116(%esp), %eax
	movzbl	(%eax), %edx
	movb	$66, %cl
	cmpl	$1, %edx
	je	.LBB2_2
# BB#1:                                 # %select.false
	movb	$87, %cl
.LBB2_2:                                # %select.end
	movb	%cl, 28(%esp)
	movb	$58, 29(%esp)
	movl	$2, %esi
	movl	$1, %ebp
	.align	16, 0x90
.LBB2_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_8 Depth 2
	leal	-4(%ebp), %edx
	cmpl	$6, %ebp
	movl	$1, %ecx
	cmovbl	%ecx, %edx
	cmpl	$9, %edx
	ja	.LBB2_4
# BB#5:                                 #   in Loop: Header=BB2_3 Depth=1
	leal	5(%ebp), %edi
	cmpl	%edi, %edx
	jae	.LBB2_6
# BB#7:                                 # %.lr.ph.split.us.preheader.i
                                        #   in Loop: Header=BB2_3 Depth=1
	leal	(%eax,%edx), %ebx
	movl	%eax, 24(%esp)          # 4-byte Spill
	decl	%edx
	.align	16, 0x90
.LBB2_8:                                # %.lr.ph.split.us.i
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	6(%edx), %eax
	movl	$24, %ecx
	cmpl	%ebp, %eax
	jbe	.LBB2_11
# BB#9:                                 # %.lr.ph.split.us.i
                                        #   in Loop: Header=BB2_8 Depth=2
	cmpl	$8, %edx
	ja	.LBB2_11
# BB#10:                                #   in Loop: Header=BB2_8 Depth=2
	movb	(%ebx), %al
	decb	%al
	movzbl	%al, %ecx
	shll	$3, %ecx
.LBB2_11:                               # %_ZNK10game_state4getCEjj.exit.us.i
                                        #   in Loop: Header=BB2_8 Depth=2
	movl	$539907906, %eax        # imm = 0x202E5742
	shrl	%cl, %eax
	movb	%al, 28(%esp,%esi)
	incl	%esi
	leal	2(%edx), %ecx
	cmpl	$9, %ecx
	ja	.LBB2_13
# BB#12:                                # %_ZNK10game_state4getCEjj.exit.us.i
                                        #   in Loop: Header=BB2_8 Depth=2
	incl	%edx
	incl	%ebx
	cmpl	%edi, %ecx
	jb	.LBB2_8
	jmp	.LBB2_13
	.align	16, 0x90
.LBB2_6:                                #   in Loop: Header=BB2_3 Depth=1
	movl	%eax, 24(%esp)          # 4-byte Spill
	jmp	.LBB2_13
	.align	16, 0x90
.LBB2_4:                                #   in Loop: Header=BB2_3 Depth=1
	movl	%eax, 24(%esp)          # 4-byte Spill
.LBB2_13:                               # %.critedge.i
                                        #   in Loop: Header=BB2_3 Depth=1
	incl	%ebp
	movl	24(%esp), %eax          # 4-byte Reload
	addl	$9, %eax
	cmpl	$10, %ebp
	jne	.LBB2_3
# BB#14:
	movb	$0, 28(%esp,%esi)
	cmpl	$63, %esi
	jne	.LBB2_16
# BB#15:                                # %_ZNK10game_state8toStringEPc.exit
	leal	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	112(%esp), %eax
	movl	%eax, (%esp)
	movl	$64, 8(%esp)
	movl	20(%esp), %ebx          # 4-byte Reload
	calll	write@PLT
	movl	$64, %eax
	addl	$92, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.LBB2_16:
	movl	20(%esp), %ebx          # 4-byte Reload
	leal	.L__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.28@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$176, 8(%esp)
	calll	__assert_fail@PLT
.Lfunc_end2:
	.size	_Z15serialize_stateiPK10game_state, .Lfunc_end2-_Z15serialize_stateiPK10game_state
	.cfi_endproc

	.globl	_Z17deserialize_stateiP10game_state
	.align	16, 0x90
	.type	_Z17deserialize_stateiP10game_state,@function
_Z17deserialize_stateiP10game_state:    # @_Z17deserialize_stateiP10game_state
	.cfi_startproc
# BB#0:
	pushl	%ebx
.Ltmp14:
	.cfi_def_cfa_offset 8
	pushl	%esi
.Ltmp15:
	.cfi_def_cfa_offset 12
	subl	$84, %esp
.Ltmp16:
	.cfi_def_cfa_offset 96
.Ltmp17:
	.cfi_offset %esi, -12
.Ltmp18:
	.cfi_offset %ebx, -8
	calll	.L3$pb
.Ltmp19:
	.cfi_adjust_cfa_offset 4
.L3$pb:
	popl	%ebx
.Ltmp20:
	.cfi_adjust_cfa_offset -4
.Ltmp21:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp21-.L3$pb), %ebx
	movl	96(%esp), %eax
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 64(%esp)
	movaps	%xmm0, 48(%esp)
	movaps	%xmm0, 32(%esp)
	movaps	%xmm0, 16(%esp)
	leal	16(%esp), %esi
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	movl	$64, 8(%esp)
	calll	read@PLT
	cmpl	$64, %eax
	jne	.LBB3_3
# BB#1:
	cmpb	$0, 79(%esp)
	jne	.LBB3_4
# BB#2:
	movl	100(%esp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	calll	_ZN10game_state5setupEPKc@PLT
	movl	$1, %eax
	addl	$84, %esp
	popl	%esi
	popl	%ebx
	retl
.LBB3_3:
	leal	.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$40, 8(%esp)
	calll	__assert_fail@PLT
.LBB3_4:
	leal	.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$41, 8(%esp)
	calll	__assert_fail@PLT
.Lfunc_end3:
	.size	_Z17deserialize_stateiP10game_state, .Lfunc_end3-_Z17deserialize_stateiP10game_state
	.cfi_endproc

	.section	.text._ZN10game_state5setupEPKc,"axG",@progbits,_ZN10game_state5setupEPKc,comdat
	.weak	_ZN10game_state5setupEPKc
	.align	16, 0x90
	.type	_ZN10game_state5setupEPKc,@function
_ZN10game_state5setupEPKc:              # @_ZN10game_state5setupEPKc
# BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$28, %esp
	calll	.L4$pb
.L4$pb:
	popl	%ebx
.Ltmp22:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp22-.L4$pb), %ebx
	movl	52(%esp), %esi
	testl	%esi, %esi
	je	.LBB4_18
# BB#1:
	movl	%esi, (%esp)
	calll	strlen@PLT
	cmpl	$63, %eax
	jne	.LBB4_19
# BB#2:
	movzbl	1(%esi), %eax
	cmpl	$58, %eax
	jne	.LBB4_20
# BB#3:
	movl	48(%esp), %ecx
	movsbl	(%esi), %eax
	cmpl	$87, %eax
	je	.LBB4_12
# BB#4:
	cmpl	$66, %eax
	jne	.LBB4_13
# BB#5:
	movb	$1, (%ecx)
	jmp	.LBB4_6
.LBB4_12:
	movb	$2, (%ecx)
.LBB4_6:                                # %.preheader
	movl	$2, %esi
	movl	$1, %ebp
	.align	16, 0x90
.LBB4_7:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_15 Depth 2
	leal	-4(%ebp), %eax
	cmpl	$6, %ebp
	movl	$1, %edi
	cmovael	%eax, %edi
	cmpl	$9, %edi
	ja	.LBB4_9
# BB#8:                                 # %.preheader
                                        #   in Loop: Header=BB4_7 Depth=1
	leal	5(%ebp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	cmpl	%eax, %edi
	jae	.LBB4_9
	.align	16, 0x90
.LBB4_15:                               # %.lr.ph
                                        #   Parent Loop BB4_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	52(%esp), %eax
	movsbl	(%eax,%esi), %eax
	incl	%esi
	movl	%esi, 24(%esp)          # 4-byte Spill
	movl	%eax, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%ecx, (%esp)
	movl	%ecx, %esi
	calll	_ZN10game_state3setEjjc@PLT
	incl	%edi
	cmpl	$9, %edi
	ja	.LBB4_16
# BB#14:                                # %.lr.ph
                                        #   in Loop: Header=BB4_15 Depth=2
	cmpl	20(%esp), %edi          # 4-byte Folded Reload
	movl	%esi, %ecx
	movl	24(%esp), %esi          # 4-byte Reload
	jb	.LBB4_15
	jmp	.LBB4_9
	.align	16, 0x90
.LBB4_16:                               #   in Loop: Header=BB4_7 Depth=1
	movl	%esi, %ecx
	movl	24(%esp), %esi          # 4-byte Reload
.LBB4_9:                                # %.critedge
                                        #   in Loop: Header=BB4_7 Depth=1
	incl	%ebp
	cmpl	$10, %ebp
	jne	.LBB4_7
# BB#10:
	cmpl	$63, %esi
	jne	.LBB4_11
# BB#17:
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.LBB4_18:
	leal	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.26@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$182, 8(%esp)
	calll	__assert_fail@PLT
.LBB4_19:
	leal	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.29@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$183, 8(%esp)
	calll	__assert_fail@PLT
.LBB4_20:
	leal	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$184, 8(%esp)
	calll	__assert_fail@PLT
.LBB4_13:
	movl	52(%esp), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.31@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	printf@PLT
	movl	$1, (%esp)
	calll	exit@PLT
.LBB4_11:
	leal	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$206, 8(%esp)
	calll	__assert_fail@PLT
.Lfunc_end4:
	.size	_ZN10game_state5setupEPKc, .Lfunc_end4-_ZN10game_state5setupEPKc

	.text
	.globl	_Z14serialize_moveiPK9game_move
	.align	16, 0x90
	.type	_Z14serialize_moveiPK9game_move,@function
_Z14serialize_moveiPK9game_move:        # @_Z14serialize_moveiPK9game_move
	.cfi_startproc
# BB#0:
	pushl	%ebp
.Ltmp23:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.Ltmp24:
	.cfi_def_cfa_offset 12
	pushl	%edi
.Ltmp25:
	.cfi_def_cfa_offset 16
	pushl	%esi
.Ltmp26:
	.cfi_def_cfa_offset 20
	subl	$28, %esp
.Ltmp27:
	.cfi_def_cfa_offset 48
.Ltmp28:
	.cfi_offset %esi, -20
.Ltmp29:
	.cfi_offset %edi, -16
.Ltmp30:
	.cfi_offset %ebx, -12
.Ltmp31:
	.cfi_offset %ebp, -8
	calll	.L5$pb
.Ltmp32:
	.cfi_adjust_cfa_offset 4
.L5$pb:
	popl	%ebx
.Ltmp33:
	.cfi_adjust_cfa_offset -4
.Ltmp34:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp34-.L5$pb), %ebx
	movl	52(%esp), %ebp
	movl	48(%esp), %esi
	movl	4(%ebp), %edx
	movl	_ZZNK9game_move8toStringEPcE3row@GOT(%ebx), %ecx
	movb	(%ecx,%edx), %dl
	movb	%dl, 18(%esp)
	movl	8(%ebp), %edi
	movl	_ZZNK9game_move8toStringEPcE4diag@GOT(%ebx), %edx
	movb	(%edx,%edi), %al
	movb	%al, 19(%esp)
	movl	$2, %edi
	cmpl	$1, (%ebp)
	jne	.LBB5_2
# BB#1:
	movb	$45, 20(%esp)
	movl	12(%ebp), %eax
	movb	(%ecx,%eax), %al
	movb	%al, 21(%esp)
	movl	16(%ebp), %eax
	movb	(%edx,%eax), %al
	movb	%al, 22(%esp)
	movl	$5, %edi
.LBB5_2:                                # %_ZNK9game_move8toStringEPc.exit
	movb	$44, 18(%esp,%edi)
	movl	20(%ebp), %eax
	movb	(%ecx,%eax), %al
	movb	%al, 19(%esp,%edi)
	movl	24(%ebp), %eax
	movb	(%edx,%eax), %al
	movb	%al, 20(%esp,%edi)
	movb	$0, 21(%esp,%edi)
	leal	18(%esp), %edi
	movl	%edi, (%esp)
	calll	strlen@PLT
	incl	%eax
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	calll	write@PLT
	movl	$1, %eax
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end5:
	.size	_Z14serialize_moveiPK9game_move, .Lfunc_end5-_Z14serialize_moveiPK9game_move
	.cfi_endproc

	.globl	_Z16deserialize_moveiP9game_move
	.align	16, 0x90
	.type	_Z16deserialize_moveiP9game_move,@function
_Z16deserialize_moveiP9game_move:       # @_Z16deserialize_moveiP9game_move
	.cfi_startproc
# BB#0:
	pushl	%ebx
.Ltmp35:
	.cfi_def_cfa_offset 8
	pushl	%edi
.Ltmp36:
	.cfi_def_cfa_offset 12
	pushl	%esi
.Ltmp37:
	.cfi_def_cfa_offset 16
	subl	$32, %esp
.Ltmp38:
	.cfi_def_cfa_offset 48
.Ltmp39:
	.cfi_offset %esi, -16
.Ltmp40:
	.cfi_offset %edi, -12
.Ltmp41:
	.cfi_offset %ebx, -8
	calll	.L6$pb
.Ltmp42:
	.cfi_adjust_cfa_offset 4
.L6$pb:
	popl	%ebx
.Ltmp43:
	.cfi_adjust_cfa_offset -4
.Ltmp44:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp44-.L6$pb), %ebx
	movl	48(%esp), %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 28(%esp)
	leal	20(%esp), %edi
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	movl	$10, 8(%esp)
	calll	read@PLT
	movl	%eax, %esi
	movl	%esi, 8(%esp)
	movl	%edi, 4(%esp)
	leal	.L.str.5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
	testl	%esi, %esi
	je	.LBB6_1
# BB#2:
	cmpl	$6, %esi
	je	.LBB6_6
# BB#3:
	cmpl	$9, %esi
	jne	.LBB6_4
.LBB6_6:
	movl	%edi, (%esp)
	calll	strlen@PLT
	cmpl	$5, %eax
	je	.LBB6_9
# BB#7:
	cmpl	$8, %eax
	jne	.LBB6_8
.LBB6_9:
	movl	52(%esp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	calll	_ZN9game_move5setupEPKc@PLT
	jmp	.LBB6_10
.LBB6_1:
	xorl	%eax, %eax
	jmp	.LBB6_10
.LBB6_4:
	movl	%esi, 4(%esp)
	leal	.L.str.6@GOTOFF(%ebx), %eax
	jmp	.LBB6_5
.LBB6_8:
	movl	%eax, 4(%esp)
	leal	.L.str.7@GOTOFF(%ebx), %eax
.LBB6_5:
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
	xorl	%eax, %eax
.LBB6_10:
	movzbl	%al, %eax
	addl	$32, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	retl
.Lfunc_end6:
	.size	_Z16deserialize_moveiP9game_move, .Lfunc_end6-_Z16deserialize_moveiP9game_move
	.cfi_endproc

	.section	.text._ZN9game_move5setupEPKc,"axG",@progbits,_ZN9game_move5setupEPKc,comdat
	.weak	_ZN9game_move5setupEPKc
	.align	16, 0x90
	.type	_ZN9game_move5setupEPKc,@function
_ZN9game_move5setupEPKc:                # @_ZN9game_move5setupEPKc
# BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$12, %esp
	calll	.L7$pb
.L7$pb:
	popl	%ebx
.Ltmp45:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp45-.L7$pb), %ebx
	movl	36(%esp), %ecx
	movl	32(%esp), %eax
	movzbl	(%ecx), %edx
	andl	$159, %edx
	movl	%edx, 4(%eax)
	movsbl	1(%ecx), %esi
	leal	-48(%esi), %edi
	movl	%edi, 8(%eax)
	leal	-43(%esi), %ebp
	cmpl	%edx, %ebp
	jbe	.LBB7_4
# BB#1:
	leal	5(%edx), %ebp
	cmpl	%edi, %ebp
	jbe	.LBB7_4
# BB#2:
	addl	$-49, %esi
	cmpl	$8, %esi
	ja	.LBB7_4
# BB#3:
	decl	%edx
	cmpl	$9, %edx
	jae	.LBB7_4
# BB#5:
	movsbl	2(%ecx), %edx
	cmpl	$45, %edx
	je	.LBB7_14
# BB#6:
	movzbl	%dl, %esi
	cmpl	$44, %esi
	jne	.LBB7_21
# BB#7:
	movl	$0, (%eax)
	movl	$3, %esi
	jmp	.LBB7_8
.LBB7_4:                                # %_ZL15check_valid_posjj.exit11.thread
	leal	.Lstr@GOTOFF(%ebx), %eax
	jmp	.LBB7_13
.LBB7_14:
	movl	$1, (%eax)
	movzbl	3(%ecx), %edx
	andl	$159, %edx
	movl	%edx, 12(%eax)
	movsbl	4(%ecx), %esi
	leal	-48(%esi), %edi
	movl	%edi, 16(%eax)
	leal	-43(%esi), %ebp
	cmpl	%edx, %ebp
	jbe	.LBB7_18
# BB#15:
	leal	5(%edx), %ebp
	cmpl	%edi, %ebp
	jbe	.LBB7_18
# BB#16:
	addl	$-49, %esi
	cmpl	$8, %esi
	ja	.LBB7_18
# BB#17:
	decl	%edx
	cmpl	$9, %edx
	jae	.LBB7_18
# BB#19:
	movzbl	5(%ecx), %edx
	movl	$6, %esi
	cmpl	$44, %edx
	jne	.LBB7_20
.LBB7_8:
	movzbl	(%ecx,%esi), %edx
	andl	$159, %edx
	movl	%edx, 20(%eax)
	movsbl	1(%ecx,%esi), %ecx
	leal	-48(%ecx), %esi
	movl	%esi, 24(%eax)
	leal	-43(%ecx), %eax
	cmpl	%edx, %eax
	jbe	.LBB7_12
# BB#9:
	leal	5(%edx), %eax
	cmpl	%esi, %eax
	jbe	.LBB7_12
# BB#10:
	addl	$-49, %ecx
	cmpl	$8, %ecx
	ja	.LBB7_12
# BB#11:
	decl	%edx
	movb	$1, %al
	cmpl	$9, %edx
	jb	.LBB7_23
.LBB7_12:                               # %_ZL15check_valid_posjj.exit.thread
	leal	.Lstr.90@GOTOFF(%ebx), %eax
	jmp	.LBB7_13
.LBB7_21:
	movl	%edx, 4(%esp)
	leal	.L.str.36@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	printf@PLT
	jmp	.LBB7_22
.LBB7_18:                               # %_ZL15check_valid_posjj.exit7.thread
	leal	.Lstr.89@GOTOFF(%ebx), %eax
	jmp	.LBB7_13
.LBB7_20:
	leal	.Lstr.91@GOTOFF(%ebx), %eax
.LBB7_13:
	movl	%eax, (%esp)
	calll	puts@PLT
.LBB7_22:
	xorl	%eax, %eax
.LBB7_23:
	movzbl	%al, %eax
	addl	$12, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end7:
	.size	_ZN9game_move5setupEPKc, .Lfunc_end7-_ZN9game_move5setupEPKc

	.text
	.globl	_Z16initialize_stateP10game_statePKc
	.align	16, 0x90
	.type	_Z16initialize_stateP10game_statePKc,@function
_Z16initialize_stateP10game_statePKc:   # @_Z16initialize_stateP10game_statePKc
	.cfi_startproc
# BB#0:
	pushl	%ebx
.Ltmp46:
	.cfi_def_cfa_offset 8
	pushl	%edi
.Ltmp47:
	.cfi_def_cfa_offset 12
	pushl	%esi
.Ltmp48:
	.cfi_def_cfa_offset 16
	subl	$16, %esp
.Ltmp49:
	.cfi_def_cfa_offset 32
.Ltmp50:
	.cfi_offset %esi, -16
.Ltmp51:
	.cfi_offset %edi, -12
.Ltmp52:
	.cfi_offset %ebx, -8
	calll	.L8$pb
.Ltmp53:
	.cfi_adjust_cfa_offset 4
.L8$pb:
	popl	%ebx
.Ltmp54:
	.cfi_adjust_cfa_offset -4
.Ltmp55:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp55-.L8$pb), %ebx
	movl	36(%esp), %esi
	testl	%esi, %esi
	je	.LBB8_3
# BB#1:
	movl	%esi, (%esp)
	calll	strlen@PLT
	cmpl	$63, %eax
	jne	.LBB8_4
# BB#2:
	movl	32(%esp), %edi
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	calll	_ZN10game_state5setupEPKc@PLT
	movl	%edi, (%esp)
	calll	_ZNK10game_state5printEv@PLT
	addl	$16, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	retl
.LBB8_3:
	leal	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$80, 8(%esp)
	calll	__assert_fail@PLT
.LBB8_4:
	leal	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$81, 8(%esp)
	calll	__assert_fail@PLT
.Lfunc_end8:
	.size	_Z16initialize_stateP10game_statePKc, .Lfunc_end8-_Z16initialize_stateP10game_statePKc
	.cfi_endproc

	.section	.text._ZNK10game_state5printEv,"axG",@progbits,_ZNK10game_state5printEv,comdat
	.weak	_ZNK10game_state5printEv
	.align	16, 0x90
	.type	_ZNK10game_state5printEv,@function
_ZNK10game_state5printEv:               # @_ZNK10game_state5printEv
	.cfi_startproc
# BB#0:
	pushl	%ebp
.Ltmp56:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.Ltmp57:
	.cfi_def_cfa_offset 12
	pushl	%edi
.Ltmp58:
	.cfi_def_cfa_offset 16
	pushl	%esi
.Ltmp59:
	.cfi_def_cfa_offset 20
	subl	$76, %esp
.Ltmp60:
	.cfi_def_cfa_offset 96
.Ltmp61:
	.cfi_offset %esi, -20
.Ltmp62:
	.cfi_offset %edi, -16
.Ltmp63:
	.cfi_offset %ebx, -12
.Ltmp64:
	.cfi_offset %ebp, -8
	calll	.L9$pb
.Ltmp65:
	.cfi_adjust_cfa_offset 4
.L9$pb:
	popl	%ebx
.Ltmp66:
	.cfi_adjust_cfa_offset -4
.Ltmp67:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp67-.L9$pb), %ebx
	movl	96(%esp), %eax
	leal	73(%eax), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	_ZSt4cout@GOT(%ebx), %ebp
	movl	%ebp, 56(%esp)          # 4-byte Spill
	leal	.L.str.39@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	leal	.L.str.40@GOTOFF(%ebx), %edi
	movl	%edi, 44(%esp)          # 4-byte Spill
	leal	.L.str.41@GOTOFF(%ebx), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	$9, %esi
	.align	16, 0x90
.LBB9_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_42 Depth 2
                                        #     Child Loop BB9_14 Depth 2
                                        #     Child Loop BB9_44 Depth 2
                                        #     Child Loop BB9_35 Depth 2
                                        #     Child Loop BB9_30 Depth 2
	movl	%esi, 64(%esp)          # 4-byte Spill
	movb	.L.str.38@GOTOFF-1(%ebx,%esi), %al
	movb	%al, 75(%esp)
	leal	75(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	movl	$1, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	24(%esp), %ecx          # 4-byte Reload
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	$5, %eax
	subl	%esi, %eax
	movl	%eax, %edx
	negl	%edx
	cmovll	%eax, %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	leal	1(%edx), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	$9, %ecx
	subl	%edx, %ecx
	cmpl	$5, %esi
	movl	$1, %esi
	cmovgl	%eax, %esi
	movl	%esi, 68(%esp)          # 4-byte Spill
	movl	$9, %eax
	cmovgel	%eax, %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	testl	%edx, %edx
	movl	%edx, %esi
	jle	.LBB9_2
	.align	16, 0x90
.LBB9_42:                               # %.lr.ph
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edi, 4(%esp)
	movl	%ebp, (%esp)
	movl	$2, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	decl	%esi
	jne	.LBB9_42
.LBB9_2:                                # %._crit_edge
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	64(%esp), %esi          # 4-byte Reload
	leal	-1(%esi), %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	36(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	movl	$3, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	5(%esi), %edi
	movl	68(%esp), %edx          # 4-byte Reload
	leal	5(%edx), %ecx
	movb	$4, %al
	cmpl	%esi, %ecx
	jbe	.LBB9_3
# BB#9:                                 # %._crit_edge
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	%edx, %edi
	jbe	.LBB9_3
# BB#10:                                # %._crit_edge
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	%edi, 52(%esp)          # 4-byte Spill
	leal	-1(%edx), %ecx
	cmpl	$8, %ecx
	movl	48(%esp), %edx          # 4-byte Reload
	ja	.LBB9_12
# BB#11:                                #   in Loop: Header=BB9_1 Depth=1
	leal	(%edx,%edx,8), %eax
	addl	96(%esp), %eax
	movb	1(%ecx,%eax), %al
	jmp	.LBB9_12
	.align	16, 0x90
.LBB9_3:                                #   in Loop: Header=BB9_1 Depth=1
	movl	%edi, 52(%esp)          # 4-byte Spill
	movl	48(%esp), %edx          # 4-byte Reload
.LBB9_12:                               # %_ZNK10game_state3getEjj.exit
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	%edx, 48(%esp)          # 4-byte Spill
	decb	%al
	movsbl	%al, %eax
	movl	.Lswitch.table@GOTOFF(%ebx,%eax,4), %esi
	movl	%esi, (%esp)
	calll	strlen@PLT
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ebp, (%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	68(%esp), %edi          # 4-byte Reload
	leal	1(%edi), %eax
	cmpl	60(%esp), %eax          # 4-byte Folded Reload
	ja	.LBB9_21
# BB#13:                                # %.lr.ph26.split.us.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	32(%esp), %eax          # 4-byte Reload
	leal	(%eax,%edi), %esi
	.align	16, 0x90
.LBB9_14:                               # %.lr.ph26.split.us
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	.L.str.42@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	movl	$3, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	1(%edi), %edx
	leal	6(%edi), %ecx
	movb	$4, %al
	cmpl	64(%esp), %ecx          # 4-byte Folded Reload
	jbe	.LBB9_15
# BB#16:                                # %.lr.ph26.split.us
                                        #   in Loop: Header=BB9_14 Depth=2
	cmpl	%edx, 52(%esp)          # 4-byte Folded Reload
	jbe	.LBB9_17
# BB#18:                                # %.lr.ph26.split.us
                                        #   in Loop: Header=BB9_14 Depth=2
	movl	%edx, 68(%esp)          # 4-byte Spill
	cmpl	$8, %edi
	ja	.LBB9_20
# BB#19:                                #   in Loop: Header=BB9_14 Depth=2
	movb	(%esi), %al
	jmp	.LBB9_20
	.align	16, 0x90
.LBB9_15:                               #   in Loop: Header=BB9_14 Depth=2
	movl	%edx, 68(%esp)          # 4-byte Spill
	jmp	.LBB9_20
.LBB9_17:                               #   in Loop: Header=BB9_14 Depth=2
	movl	%edx, 68(%esp)          # 4-byte Spill
	.align	16, 0x90
.LBB9_20:                               # %_ZNK10game_state3getEjj.exit9.us
                                        #   in Loop: Header=BB9_14 Depth=2
	decb	%al
	movsbl	%al, %eax
	movl	.Lswitch.table@GOTOFF(%ebx,%eax,4), %ebp
	movl	%ebp, (%esp)
	calll	strlen@PLT
	movl	%eax, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	56(%esp), %ebp          # 4-byte Reload
	movl	%ebp, (%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	incl	%esi
	addl	$2, %edi
	cmpl	60(%esp), %edi          # 4-byte Folded Reload
	movl	68(%esp), %edi          # 4-byte Reload
	jbe	.LBB9_14
.LBB9_21:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	$4, 64(%esp)            # 4-byte Folded Reload
	movl	40(%esp), %edi          # 4-byte Reload
	jg	.LBB9_23
# BB#22:                                #   in Loop: Header=BB9_1 Depth=1
	movl	36(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	movl	$3, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	$10, %eax
	subl	%edi, %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	calll	_ZNSo9_M_insertIlEERSoT_@PLT
.LBB9_23:                               #   in Loop: Header=BB9_1 Depth=1
	movl	(%ebp), %eax
	movl	-12(%eax), %eax
	movl	124(%ebp,%eax), %esi
	testl	%esi, %esi
	je	.LBB9_43
# BB#24:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit19
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpb	$0, 28(%esi)
	je	.LBB9_26
# BB#25:                                #   in Loop: Header=BB9_1 Depth=1
	movb	39(%esi), %al
	jmp	.LBB9_27
	.align	16, 0x90
.LBB9_26:                               #   in Loop: Header=BB9_1 Depth=1
	movl	%esi, (%esp)
	calll	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movl	(%esi), %eax
	movl	%esi, (%esp)
	movl	$10, 4(%esp)
	calll	*24(%eax)
.LBB9_27:                               # %_ZNKSt5ctypeIcE5widenEc.exit16
                                        #   in Loop: Header=BB9_1 Depth=1
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	calll	_ZNSo3putEc@PLT
	movl	%eax, (%esp)
	calll	_ZNSo5flushEv@PLT
	leal	.L.str.43@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	movl	$4, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	testl	%edi, %edi
	movl	44(%esp), %esi          # 4-byte Reload
	jle	.LBB9_28
	.align	16, 0x90
.LBB9_44:                               # %.lr.ph28
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%esi, 4(%esp)
	movl	%ebp, (%esp)
	movl	$2, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	decl	%edi
	jne	.LBB9_44
.LBB9_28:                               # %._crit_edge29
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	64(%esp), %eax          # 4-byte Reload
	cmpl	$6, %eax
	jl	.LBB9_32
# BB#29:                                # %.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	60(%esp), %esi          # 4-byte Reload
	movl	28(%esp), %edi          # 4-byte Reload
	jmp	.LBB9_30
	.align	16, 0x90
.LBB9_31:                               # %.lr.ph34
                                        #   in Loop: Header=BB9_30 Depth=2
	leal	.L.str.44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	movl	$4, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	incl	%edi
.LBB9_30:                               # %.preheader
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%esi, %edi
	jbe	.LBB9_31
	jmp	.LBB9_36
	.align	16, 0x90
.LBB9_32:                               #   in Loop: Header=BB9_1 Depth=1
	cmpl	$2, %eax
	movl	60(%esp), %esi          # 4-byte Reload
	jl	.LBB9_36
# BB#33:                                #   in Loop: Header=BB9_1 Depth=1
	movl	44(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	movl	$2, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	cmpl	$2, %esi
	jb	.LBB9_36
# BB#34:                                # %.lr.ph32.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	decl	%esi
	.align	16, 0x90
.LBB9_35:                               # %.lr.ph32
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	.L.str.45@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	movl	$4, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	decl	%esi
	jne	.LBB9_35
	.align	16, 0x90
.LBB9_36:                               # %.loopexit
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	(%ebp), %eax
	movl	-12(%eax), %eax
	movl	124(%ebp,%eax), %esi
	testl	%esi, %esi
	je	.LBB9_45
# BB#37:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit20
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpb	$0, 28(%esi)
	je	.LBB9_39
# BB#38:                                #   in Loop: Header=BB9_1 Depth=1
	movb	39(%esi), %al
	jmp	.LBB9_40
	.align	16, 0x90
.LBB9_39:                               #   in Loop: Header=BB9_1 Depth=1
	movl	%esi, (%esp)
	calll	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movl	(%esi), %eax
	movl	%esi, (%esp)
	movl	$10, 4(%esp)
	calll	*24(%eax)
.LBB9_40:                               # %_ZNKSt5ctypeIcE5widenEc.exit18
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	44(%esp), %edi          # 4-byte Reload
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	calll	_ZNSo3putEc@PLT
	movl	%eax, (%esp)
	calll	_ZNSo5flushEv@PLT
	addl	$-9, 32(%esp)           # 4-byte Folded Spill
	cmpl	$1, 64(%esp)            # 4-byte Folded Reload
	movl	48(%esp), %esi          # 4-byte Reload
	jg	.LBB9_1
# BB#4:
	leal	.L.str.46@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	movl	$32, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	(%ebp), %eax
	movl	-12(%eax), %eax
	movl	124(%ebp,%eax), %esi
	testl	%esi, %esi
	je	.LBB9_41
# BB#5:                                 # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit
	cmpb	$0, 28(%esi)
	je	.LBB9_7
# BB#6:
	movb	39(%esi), %al
	jmp	.LBB9_8
.LBB9_7:
	movl	%esi, (%esp)
	calll	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movl	(%esi), %eax
	movl	%esi, (%esp)
	movl	$10, 4(%esp)
	calll	*24(%eax)
.LBB9_8:                                # %_ZNKSt5ctypeIcE5widenEc.exit
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	calll	_ZNSo3putEc@PLT
	movl	%eax, (%esp)
	calll	_ZNSo5flushEv@PLT
	addl	$76, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.LBB9_43:
	calll	_ZSt16__throw_bad_castv@PLT
.LBB9_45:
	calll	_ZSt16__throw_bad_castv@PLT
.LBB9_41:
	calll	_ZSt16__throw_bad_castv@PLT
.Lfunc_end9:
	.size	_ZNK10game_state5printEv, .Lfunc_end9-_ZNK10game_state5printEv
	.cfi_endproc

	.text
	.globl	_Z14is_final_statePK10game_state
	.align	16, 0x90
	.type	_Z14is_final_statePK10game_state,@function
_Z14is_final_statePK10game_state:       # @_Z14is_final_statePK10game_state
# BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$12, %esp
	calll	.L10$pb
.L10$pb:
	popl	%ebx
.Ltmp68:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp68-.L10$pb), %ebx
	xorl	%ebp, %ebp
	movl	$9, %ecx
	movl	32(%esp), %esi
	.align	16, 0x90
.LBB10_1:                               # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-8(%esi,%ecx), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ebp, %edx
	movzbl	-7(%esi,%ecx), %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%edx, %eax
	movzbl	-6(%esi,%ecx), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%eax, %edx
	movzbl	-5(%esi,%ecx), %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%edx, %eax
	movzbl	-4(%esi,%ecx), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%eax, %edx
	movzbl	-3(%esi,%ecx), %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%edx, %eax
	movzbl	-2(%esi,%ecx), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%eax, %edx
	movzbl	-1(%esi,%ecx), %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %edi
	addl	%edx, %edi
	movzbl	(%esi,%ecx), %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %ebp
	addl	%edi, %ebp
	addl	$9, %ecx
	cmpl	$90, %ecx
	jne	.LBB10_1
# BB#2:                                 # %.preheader.i41.preheader
	xorl	%edx, %edx
	movl	$9, %ecx
	.align	16, 0x90
.LBB10_3:                               # %.preheader.i41
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-8(%esi,%ecx), %edi
	cmpl	$1, %edi
	sete	%al
	movzbl	%al, %eax
	addl	%edx, %eax
	movzbl	-7(%esi,%ecx), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%eax, %edx
	movzbl	-6(%esi,%ecx), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%edx, %eax
	movzbl	-5(%esi,%ecx), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%eax, %edx
	movzbl	-4(%esi,%ecx), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%edx, %eax
	movzbl	-3(%esi,%ecx), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%eax, %edx
	movzbl	-2(%esi,%ecx), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%edx, %eax
	movzbl	-1(%esi,%ecx), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edi
	addl	%eax, %edi
	movzbl	(%esi,%ecx), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %edx
	addl	%edi, %edx
	addl	$9, %ecx
	cmpl	$90, %ecx
	jne	.LBB10_3
# BB#4:                                 # %_ZNK10game_state5countE9FieldType.exit42
	movl	%edx, 8(%esp)
	movl	%ebp, 4(%esp)
	leal	.L.str.10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
	xorl	%ecx, %ecx
	movl	$9, %eax
	.align	16, 0x90
.LBB10_5:                               # %.preheader.i27
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-8(%esi,%eax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	-7(%esi,%eax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	-6(%esi,%eax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	-5(%esi,%eax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	-4(%esi,%eax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	-3(%esi,%eax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	-2(%esi,%eax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	-1(%esi,%eax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %edi
	addl	%edx, %edi
	movzbl	(%esi,%eax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edi, %ecx
	addl	$9, %eax
	cmpl	$90, %eax
	jne	.LBB10_5
# BB#6:                                 # %_ZNK10game_state5countE9FieldType.exit28
	movb	$1, %al
	cmpl	$9, %ecx
	jb	.LBB10_10
# BB#7:
	xorl	%ecx, %ecx
	movl	$9, %eax
	.align	16, 0x90
.LBB10_8:                               # %.preheader.i13
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-8(%esi,%eax), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	-7(%esi,%eax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	-6(%esi,%eax), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	-5(%esi,%eax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	-4(%esi,%eax), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	-3(%esi,%eax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	-2(%esi,%eax), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	-1(%esi,%eax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %edi
	addl	%edx, %edi
	movzbl	(%esi,%eax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edi, %ecx
	addl	$9, %eax
	cmpl	$90, %eax
	jne	.LBB10_8
# BB#9:                                 # %_ZNK10game_state5countE9FieldType.exit14
	cmpl	$9, %ecx
	setb	%al
.LBB10_10:
	movzbl	%al, %eax
	addl	$12, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end10:
	.size	_Z14is_final_statePK10game_state, .Lfunc_end10-_Z14is_final_statePK10game_state

	.globl	_Z10move_validPK10game_statePK9game_move
	.align	16, 0x90
	.type	_Z10move_validPK10game_statePK9game_move,@function
_Z10move_validPK10game_statePK9game_move: # @_Z10move_validPK10game_statePK9game_move
# BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$52, %esp
	movl	76(%esp), %edx
	movl	20(%edx), %ebp
	movl	4(%edx), %esi
	movl	%ebp, %eax
	subl	%esi, %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	leal	1(%eax), %ecx
	xorl	%eax, %eax
	cmpl	$2, %ecx
	ja	.LBB11_77
# BB#1:
	movl	%esi, %edi
	movl	8(%edx), %esi
	movl	%esi, 20(%esp)          # 4-byte Spill
	movl	24(%edx), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	subl	%esi, %ecx
	movl	%edi, %esi
	movl	%ecx, 24(%esp)          # 4-byte Spill
	incl	%ecx
	cmpl	$2, %ecx
	ja	.LBB11_77
# BB#2:
	movl	%ebp, %eax
	subl	%esi, %eax
	movl	%eax, 4(%esp)           # 4-byte Spill
	setne	%bl
	movl	44(%esp), %eax          # 4-byte Reload
	subl	20(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 40(%esp)          # 4-byte Spill
	setne	%cl
	movl	24(%esp), %eax          # 4-byte Reload
	cmpl	%eax, 48(%esp)          # 4-byte Folded Reload
	sete	%bh
	movb	%bl, %ch
	orb	%cl, %ch
	xorl	%eax, %eax
	movzbl	%ch, %edi
	cmpl	$1, %edi
	jne	.LBB11_77
# BB#3:
	andb	%cl, %bl
	xorb	$1, %bl
	orb	%bl, %bh
	je	.LBB11_77
# BB#4:
	movl	(%edx), %eax
	testl	%eax, %eax
	je	.LBB11_46
# BB#5:
	cmpl	$1, %eax
	jne	.LBB11_76
# BB#6:
	movl	12(%edx), %eax
	movl	%eax, %ecx
	subl	%esi, %ecx
	movl	%ecx, %edi
	negl	%edi
	cmovll	%ecx, %edi
	cmpl	$2, %edi
	jg	.LBB11_76
# BB#7:
	movl	16(%edx), %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	subl	20(%esp), %edx          # 4-byte Folded Reload
	movl	%edx, %edi
	negl	%edi
	cmovll	%edx, %edi
	cmpl	$2, %edi
	jg	.LBB11_76
# BB#8:
	cmpl	%esi, %eax
	sete	%bl
	movl	40(%esp), %edi          # 4-byte Reload
	cmpl	20(%esp), %edi          # 4-byte Folded Reload
	sete	%bh
	cmpl	%edx, %ecx
	je	.LBB11_10
# BB#9:
	orb	%bh, %bl
	je	.LBB11_76
.LBB11_10:
	cmpl	%esi, %eax
	jne	.LBB11_12
# BB#11:
	movl	40(%esp), %edi          # 4-byte Reload
	cmpl	20(%esp), %edi          # 4-byte Folded Reload
	je	.LBB11_13
.LBB11_12:
	imull	48(%esp), %edx          # 4-byte Folded Reload
	imull	24(%esp), %ecx          # 4-byte Folded Reload
	cmpl	%ecx, %edx
	je	.LBB11_76
.LBB11_13:
	movl	44(%esp), %ecx          # 4-byte Reload
	leal	5(%ecx), %ecx
	cmpl	%ebp, %ecx
	jbe	.LBB11_76
# BB#14:
	leal	5(%ebp), %ecx
	cmpl	44(%esp), %ecx          # 4-byte Folded Reload
	jbe	.LBB11_76
# BB#15:
	decl	%ebp
	cmpl	$8, %ebp
	ja	.LBB11_76
# BB#16:
	movl	44(%esp), %ecx          # 4-byte Reload
	decl	%ecx
	cmpl	$8, %ecx
	movl	%ecx, %edx
	ja	.LBB11_76
# BB#17:                                # %_ZNK10game_state3getEjj.exit
	leal	(%ebp,%ebp,8), %ecx
	addl	72(%esp), %ecx
	movzbl	1(%edx,%ecx), %ecx
	cmpl	$3, %ecx
	jne	.LBB11_76
# BB#18:
	movl	48(%esp), %ecx          # 4-byte Reload
	leal	(%eax,%ecx), %ecx
	movl	24(%esp), %edx          # 4-byte Reload
	movl	40(%esp), %edi          # 4-byte Reload
	leal	5(%edi,%edx), %edx
	cmpl	%ecx, %edx
	jbe	.LBB11_76
# BB#19:
	movl	24(%esp), %ecx          # 4-byte Reload
	movl	40(%esp), %edx          # 4-byte Reload
	leal	(%edx,%ecx), %ecx
	movl	48(%esp), %edx          # 4-byte Reload
	leal	5(%eax,%edx), %edx
	cmpl	%ecx, %edx
	jbe	.LBB11_76
# BB#20:
	movl	48(%esp), %ecx          # 4-byte Reload
	leal	-1(%eax,%ecx), %ecx
	cmpl	$8, %ecx
	ja	.LBB11_76
# BB#21:
	movl	24(%esp), %edx          # 4-byte Reload
	movl	40(%esp), %edi          # 4-byte Reload
	leal	-1(%edi,%edx), %edx
	cmpl	$8, %edx
	ja	.LBB11_76
# BB#22:                                # %_ZNK10game_state3getEjj.exit86
	leal	(%ecx,%ecx,8), %ecx
	addl	72(%esp), %ecx
	movzbl	1(%edx,%ecx), %ecx
	cmpl	$3, %ecx
	jne	.LBB11_76
# BB#23:
	leal	(%eax,%esi), %ebx
	shrl	%ebx
	movl	48(%esp), %ecx          # 4-byte Reload
	leal	(%ebx,%ecx), %ecx
	movl	20(%esp), %edx          # 4-byte Reload
	movl	40(%esp), %edi          # 4-byte Reload
	leal	(%edi,%edx), %ebp
	shrl	%ebp
	movl	24(%esp), %edx          # 4-byte Reload
	leal	5(%ebp,%edx), %edx
	cmpl	%ecx, %edx
	jbe	.LBB11_76
# BB#24:
	movl	24(%esp), %ecx          # 4-byte Reload
	leal	(%ebp,%ecx), %ecx
	movl	48(%esp), %edx          # 4-byte Reload
	leal	5(%ebx,%edx), %edx
	cmpl	%ecx, %edx
	jbe	.LBB11_76
# BB#25:
	movl	48(%esp), %ecx          # 4-byte Reload
	leal	-1(%ebx,%ecx), %ecx
	cmpl	$8, %ecx
	ja	.LBB11_76
# BB#26:
	movl	24(%esp), %edx          # 4-byte Reload
	leal	-1(%ebp,%edx), %edx
	cmpl	$8, %edx
	ja	.LBB11_76
# BB#27:                                # %_ZNK10game_state3getEjj.exit80
	leal	(%ecx,%ecx,8), %ecx
	addl	72(%esp), %ecx
	movzbl	1(%edx,%ecx), %ecx
	cmpl	$3, %ecx
	jne	.LBB11_76
# BB#28:
	movl	20(%esp), %edi          # 4-byte Reload
	leal	5(%edi), %ecx
	movb	$4, %dl
	cmpl	%esi, %ecx
	jbe	.LBB11_33
# BB#29:
	leal	5(%esi), %ecx
	cmpl	%edi, %ecx
	movl	%edi, %ecx
	jbe	.LBB11_33
# BB#30:
	decl	%esi
	cmpl	$8, %esi
	ja	.LBB11_33
# BB#31:
	movl	%ecx, %edi
	decl	%edi
	cmpl	$8, %edi
	ja	.LBB11_33
# BB#32:
	leal	(%esi,%esi,8), %ecx
	addl	72(%esp), %ecx
	movb	1(%edi,%ecx), %dl
.LBB11_33:                              # %_ZNK10game_state3getEjj.exit74
	movl	72(%esp), %ecx
	movzbl	(%ecx), %esi
	movzbl	%dl, %ecx
	cmpl	%esi, %ecx
	jne	.LBB11_76
# BB#34:
	movl	40(%esp), %edx          # 4-byte Reload
	leal	5(%edx), %esi
	movb	$4, %dl
	cmpl	%eax, %esi
	jbe	.LBB11_39
# BB#35:
	leal	5(%eax), %esi
	cmpl	40(%esp), %esi          # 4-byte Folded Reload
	jbe	.LBB11_39
# BB#36:
	decl	%eax
	cmpl	$8, %eax
	ja	.LBB11_39
# BB#37:
	movl	40(%esp), %esi          # 4-byte Reload
	decl	%esi
	cmpl	$8, %esi
	ja	.LBB11_39
# BB#38:
	leal	(%eax,%eax,8), %eax
	addl	72(%esp), %eax
	movb	1(%esi,%eax), %dl
.LBB11_39:                              # %_ZNK10game_state3getEjj.exit68
	movzbl	%dl, %eax
	cmpl	%ecx, %eax
	jne	.LBB11_76
# BB#40:
	leal	5(%ebp), %edx
	movb	$4, %al
	cmpl	%ebx, %edx
	jbe	.LBB11_45
# BB#41:
	leal	5(%ebx), %edx
	cmpl	%ebp, %edx
	jbe	.LBB11_45
# BB#42:
	decl	%ebx
	cmpl	$8, %ebx
	ja	.LBB11_45
# BB#43:
	decl	%ebp
	cmpl	$8, %ebp
	ja	.LBB11_45
# BB#44:
	leal	(%ebx,%ebx,8), %eax
	movl	72(%esp), %edx
	addl	%eax, %edx
	movb	1(%ebp,%edx), %al
.LBB11_45:                              # %_ZNK10game_state3getEjj.exit62
	movzbl	%al, %edx
	movb	$1, %al
	cmpl	%ecx, %edx
	jne	.LBB11_76
	jmp	.LBB11_77
.LBB11_46:
	movl	20(%esp), %edx          # 4-byte Reload
	leal	-1(%edx), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	leal	5(%edx), %ecx
	movb	$4, %al
	cmpl	%esi, %ecx
	jbe	.LBB11_47
# BB#48:
	leal	5(%esi), %ecx
	cmpl	%edx, %ecx
	movl	%edx, %edi
	jbe	.LBB11_52
# BB#49:
	leal	-1(%esi), %ecx
	cmpl	$8, %ecx
	ja	.LBB11_52
# BB#50:
	cmpl	$8, 32(%esp)            # 4-byte Folded Reload
	ja	.LBB11_52
# BB#51:
	leal	(%ecx,%ecx,8), %eax
	addl	72(%esp), %eax
	movl	32(%esp), %ecx          # 4-byte Reload
	movb	1(%ecx,%eax), %al
	jmp	.LBB11_52
.LBB11_47:
	movl	%edx, %edi
.LBB11_52:                              # %_ZNK10game_state3getEjj.exit56
	movl	72(%esp), %ecx
	movzbl	(%ecx), %ecx
	movzbl	%al, %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	cmpl	%ecx, %eax
	jne	.LBB11_76
# BB#53:                                # %.preheader.preheader
	leal	(%esi,%esi,8), %eax
	movl	72(%esp), %ecx
	leal	-9(%ecx,%eax), %edx
	leal	(%ebp,%ebp,8), %ecx
	movl	44(%esp), %ebx          # 4-byte Reload
	addl	%ecx, %ebx
	movl	%edi, %ebp
	subl	%ebp, %ebx
	subl	%eax, %ebx
	movl	%ebx, 44(%esp)          # 4-byte Spill
	xorl	%edi, %edi
	movl	$0, 12(%esp)            # 4-byte Folded Spill
	jmp	.LBB11_54
	.align	16, 0x90
.LBB11_57:                              #   in Loop: Header=BB11_54 Depth=1
	incl	12(%esp)                # 4-byte Folded Spill
	movl	%ebx, %esi
	addl	48(%esp), %esi          # 4-byte Folded Reload
	addl	44(%esp), %edx          # 4-byte Folded Reload
	addl	40(%esp), %edi          # 4-byte Folded Reload
.LBB11_54:                              # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	leal	(%ebp,%edi), %ebx
	movl	%ebx, 36(%esp)          # 4-byte Spill
	leal	-1(%esi), %eax
	movl	%eax, 8(%esp)           # 4-byte Spill
	cmpl	$9, %eax
	sbbb	%al, %al
	movl	32(%esp), %ecx          # 4-byte Reload
	leal	(%ecx,%edi), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	cmpl	$9, %ecx
	sbbb	%ah, %ah
	leal	5(%esi), %ecx
	cmpl	%ecx, %ebx
	sbbb	%cl, %cl
	andb	%al, %cl
	movl	%esi, %ebx
	movl	%ebp, %esi
	leal	5(%esi,%edi), %ebp
	cmpl	%ebp, %ebx
	movl	%esi, %ebp
	sbbb	%al, %al
	andb	%cl, %al
	andb	%ah, %al
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$1, %ecx
	movb	$4, %ah
	jne	.LBB11_56
# BB#55:                                #   in Loop: Header=BB11_54 Depth=1
	movb	(%ebp,%edx), %ah
.LBB11_56:                              # %_ZNK10game_state3getEjj.exit50
                                        #   in Loop: Header=BB11_54 Depth=1
	movzbl	%ah, %ecx
	cmpl	28(%esp), %ecx          # 4-byte Folded Reload
	je	.LBB11_57
# BB#58:
	movl	12(%esp), %ebp          # 4-byte Reload
	testl	%ebp, %ebp
	movl	16(%esp), %esi          # 4-byte Reload
	je	.LBB11_76
# BB#59:
	cmpl	$3, %ebp
	jg	.LBB11_76
# BB#60:
	cmpl	$1, 28(%esp)            # 4-byte Folded Reload
	sete	%ah
	testb	%al, %al
	je	.LBB11_61
# BB#62:                                # %_ZNK10game_state3getEjj.exit44.preheader
	incb	%ah
	movl	36(%esp), %edx          # 4-byte Reload
	decl	%edx
	leal	-1(%ebx), %edi
	movl	%ebx, 44(%esp)          # 4-byte Spill
	movzbl	%ah, %eax
	movl	%eax, (%esp)            # 4-byte Spill
	movl	%esi, %ecx
	movl	8(%esp), %ebx           # 4-byte Reload
	movb	$1, %al
	movl	%eax, 20(%esp)          # 4-byte Spill
.LBB11_63:                              # %_ZNK10game_state3getEjj.exit44
                                        # =>This Inner Loop Header: Depth=1
	leal	(%ebx,%ebx,8), %eax
	addl	72(%esp), %eax
	movzbl	1(%ecx,%eax), %eax
	cmpl	(%esp), %eax            # 4-byte Folded Reload
	jne	.LBB11_64
# BB#65:                                #   in Loop: Header=BB11_63 Depth=1
	decl	%ebp
	movl	%ebp, %ebx
	movl	40(%esp), %eax          # 4-byte Reload
	leal	6(%eax,%edx), %ebp
	movl	4(%esp), %esi           # 4-byte Reload
	leal	1(%esi,%edi), %ecx
	movl	$0, 20(%esp)            # 4-byte Folded Spill
	cmpl	%ecx, %ebp
	movl	%esi, %ecx
	leal	(%ecx,%edi), %ebp
	leal	(%eax,%edx), %esi
	jbe	.LBB11_66
# BB#67:                                #   in Loop: Header=BB11_63 Depth=1
	leal	1(%eax,%edx), %edx
	leal	6(%ecx,%edi), %ecx
	cmpl	%edx, %ecx
	jbe	.LBB11_66
# BB#68:                                #   in Loop: Header=BB11_63 Depth=1
	cmpl	$8, %ebp
	ja	.LBB11_66
# BB#69:                                #   in Loop: Header=BB11_63 Depth=1
	movl	48(%esp), %eax          # 4-byte Reload
	movl	44(%esp), %edx          # 4-byte Reload
	leal	-1(%edx,%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	addl	%eax, %edx
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	24(%esp), %eax          # 4-byte Reload
	movl	36(%esp), %edx          # 4-byte Reload
	leal	-1(%edx,%eax), %ecx
	addl	%eax, %edx
	movl	%edx, 36(%esp)          # 4-byte Spill
	cmpl	$9, %esi
	movl	%ebp, %eax
	movl	%eax, %edi
	movl	%esi, %edx
	movl	$0, 28(%esp)            # 4-byte Folded Spill
	movl	%ebx, %ebp
	movl	32(%esp), %ebx          # 4-byte Reload
	jb	.LBB11_63
	jmp	.LBB11_70
.LBB11_61:
	movb	$1, %al
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	$0, 28(%esp)            # 4-byte Folded Spill
	movl	8(%esp), %eax           # 4-byte Reload
	jmp	.LBB11_70
.LBB11_64:
	movb	$1, %al
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	%ecx, %esi
	movl	%ebx, %eax
	jmp	.LBB11_70
.LBB11_66:
	movl	$0, 28(%esp)            # 4-byte Folded Spill
	movl	%ebp, %eax
	movl	%ebx, %ebp
.LBB11_70:                              # %_ZNK10game_state3getEjj.exit44.thread
	movl	28(%esp), %ecx          # 4-byte Reload
	testl	%ebp, %ebp
	jle	.LBB11_76
# BB#71:
	testb	%cl, %cl
	je	.LBB11_72
# BB#73:                                # %_ZNK10game_state3getEjj.exit38
	leal	(%eax,%eax,8), %eax
	movl	72(%esp), %ecx
	addl	%eax, %ecx
	movzbl	1(%esi,%ecx), %ecx
	movb	$1, %al
	cmpl	$3, %ecx
	je	.LBB11_77
# BB#74:
	movzbl	%cl, %eax
	cmpl	$4, %eax
	setne	%al
	jmp	.LBB11_75
.LBB11_72:
	xorl	%eax, %eax
.LBB11_75:                              # %_ZNK10game_state3getEjj.exit32
	movl	20(%esp), %ecx          # 4-byte Reload
	orb	%al, %cl
	movb	$1, %al
	testb	$1, %cl
	je	.LBB11_77
.LBB11_76:                              # %.thread91
	xorl	%eax, %eax
.LBB11_77:
	movzbl	%al, %eax
	addl	$52, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end11:
	.size	_Z10move_validPK10game_statePK9game_move, .Lfunc_end11-_Z10move_validPK10game_statePK9game_move

	.globl	_Z10apply_moveP10game_statePK9game_move
	.align	16, 0x90
	.type	_Z10apply_moveP10game_statePK9game_move,@function
_Z10apply_moveP10game_statePK9game_move: # @_Z10apply_moveP10game_statePK9game_move
# BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$60, %esp
	calll	.L12$pb
.L12$pb:
	popl	%ebx
.Ltmp69:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp69-.L12$pb), %ebx
	movl	84(%esp), %esi
	movl	80(%esp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	calll	_Z10move_validPK10game_statePK9game_move@PLT
	testb	%al, %al
	je	.LBB12_1
# BB#2:
	movl	20(%esi), %eax
	movl	(%esi), %edx
	movl	4(%esi), %ecx
	movl	%eax, %edi
	subl	%ecx, %edi
	movl	%edi, 48(%esp)          # 4-byte Spill
	movl	24(%esi), %ebp
	movl	%ebp, 52(%esp)          # 4-byte Spill
	movl	8(%esi), %edi
	subl	%edi, %ebp
	movl	%ebp, 36(%esp)          # 4-byte Spill
	cmpl	$1, %edx
	je	.LBB12_11
# BB#3:
	testl	%edx, %edx
	jne	.LBB12_35
# BB#4:                                 # %.preheader.preheader
	leal	(%ecx,%ecx,8), %edx
	movl	80(%esp), %esi
	leal	-9(%esi,%edx), %esi
	leal	(%eax,%eax,8), %eax
	movl	52(%esp), %ebx          # 4-byte Reload
	addl	%eax, %ebx
	movl	%edi, %ebp
	subl	%ebp, %ebx
	subl	%edx, %ebx
	movl	%ebx, 52(%esp)          # 4-byte Spill
	leal	-1(%ebp), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	movb	$3, %al
	xorl	%ebx, %ebx
	movl	36(%esp), %edi          # 4-byte Reload
	.align	16, 0x90
.LBB12_5:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	leal	5(%ebp,%ebx), %edx
	cmpl	%ecx, %edx
	jbe	.LBB12_35
# BB#6:                                 # %.preheader
                                        #   in Loop: Header=BB12_5 Depth=1
	movb	%al, 59(%esp)           # 1-byte Spill
	movl	%ecx, %eax
	movl	%ebp, %ecx
	movl	%edi, %ebp
	leal	5(%eax), %edx
	leal	(%ecx,%ebx), %edi
	cmpl	%edi, %edx
	jbe	.LBB12_35
# BB#7:                                 # %.preheader
                                        #   in Loop: Header=BB12_5 Depth=1
	leal	-1(%eax), %edx
	cmpl	$8, %edx
	movl	%ebp, %edi
	ja	.LBB12_35
# BB#8:                                 # %.preheader
                                        #   in Loop: Header=BB12_5 Depth=1
	movl	44(%esp), %edx          # 4-byte Reload
	leal	(%edx,%ebx), %edx
	cmpl	$8, %edx
	ja	.LBB12_35
# BB#9:                                 # %_ZNK10game_state3getEjj.exit50
                                        #   in Loop: Header=BB12_5 Depth=1
	movl	%ecx, %ebp
	movzbl	(%ebp,%esi), %edx
	cmpl	$4, %edx
	je	.LBB12_35
# BB#10:                                #   in Loop: Header=BB12_5 Depth=1
	movb	59(%esp), %cl           # 1-byte Reload
	movb	%cl, (%ebp,%esi)
	movl	%eax, %ecx
	addl	48(%esp), %ecx          # 4-byte Folded Reload
	addl	52(%esp), %esi          # 4-byte Folded Reload
	addl	%edi, %ebx
	movzbl	%dl, %eax
	cmpl	$3, %eax
	movb	%dl, %al
	jne	.LBB12_5
	jmp	.LBB12_35
.LBB12_1:
	xorl	%eax, %eax
	jmp	.LBB12_36
.LBB12_11:
	leal	-1(%ecx), %esi
	cmpl	$9, %esi
	sbbb	%dl, %dl
	movl	%edi, %ebp
	movl	%ebp, 40(%esp)          # 4-byte Spill
	leal	-1(%ebp), %edi
	movl	%edi, 44(%esp)          # 4-byte Spill
	cmpl	$9, %edi
	sbbb	%dh, %dh
	movb	%dh, 59(%esp)           # 1-byte Spill
	leal	5(%ecx), %edi
	cmpl	%edi, %ebp
	movl	80(%esp), %edi
	sbbb	%dh, %dh
	andb	%dl, %dh
	movb	%dh, 35(%esp)           # 1-byte Spill
	leal	5(%ebp), %edx
	cmpl	%edx, %ecx
	sbbb	%dl, %dl
	andb	35(%esp), %dl           # 1-byte Folded Reload
	andb	59(%esp), %dl           # 1-byte Folded Reload
	andb	$1, %dl
	movb	%dl, 35(%esp)           # 1-byte Spill
	movb	$4, 59(%esp)            # 1-byte Folded Spill
	movzbl	%dl, %edx
	cmpl	$1, %edx
	jne	.LBB12_13
# BB#12:
	leal	(%esi,%esi,8), %edx
	addl	%edi, %edx
	movl	44(%esp), %ebp          # 4-byte Reload
	movb	1(%ebp,%edx), %dl
	movb	%dl, 59(%esp)           # 1-byte Spill
.LBB12_13:                              # %_ZNK10game_state3getEjj.exit
	movl	%esi, 24(%esp)          # 4-byte Spill
	movl	%ebx, 20(%esp)          # 4-byte Spill
	movl	52(%esp), %esi          # 4-byte Reload
	leal	5(%esi), %edx
	cmpl	%eax, %edx
	jbe	.LBB12_37
# BB#14:                                # %_ZNK10game_state3getEjj.exit
	leal	5(%eax), %edx
	cmpl	%esi, %edx
	jbe	.LBB12_37
# BB#15:                                # %_ZNK10game_state3getEjj.exit
	decl	%eax
	cmpl	$8, %eax
	ja	.LBB12_37
# BB#16:                                # %_ZNK10game_state3getEjj.exit
	decl	%esi
	cmpl	$9, %esi
	jae	.LBB12_37
# BB#17:                                # %_ZN10game_state3setEjj9FieldType.exit13
	leal	(%eax,%eax,8), %eax
	addl	%edi, %eax
	movb	59(%esp), %dl           # 1-byte Reload
	movb	%dl, 1(%esi,%eax)
	movl	84(%esp), %eax
	movl	12(%eax), %edi
	movl	16(%eax), %esi
	movl	48(%esp), %ebp          # 4-byte Reload
	leal	(%edi,%ebp), %eax
	movl	36(%esp), %ebx          # 4-byte Reload
	leal	5(%esi,%ebx), %edx
	cmpl	%eax, %edx
	jbe	.LBB12_37
# BB#18:                                # %_ZN10game_state3setEjj9FieldType.exit13
	leal	(%esi,%ebx), %eax
	leal	5(%edi,%ebp), %edx
	cmpl	%eax, %edx
	jbe	.LBB12_37
# BB#19:                                # %_ZN10game_state3setEjj9FieldType.exit13
	leal	-1(%edi,%ebp), %eax
	cmpl	$8, %eax
	ja	.LBB12_37
# BB#20:                                # %_ZN10game_state3setEjj9FieldType.exit13
	leal	-1(%esi,%ebx), %edx
	movl	%edx, 52(%esp)          # 4-byte Spill
	cmpl	$9, %edx
	jae	.LBB12_37
# BB#21:                                # %_ZN10game_state3setEjj9FieldType.exit19
	leal	(%eax,%eax,8), %eax
	addl	80(%esp), %eax
	movb	59(%esp), %dl           # 1-byte Reload
	movl	%esi, 28(%esp)          # 4-byte Spill
	movl	52(%esp), %esi          # 4-byte Reload
	movb	%dl, 1(%esi,%eax)
	movl	28(%esp), %esi          # 4-byte Reload
	addl	%edi, %ecx
	shrl	%ecx
	leal	(%ecx,%ebp), %eax
	movl	40(%esp), %edx          # 4-byte Reload
	addl	%esi, %edx
	shrl	%edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	leal	5(%edx,%ebx), %edx
	cmpl	%eax, %edx
	jbe	.LBB12_37
# BB#22:                                # %_ZN10game_state3setEjj9FieldType.exit19
	movl	40(%esp), %eax          # 4-byte Reload
	leal	(%eax,%ebx), %eax
	leal	5(%ecx,%ebp), %edx
	cmpl	%eax, %edx
	jbe	.LBB12_37
# BB#23:                                # %_ZN10game_state3setEjj9FieldType.exit19
	leal	-1(%ecx,%ebp), %eax
	cmpl	$8, %eax
	ja	.LBB12_37
# BB#24:                                # %_ZN10game_state3setEjj9FieldType.exit19
	movl	40(%esp), %edx          # 4-byte Reload
	leal	-1(%edx,%ebx), %edx
	cmpl	$9, %edx
	jae	.LBB12_37
# BB#25:                                # %_ZN10game_state3setEjj9FieldType.exit25
	leal	(%eax,%eax,8), %eax
	movl	80(%esp), %ebx
	movl	%ebx, %ebp
	addl	%ebp, %eax
	movb	59(%esp), %bl           # 1-byte Reload
	movb	%bl, 1(%edx,%eax)
	cmpb	$0, 35(%esp)            # 1-byte Folded Reload
	je	.LBB12_37
# BB#26:                                # %_ZN10game_state3setEjj9FieldType.exit31
	movl	24(%esp), %eax          # 4-byte Reload
	leal	(%eax,%eax,8), %eax
	addl	%ebp, %eax
	movl	%ebp, %edx
	movl	44(%esp), %ebx          # 4-byte Reload
	movb	$3, 1(%ebx,%eax)
	leal	5(%esi), %eax
	cmpl	%edi, %eax
	jbe	.LBB12_37
# BB#27:                                # %_ZN10game_state3setEjj9FieldType.exit31
	leal	5(%edi), %eax
	cmpl	%esi, %eax
	jbe	.LBB12_37
# BB#28:                                # %_ZN10game_state3setEjj9FieldType.exit31
	decl	%edi
	cmpl	$8, %edi
	ja	.LBB12_37
# BB#29:                                # %_ZN10game_state3setEjj9FieldType.exit31
	decl	%esi
	cmpl	$9, %esi
	jae	.LBB12_37
# BB#30:                                # %_ZN10game_state3setEjj9FieldType.exit37
	leal	(%edi,%edi,8), %eax
	addl	%edx, %eax
	movb	$3, 1(%esi,%eax)
	movl	40(%esp), %esi          # 4-byte Reload
	leal	5(%esi), %eax
	cmpl	%ecx, %eax
	jbe	.LBB12_37
# BB#31:                                # %_ZN10game_state3setEjj9FieldType.exit37
	leal	5(%ecx), %eax
	cmpl	%esi, %eax
	jbe	.LBB12_37
# BB#32:                                # %_ZN10game_state3setEjj9FieldType.exit37
	decl	%ecx
	cmpl	$8, %ecx
	ja	.LBB12_37
# BB#33:                                # %_ZN10game_state3setEjj9FieldType.exit37
	decl	%esi
	cmpl	$9, %esi
	jae	.LBB12_37
# BB#34:                                # %_ZN10game_state3setEjj9FieldType.exit43
	leal	(%ecx,%ecx,8), %eax
	addl	%eax, %edx
	movb	$3, 1(%esi,%edx)
.LBB12_35:
	movb	$1, %al
.LBB12_36:                              # %.thread
	movzbl	%al, %eax
	addl	$60, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.LBB12_37:                              # %_ZL15check_valid_posjj.exit.thread.i12
	movl	20(%esp), %ebx          # 4-byte Reload
	leal	.L__PRETTY_FUNCTION__._ZN10game_state3setEjj9FieldType@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.50@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$127, 8(%esp)
	calll	__assert_fail@PLT
.Lfunc_end12:
	.size	_Z10apply_moveP10game_statePK9game_move, .Lfunc_end12-_Z10apply_moveP10game_statePK9game_move

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushl	%ebp
.Ltmp70:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.Ltmp71:
	.cfi_def_cfa_offset 12
	pushl	%edi
.Ltmp72:
	.cfi_def_cfa_offset 16
	pushl	%esi
.Ltmp73:
	.cfi_def_cfa_offset 20
	subl	$524, %esp              # imm = 0x20C
.Ltmp74:
	.cfi_def_cfa_offset 544
.Ltmp75:
	.cfi_offset %esi, -20
.Ltmp76:
	.cfi_offset %edi, -16
.Ltmp77:
	.cfi_offset %ebx, -12
.Ltmp78:
	.cfi_offset %ebp, -8
	calll	.L13$pb
.Ltmp79:
	.cfi_adjust_cfa_offset 4
.L13$pb:
	popl	%ebx
.Ltmp80:
	.cfi_adjust_cfa_offset -4
.Ltmp81:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp81-.L13$pb), %ebx
	movl	544(%esp), %ebp
	leal	.L.str.12@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
	leal	.L.str.11@GOTOFF(%ebx), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	leal	.L.str.13@GOTOFF(%ebx), %esi
	movl	optarg@GOT(%ebx), %edi
	jmp	.LBB13_1
.LBB13_18:                              #   in Loop: Header=BB13_1 Depth=1
	movl	(%edi), %eax
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	calll	strtoul@PLT
	shll	$20, %eax
	movl	%eax, _ZL9mem_limit@GOTOFF+4(%ebx)
	.align	16, 0x90
.LBB13_1:                               # %.backedge
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, 8(%esp)
	movl	548(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	calll	getopt@PLT
	cmpl	$99, %eax
	jle	.LBB13_2
# BB#9:                                 # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$114, %eax
	jg	.LBB13_14
# BB#10:                                # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$100, %eax
	je	.LBB13_74
# BB#11:                                # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$109, %eax
	jne	.LBB13_12
# BB#17:                                #   in Loop: Header=BB13_1 Depth=1
	movl	(%edi), %eax
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	calll	strtoul@PLT
	shll	$20, %eax
	movl	%eax, _ZL9mem_limit@GOTOFF(%ebx)
	jmp	.LBB13_1
	.align	16, 0x90
.LBB13_2:                               # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$76, %eax
	jle	.LBB13_3
# BB#6:                                 # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$77, %eax
	je	.LBB13_18
# BB#7:                                 # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$84, %eax
	jne	.LBB13_1
# BB#8:                                 #   in Loop: Header=BB13_1 Depth=1
	movl	(%edi), %eax
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	calll	strtoul@PLT
	movl	%eax, _ZL9cpu_limit@GOTOFF+4(%ebx)
	jmp	.LBB13_1
	.align	16, 0x90
.LBB13_14:                              # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$115, %eax
	je	.LBB13_19
# BB#15:                                # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$116, %eax
	jne	.LBB13_1
# BB#16:                                #   in Loop: Header=BB13_1 Depth=1
	movl	(%edi), %eax
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	calll	strtoul@PLT
	movl	%eax, _ZL9cpu_limit@GOTOFF(%ebx)
	jmp	.LBB13_1
.LBB13_3:                               # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$-1, %eax
	je	.LBB13_20
# BB#4:                                 # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$58, %eax
	je	.LBB13_13
# BB#5:                                 # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$63, %eax
	jne	.LBB13_1
	jmp	.LBB13_13
.LBB13_74:                              #   in Loop: Header=BB13_1 Depth=1
	movb	$1, _ZL5debug@GOTOFF(%ebx)
	jmp	.LBB13_1
.LBB13_19:                              #   in Loop: Header=BB13_1 Depth=1
	movl	(%edi), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	jmp	.LBB13_1
.LBB13_12:                              # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$104, %eax
	jne	.LBB13_1
	jmp	.LBB13_13
.LBB13_20:
	movl	optind@GOT(%ebx), %esi
	movl	(%esi), %eax
	addl	$2, %eax
	cmpl	%ebp, %eax
	jg	.LBB13_13
# BB#21:
	movl	$1, 344(%esp)
	leal	348(%esp), %eax
	movl	%eax, (%esp)
	calll	sigemptyset@PLT
	movl	$0, 480(%esp)
	movl	$0, 344(%esp)
	movl	$0, 476(%esp)
	leal	344(%esp), %edi
	movl	%edi, 4(%esp)
	movl	$0, 8(%esp)
	movl	$13, (%esp)
	calll	sigaction@PLT
	testl	%eax, %eax
	jne	.LBB13_75
# BB#22:
	movl	$0, 200(%esp)
	leal	204(%esp), %eax
	movl	%eax, (%esp)
	calll	sigemptyset@PLT
	movl	$0, 336(%esp)
	leal	_ZL13alarm_handleriP9siginfo_tPv@GOTOFF(%ebx), %eax
	movl	%eax, 200(%esp)
	movl	$268435460, 332(%esp)   # imm = 0x10000004
	leal	200(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$0, 8(%esp)
	movl	$14, (%esp)
	calll	sigaction@PLT
	testl	%eax, %eax
	movl	548(%esp), %ebp
	jne	.LBB13_75
# BB#23:
	movl	$0, 56(%esp)
	leal	60(%esp), %eax
	movl	%eax, (%esp)
	calll	sigemptyset@PLT
	movl	$0, 192(%esp)
	leal	_ZL13child_handleriP9siginfo_tPv@GOTOFF(%ebx), %eax
	movl	%eax, 56(%esp)
	movl	$268435460, 188(%esp)   # imm = 0x10000004
	leal	56(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$0, 8(%esp)
	movl	$17, (%esp)
	calll	sigaction@PLT
	testl	%eax, %eax
	jne	.LBB13_75
# BB#24:                                # %_ZL21setup_signal_handlersv.exit
	movl	(%esi), %eax
	movl	(%ebp,%eax,4), %ecx
	leal	_ZL6player@GOTOFF(%ebx), %edx
	calll	_ZL11fork_playerPcP6player
	testb	%al, %al
	je	.LBB13_76
# BB#25:
	movl	(%esi), %eax
	movl	4(%ebp,%eax,4), %ecx
	leal	_ZL6player@GOTOFF+16(%ebx), %edx
	calll	_ZL11fork_playerPcP6player
	testb	%al, %al
	je	.LBB13_76
# BB#26:
	movl	%edi, (%esp)
	movl	$82, 8(%esp)
	movl	$4, 4(%esp)
	calll	memset@PLT
	movl	52(%esp), %esi          # 4-byte Reload
	testl	%esi, %esi
	je	.LBB13_77
# BB#27:
	movl	%esi, (%esp)
	calll	strlen@PLT
	cmpl	$63, %eax
	jne	.LBB13_78
# BB#28:                                # %_Z16initialize_stateP10game_statePKc.exit
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	calll	_ZN10game_state5setupEPKc@PLT
	movl	%edi, (%esp)
	calll	_ZNK10game_state5printEv@PLT
	movzbl	344(%esp), %eax
	cmpl	$1, %eax
	setne	%al
	movzbl	%al, %esi
	leal	496(%esp), %ebp
	movl	$0, 24(%esp)            # 4-byte Folded Spill
.LBB13_29:                              # %.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_32 Depth 2
	movl	%edi, (%esp)
	calll	_Z14is_final_statePK10game_state@PLT
	testb	%al, %al
	jne	.LBB13_30
# BB#31:                                # %.lr.ph
                                        #   in Loop: Header=BB13_29 Depth=1
	movl	%esi, 52(%esp)          # 4-byte Spill
	movl	%esi, %eax
	orl	$1, %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	%esi, %eax
	shll	$4, %eax
	leal	_ZL6player@GOTOFF(%ebx,%eax), %edx
	movl	%edx, 48(%esp)          # 4-byte Spill
	leal	_ZL6player@GOTOFF+13(%ebx,%eax), %edx
	movl	%edx, 44(%esp)          # 4-byte Spill
	leal	_ZL6player@GOTOFF+12(%ebx,%eax), %edx
	movl	%edx, 36(%esp)          # 4-byte Spill
	leal	_ZL6player@GOTOFF+8(%ebx,%eax), %edx
	movl	%edx, 32(%esp)          # 4-byte Spill
	leal	_ZL6player@GOTOFF+4(%ebx,%eax), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	.align	16, 0x90
.LBB13_32:                              #   Parent Loop BB13_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$1, 40(%esp)            # 4-byte Folded Reload
	jne	.LBB13_79
# BB#33:                                #   in Loop: Header=BB13_32 Depth=2
	cmpl	$1, %esi
	je	.LBB13_36
# BB#34:                                #   in Loop: Header=BB13_32 Depth=2
	testl	%esi, %esi
	jne	.LBB13_37
# BB#35:                                #   in Loop: Header=BB13_32 Depth=2
	movb	$1, 344(%esp)
	jmp	.LBB13_38
	.align	16, 0x90
.LBB13_36:                              #   in Loop: Header=BB13_32 Depth=2
	movb	$2, 344(%esp)
	jmp	.LBB13_38
	.align	16, 0x90
.LBB13_37:                              #   in Loop: Header=BB13_32 Depth=2
	movb	$4, 344(%esp)
.LBB13_38:                              # %_ZN10game_state6playerEj.exit
                                        #   in Loop: Header=BB13_32 Depth=2
	movl	%ebp, (%esp)
	calll	time@PLT
	cmpl	$-1, 496(%esp)
	je	.LBB13_39
.LBB13_40:                              #   in Loop: Header=BB13_32 Depth=2
	movl	%ebp, (%esp)
	calll	localtime@PLT
	movl	%eax, %esi
	testl	%esi, %esi
	je	.LBB13_41
.LBB13_42:                              # %_ZL10getTimeStrPcj.exit
                                        #   in Loop: Header=BB13_32 Depth=2
	movl	%esi, 12(%esp)
	leal	.L.str.85@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	200(%esp), %eax
	movl	%eax, %esi
	movl	%esi, (%esp)
	movl	$64, 4(%esp)
	calll	strftime@PLT
	movl	52(%esp), %eax          # 4-byte Reload
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	leal	.L.str.15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
	leal	.L.str.16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	calll	fflush@PLT
	movl	%edi, %esi
	movl	%esi, 4(%esp)
	movl	$2, (%esp)
	calll	_Z15serialize_stateiPK10game_state@PLT
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	calll	fputc@PLT
	movl	44(%esp), %eax          # 4-byte Reload
	movb	$0, (%eax)
	movl	36(%esp), %eax          # 4-byte Reload
	movb	$0, (%eax)
	movl	48(%esp), %edi          # 4-byte Reload
	movl	%edi, _ZL14current_player@GOTOFF(%ebx)
	movl	_ZL9cpu_limit@GOTOFF(%ebx), %eax
	movl	$0, 496(%esp)
	movl	$0, 500(%esp)
	cmpl	$-1, %eax
	movl	$0, %ecx
	cmovel	%ecx, %eax
	movl	%eax, 504(%esp)
	movl	$0, 508(%esp)
	movl	%ebp, 4(%esp)
	movl	$0, 8(%esp)
	movl	$0, (%esp)
	calll	setitimer@PLT
	testl	%eax, %eax
	js	.LBB13_80
# BB#43:                                # %_ZL9arm_timerl.exit.i
                                        #   in Loop: Header=BB13_32 Depth=2
	movl	(%edi), %eax
	movl	%eax, (%esp)
	movl	$18, 4(%esp)
	calll	kill@PLT
	testl	%eax, %eax
	js	.LBB13_64
# BB#44:                                #   in Loop: Header=BB13_32 Depth=2
	movl	32(%esp), %eax          # 4-byte Reload
	movl	(%eax), %eax
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	calll	_Z15serialize_stateiPK10game_state@PLT
	movl	44(%esp), %eax          # 4-byte Reload
	cmpb	$0, (%eax)
	jne	.LBB13_63
# BB#45:                                #   in Loop: Header=BB13_32 Depth=2
	movl	%esi, %edi
	movl	28(%esp), %eax          # 4-byte Reload
	movl	(%eax), %eax
	movl	$0, 500(%esp)
	movl	$0, 496(%esp)
	movl	$0, 504(%esp)
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	movl	$10, 8(%esp)
	calll	read@PLT
	movl	%eax, %esi
	movl	%esi, 8(%esp)
	movl	%ebp, 4(%esp)
	leal	.L.str.5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
	testl	%esi, %esi
	je	.LBB13_46
# BB#47:                                #   in Loop: Header=BB13_32 Depth=2
	cmpl	$6, %esi
	je	.LBB13_50
# BB#48:                                #   in Loop: Header=BB13_32 Depth=2
	cmpl	$9, %esi
	jne	.LBB13_49
.LBB13_50:                              #   in Loop: Header=BB13_32 Depth=2
	movl	%ebp, (%esp)
	calll	strlen@PLT
	cmpl	$5, %eax
	movl	%edi, %esi
	je	.LBB13_53
# BB#51:                                #   in Loop: Header=BB13_32 Depth=2
	cmpl	$8, %eax
	jne	.LBB13_52
.LBB13_53:                              #   in Loop: Header=BB13_32 Depth=2
	movl	%ebp, 4(%esp)
	leal	56(%esp), %eax
	movl	%eax, (%esp)
	calll	_ZN9game_move5setupEPKc@PLT
	jmp	.LBB13_54
.LBB13_39:                              #   in Loop: Header=BB13_32 Depth=2
	leal	.L.str.83@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	perror@PLT
	jmp	.LBB13_40
.LBB13_41:                              #   in Loop: Header=BB13_32 Depth=2
	leal	.L.str.84@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	perror@PLT
	jmp	.LBB13_42
.LBB13_49:                              #   in Loop: Header=BB13_32 Depth=2
	movl	%esi, 4(%esp)
	leal	.L.str.6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
.LBB13_46:                              #   in Loop: Header=BB13_32 Depth=2
	xorl	%eax, %eax
	movl	%edi, %esi
	jmp	.LBB13_54
.LBB13_52:                              #   in Loop: Header=BB13_32 Depth=2
	movl	%eax, 4(%esp)
	leal	.L.str.7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
	xorl	%eax, %eax
	.align	16, 0x90
.LBB13_54:                              # %_Z16deserialize_moveiP9game_move.exit.i
                                        #   in Loop: Header=BB13_32 Depth=2
	movl	48(%esp), %edi          # 4-byte Reload
	movl	44(%esp), %ecx          # 4-byte Reload
	cmpb	$0, (%ecx)
	je	.LBB13_55
.LBB13_63:                              # %_ZL11player_moveP6playerPK10game_stateP9game_move.exit
                                        #   in Loop: Header=BB13_32 Depth=2
	leal	.L.str.88@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
.LBB13_64:                              # %_ZL11player_moveP6playerPK10game_stateP9game_move.exit.thread
                                        #   in Loop: Header=BB13_32 Depth=2
	movl	%edi, 48(%esp)          # 4-byte Spill
	movl	%esi, %edi
	movzbl	_ZL5debug@GOTOFF(%ebx), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB13_68
# BB#65:                                #   in Loop: Header=BB13_32 Depth=2
	movl	52(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%esp)
	leal	.L.str.17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
.LBB13_66:                              # %.thread
                                        #   in Loop: Header=BB13_32 Depth=2
	movl	%edi, (%esp)
	calll	_Z14is_final_statePK10game_state@PLT
	testb	%al, %al
	movl	52(%esp), %esi          # 4-byte Reload
	je	.LBB13_32
	jmp	.LBB13_67
.LBB13_55:                              #   in Loop: Header=BB13_32 Depth=2
	testb	%al, %al
	je	.LBB13_64
# BB#56:                                #   in Loop: Header=BB13_32 Depth=2
	movl	(%edi), %eax
	movl	%eax, (%esp)
	movl	$19, 4(%esp)
	calll	kill@PLT
	testl	%eax, %eax
	js	.LBB13_64
# BB#57:                                #   in Loop: Header=BB13_32 Depth=2
	movl	%edi, 48(%esp)          # 4-byte Spill
	movl	%esi, %edi
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 496(%esp)
	movl	%ebp, 4(%esp)
	movl	$0, 8(%esp)
	movl	$0, (%esp)
	calll	setitimer@PLT
	testl	%eax, %eax
	js	.LBB13_80
# BB#58:                                # %_ZL9arm_timerl.exit2.i
                                        #   in Loop: Header=BB13_32 Depth=2
	movl	$0, _ZL14current_player@GOTOFF(%ebx)
	movl	$0, 488(%esp)
	movl	$0, 484(%esp)
	movw	$0, 492(%esp)
	movl	60(%esp), %ecx
	movl	_ZZNK9game_move8toStringEPcE3row@GOT(%ebx), %eax
	movb	(%eax,%ecx), %cl
	movb	%cl, 484(%esp)
	movl	64(%esp), %edx
	movl	_ZZNK9game_move8toStringEPcE4diag@GOT(%ebx), %ecx
	movb	(%ecx,%edx), %dl
	movb	%dl, 485(%esp)
	movl	$2, %edx
	cmpl	$1, 56(%esp)
	jne	.LBB13_60
# BB#59:                                #   in Loop: Header=BB13_32 Depth=2
	movb	$45, 486(%esp)
	movl	68(%esp), %edx
	movb	(%eax,%edx), %dl
	movb	%dl, 487(%esp)
	movl	72(%esp), %edx
	movb	(%ecx,%edx), %dl
	movb	%dl, 488(%esp)
	movl	$5, %edx
.LBB13_60:                              #   in Loop: Header=BB13_32 Depth=2
	movb	$44, 484(%esp,%edx)
	movl	76(%esp), %esi
	movb	(%eax,%esi), %al
	movb	%al, 485(%esp,%edx)
	movl	80(%esp), %eax
	movb	(%ecx,%eax), %al
	movb	%al, 486(%esp,%edx)
	movb	$0, 487(%esp,%edx)
	leal	484(%esp), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.87@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
	leal	56(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_Z10apply_moveP10game_statePK9game_move@PLT
	testb	%al, %al
	jne	.LBB13_69
# BB#61:                                #   in Loop: Header=BB13_32 Depth=2
	movl	52(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%esp)
	leal	.L.str.19@GOTOFF(%ebx), %esi
	movl	%esi, (%esp)
	calll	_Z5printPKcz@PLT
	movb	_ZL5debug@GOTOFF(%ebx), %al
	andb	$1, %al
	jne	.LBB13_66
	jmp	.LBB13_62
.LBB13_69:                              #   in Loop: Header=BB13_29 Depth=1
	movl	52(%esp), %esi          # 4-byte Reload
	movl	%esi, 4(%esp)
	leal	.L.str.20@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
	movl	$1, %edx
	subl	%esi, %edx
	sete	%al
	movzbl	%al, %eax
	movl	24(%esp), %ecx          # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	cmpl	$101, %ecx
	movl	%edx, %esi
	jl	.LBB13_29
	jmp	.LBB13_70
.LBB13_67:
	movl	%esi, %edx
.LBB13_70:                              # %.loopexit
	movl	%edx, %ebp
	movl	stderr@GOT(%ebx), %esi
	movl	(%esi), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	calll	fputc@PLT
	leal	.Lstr.92@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	puts@PLT
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	calll	fflush@PLT
	movl	%edi, 4(%esp)
	movl	$1, (%esp)
	calll	_Z15serialize_stateiPK10game_state@PLT
	movl	(%esi), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	calll	fputc@PLT
	movl	(%esi), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	calll	fputc@PLT
	leal	.L.str.22@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
	movl	24(%esp), %ecx          # 4-byte Reload
	cmpl	$100, %ecx
	jg	.LBB13_72
# BB#71:
	movl	$1, %eax
	subl	%ebp, %eax
	movsbl	.L.str.23@GOTOFF(%ebx,%eax), %eax
	movl	%ecx, 8(%esp)
	leal	.L.str.24@GOTOFF(%ebx), %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	jmp	.LBB13_73
.LBB13_72:
	movl	%ecx, 4(%esp)
	leal	.L.str.25@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
.LBB13_73:                              # %.preheader
	calll	_Z5printPKcz@PLT
	movl	_ZL6player@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$15, 4(%esp)
	calll	kill@PLT
	movl	_ZL6player@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$18, 4(%esp)
	calll	kill@PLT
	movl	_ZL6player@GOTOFF(%ebx), %eax
	leal	200(%esp), %ebp
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	calll	waitpid@PLT
	movl	_ZL6player@GOTOFF+16(%ebx), %eax
	movl	%eax, (%esp)
	movl	$15, 4(%esp)
	calll	kill@PLT
	movl	_ZL6player@GOTOFF+16(%ebx), %eax
	movl	%eax, (%esp)
	movl	$18, 4(%esp)
	calll	kill@PLT
	movl	_ZL6player@GOTOFF+16(%ebx), %eax
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	calll	waitpid@PLT
	xorl	%eax, %eax
	addl	$524, %esp              # imm = 0x20C
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.LBB13_30:
	movl	%esi, %edx
	jmp	.LBB13_70
.LBB13_80:
	leal	.L.str.55@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
	calll	abort@PLT
.LBB13_79:
	leal	.L__PRETTY_FUNCTION__._ZN10game_state6playerEj@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.82@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$99, 8(%esp)
	calll	__assert_fail@PLT
.LBB13_68:
	movl	52(%esp), %ecx          # 4-byte Reload
	movl	%ecx, 8(%esp)
	addl	$3, %ecx
	leal	.L.str.18@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	calll	_ZL8exit_msg11exit_reasonPKcz
.LBB13_13:                              # %.loopexit8
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.51@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$1, 8(%esp)
	movl	$527, 4(%esp)           # imm = 0x20F
	calll	fwrite@PLT
	movl	$1, (%esp)
	calll	exit@PLT
.LBB13_75:
	calll	abort@PLT
.LBB13_76:
	leal	.L.str.14@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$5, (%esp)
	calll	_ZL8exit_msg11exit_reasonPKcz
.LBB13_77:
	leal	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$80, 8(%esp)
	calll	__assert_fail@PLT
.LBB13_78:
	leal	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$81, 8(%esp)
	calll	__assert_fail@PLT
.LBB13_62:
	movl	52(%esp), %eax          # 4-byte Reload
	movl	%eax, 8(%esp)
	incl	%eax
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	calll	_ZL8exit_msg11exit_reasonPKcz
.Lfunc_end13:
	.size	main, .Lfunc_end13-main
	.cfi_endproc

	.align	16, 0x90
	.type	_ZL11fork_playerPcP6player,@function
_ZL11fork_playerPcP6player:             # @_ZL11fork_playerPcP6player
	.cfi_startproc
# BB#0:
	pushl	%ebx
.Ltmp82:
	.cfi_def_cfa_offset 8
	pushl	%edi
.Ltmp83:
	.cfi_def_cfa_offset 12
	pushl	%esi
.Ltmp84:
	.cfi_def_cfa_offset 16
	subl	$32, %esp
.Ltmp85:
	.cfi_def_cfa_offset 48
.Ltmp86:
	.cfi_offset %esi, -16
.Ltmp87:
	.cfi_offset %edi, -12
.Ltmp88:
	.cfi_offset %ebx, -8
	movl	%edx, %edi
	movl	%ecx, %esi
	calll	.L14$pb
.Ltmp89:
	.cfi_adjust_cfa_offset 4
.L14$pb:
	popl	%ebx
.Ltmp90:
	.cfi_adjust_cfa_offset -4
.Ltmp91:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp91-.L14$pb), %ebx
	leal	24(%esp), %eax
	movl	%eax, (%esp)
	calll	pipe@PLT
	testl	%eax, %eax
	je	.LBB14_2
# BB#1:
	xorl	%eax, %eax
	jmp	.LBB14_9
.LBB14_2:
	leal	16(%esp), %eax
	movl	%eax, (%esp)
	calll	pipe@PLT
	testl	%eax, %eax
	je	.LBB14_4
# BB#3:
	xorl	%eax, %eax
	jmp	.LBB14_9
.LBB14_4:
	calll	fork@PLT
	movl	%eax, (%edi)
	movl	(%edi), %eax
	cmpl	$-1, %eax
	je	.LBB14_10
# BB#5:
	cmpl	$0, (%edi)
	je	.LBB14_11
# BB#6:
	movl	(%edi), %eax
	movl	%eax, (%esp)
	movl	$19, 4(%esp)
	calll	kill@PLT
	testl	%eax, %eax
	js	.LBB14_7
# BB#8:
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	calll	close@PLT
	movl	16(%esp), %eax
	movl	%eax, (%esp)
	calll	close@PLT
	movl	24(%esp), %eax
	movl	%eax, 4(%edi)
	movl	20(%esp), %eax
	movl	%eax, 8(%edi)
	movb	$1, %al
	jmp	.LBB14_9
.LBB14_7:
	xorl	%eax, %eax
.LBB14_9:
	movzbl	%al, %eax
	addl	$32, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	retl
.LBB14_10:
	calll	abort@PLT
.LBB14_11:
	movl	24(%esp), %eax
	movl	%eax, (%esp)
	calll	close@PLT
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	calll	close@PLT
	movl	16(%esp), %eax
	movl	%eax, (%esp)
	movl	$3, 4(%esp)
	calll	dup2@PLT
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	movl	$4, 4(%esp)
	calll	dup2@PLT
	movl	$2, (%esp)
	calll	close@PLT
	movl	$2, 4(%esp)
	movl	$1, (%esp)
	calll	dup2@PLT
	leal	_ZL9cpu_limit@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	calll	setrlimit@PLT
	leal	_ZL9mem_limit@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$9, (%esp)
	calll	setrlimit@PLT
	movl	%esi, 4(%esp)
	movl	%esi, (%esp)
	movl	$0, 8(%esp)
	calll	execl@PLT
	movl	%esi, 4(%esp)
	leal	.L.str.80@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	printf@PLT
	leal	.L.str.81@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	perror@PLT
	movl	$5, (%esp)
	calll	_exit@PLT
.Lfunc_end14:
	.size	_ZL11fork_playerPcP6player, .Lfunc_end14-_ZL11fork_playerPcP6player
	.cfi_endproc

	.align	16, 0x90
	.type	_ZL8exit_msg11exit_reasonPKcz,@function
_ZL8exit_msg11exit_reasonPKcz:          # @_ZL8exit_msg11exit_reasonPKcz
# BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$28, %esp
	calll	.L15$pb
.L15$pb:
	popl	%ebx
.Ltmp92:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp92-.L15$pb), %ebx
	movl	48(%esp), %esi
	movl	52(%esp), %edi
	leal	56(%esp), %eax
	movl	%eax, 24(%esp)
	movl	stderr@GOT(%ebx), %ebp
	movl	(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	.L.str@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$1, 8(%esp)
	movl	$6, 4(%esp)
	calll	fwrite@PLT
	movl	(%ebp), %eax
	movl	24(%esp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	calll	vfprintf@PLT
	movl	%esi, (%esp)
	calll	exit@PLT
.Lfunc_end15:
	.size	_ZL8exit_msg11exit_reasonPKcz, .Lfunc_end15-_ZL8exit_msg11exit_reasonPKcz

	.section	.text._ZN10game_state3setEjjc,"axG",@progbits,_ZN10game_state3setEjjc,comdat
	.weak	_ZN10game_state3setEjjc
	.align	16, 0x90
	.type	_ZN10game_state3setEjjc,@function
_ZN10game_state3setEjjc:                # @_ZN10game_state3setEjjc
# BB#0:
	pushl	%ebx
	pushl	%esi
	subl	$20, %esp
	calll	.L16$pb
.L16$pb:
	popl	%ebx
.Ltmp93:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp93-.L16$pb), %ebx
	movzbl	44(%esp), %ecx
	movl	40(%esp), %eax
	movl	36(%esp), %edx
	movl	32(%esp), %esi
	cmpl	$46, %ecx
	je	.LBB16_13
# BB#1:
	movzbl	%cl, %ecx
	cmpl	$87, %ecx
	je	.LBB16_8
# BB#2:
	cmpl	$66, %ecx
	jne	.LBB16_18
# BB#3:
	leal	5(%eax), %ecx
	cmpl	%edx, %ecx
	jbe	.LBB16_24
# BB#4:
	leal	5(%edx), %ecx
	cmpl	%eax, %ecx
	jbe	.LBB16_24
# BB#5:
	decl	%edx
	cmpl	$8, %edx
	ja	.LBB16_24
# BB#6:
	decl	%eax
	cmpl	$9, %eax
	jae	.LBB16_24
# BB#7:                                 # %_ZN10game_state3setEjj9FieldType.exit
	leal	(%edx,%edx,8), %ecx
	addl	%ecx, %esi
	movb	$1, 1(%eax,%esi)
	jmp	.LBB16_23
.LBB16_13:
	leal	5(%eax), %ecx
	cmpl	%edx, %ecx
	jbe	.LBB16_24
# BB#14:
	leal	5(%edx), %ecx
	cmpl	%eax, %ecx
	jbe	.LBB16_24
# BB#15:
	decl	%edx
	cmpl	$8, %edx
	ja	.LBB16_24
# BB#16:
	decl	%eax
	cmpl	$9, %eax
	jae	.LBB16_24
# BB#17:                                # %_ZN10game_state3setEjj9FieldType.exit12
	leal	(%edx,%edx,8), %ecx
	addl	%ecx, %esi
	movb	$3, 1(%eax,%esi)
	jmp	.LBB16_23
.LBB16_8:
	leal	5(%eax), %ecx
	cmpl	%edx, %ecx
	jbe	.LBB16_24
# BB#9:
	leal	5(%edx), %ecx
	cmpl	%eax, %ecx
	jbe	.LBB16_24
# BB#10:
	decl	%edx
	cmpl	$8, %edx
	ja	.LBB16_24
# BB#11:
	decl	%eax
	cmpl	$9, %eax
	jae	.LBB16_24
# BB#12:                                # %_ZN10game_state3setEjj9FieldType.exit6
	leal	(%edx,%edx,8), %ecx
	addl	%ecx, %esi
	movb	$2, 1(%eax,%esi)
	jmp	.LBB16_23
.LBB16_18:
	leal	5(%eax), %ecx
	cmpl	%edx, %ecx
	jbe	.LBB16_24
# BB#19:
	leal	5(%edx), %ecx
	cmpl	%eax, %ecx
	jbe	.LBB16_24
# BB#20:
	decl	%edx
	cmpl	$8, %edx
	ja	.LBB16_24
# BB#21:
	decl	%eax
	cmpl	$9, %eax
	jae	.LBB16_24
# BB#22:                                # %_ZN10game_state3setEjj9FieldType.exit18
	leal	(%edx,%edx,8), %ecx
	addl	%ecx, %esi
	movb	$4, 1(%eax,%esi)
.LBB16_23:
	addl	$20, %esp
	popl	%esi
	popl	%ebx
	retl
.LBB16_24:                              # %_ZL15check_valid_posjj.exit.thread.i
	leal	.L__PRETTY_FUNCTION__._ZN10game_state3setEjj9FieldType@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.50@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$127, 8(%esp)
	calll	__assert_fail@PLT
.Lfunc_end16:
	.size	_ZN10game_state3setEjjc, .Lfunc_end16-_ZN10game_state3setEjjc

	.text
	.align	16, 0x90
	.type	_ZL13alarm_handleriP9siginfo_tPv,@function
_ZL13alarm_handleriP9siginfo_tPv:       # @_ZL13alarm_handleriP9siginfo_tPv
# BB#0:
	pushl	%ebx
	subl	$40, %esp
	calll	.L17$pb
.L17$pb:
	popl	%ebx
.Ltmp94:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp94-.L17$pb), %ebx
	cmpl	$14, 48(%esp)
	jne	.LBB17_7
# BB#1:
	movl	_ZL14current_player@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.LBB17_8
# BB#2:
	cmpb	$0, 12(%eax)
	je	.LBB17_3
# BB#5:
	movb	$1, 13(%eax)
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	$9, 4(%esp)
	calll	kill@PLT
	jmp	.LBB17_6
.LBB17_3:
	movb	$1, 12(%eax)
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	$24, 4(%esp)
	calll	kill@PLT
	movl	_ZL9cpu_limit@GOTOFF+4(%ebx), %eax
	subl	_ZL9cpu_limit@GOTOFF(%ebx), %eax
	movl	$0, 24(%esp)
	movl	$0, 28(%esp)
	xorl	%ecx, %ecx
	cmpl	$-1, %eax
	cmovnel	%eax, %ecx
	movl	%ecx, 32(%esp)
	movl	$0, 36(%esp)
	leal	24(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$0, 8(%esp)
	movl	$0, (%esp)
	calll	setitimer@PLT
	testl	%eax, %eax
	js	.LBB17_4
.LBB17_6:
	addl	$40, %esp
	popl	%ebx
	retl
.LBB17_7:
	leal	.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.53@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.52@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$81, 8(%esp)
	calll	__assert_fail@PLT
.LBB17_8:
	leal	.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.53@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.54@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$84, 8(%esp)
	calll	__assert_fail@PLT
.LBB17_4:
	leal	.L.str.55@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
	calll	abort@PLT
.Lfunc_end17:
	.size	_ZL13alarm_handleriP9siginfo_tPv, .Lfunc_end17-_ZL13alarm_handleriP9siginfo_tPv

	.align	16, 0x90
	.type	_ZL13child_handleriP9siginfo_tPv,@function
_ZL13child_handleriP9siginfo_tPv:       # @_ZL13child_handleriP9siginfo_tPv
	.cfi_startproc
# BB#0:
	pushl	%ebx
.Ltmp95:
	.cfi_def_cfa_offset 8
	pushl	%edi
.Ltmp96:
	.cfi_def_cfa_offset 12
	pushl	%esi
.Ltmp97:
	.cfi_def_cfa_offset 16
	subl	$32, %esp
.Ltmp98:
	.cfi_def_cfa_offset 48
.Ltmp99:
	.cfi_offset %esi, -16
.Ltmp100:
	.cfi_offset %edi, -12
.Ltmp101:
	.cfi_offset %ebx, -8
	calll	.L18$pb
.Ltmp102:
	.cfi_adjust_cfa_offset 4
.L18$pb:
	popl	%ebx
.Ltmp103:
	.cfi_adjust_cfa_offset -4
.Ltmp104:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp104-.L18$pb), %ebx
	movl	52(%esp), %esi
	movl	8(%esi), %eax
	addl	$-5, %eax
	cmpl	$2, %eax
	jb	.LBB18_12
# BB#1:
	movl	20(%esi), %eax
	cmpl	$15, %eax
	je	.LBB18_9
# BB#2:
	cmpl	$11, %eax
	je	.LBB18_4
# BB#3:
	cmpl	$9, %eax
	je	.LBB18_4
# BB#10:
	movl	%eax, 4(%esp)
	leal	.L.str.60@GOTOFF(%ebx), %eax
	jmp	.LBB18_11
.LBB18_9:
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	calll	fputc@PLT
	leal	.L.str.59@GOTOFF(%ebx), %eax
.LBB18_11:
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
.LBB18_12:
	addl	$32, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	retl
.LBB18_4:
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	calll	fputc@PLT
	movl	8(%esi), %edi
	movl	20(%esi), %eax
	leal	-1(%edi), %edx
	leal	.L.str.65@GOTOFF(%ebx), %ecx
	cmpl	$3, %edx
	movl	%ecx, %edx
	ja	.LBB18_6
# BB#5:                                 # %switch.lookup.i
	movl	.Lswitch.table.93@GOTOFF-4(%ebx,%edi,4), %edx
.LBB18_6:                               # %_ZL11si_code_stri.exit
	leal	-1(%eax), %esi
	cmpl	$16, %esi
	ja	.LBB18_8
# BB#7:                                 # %switch.lookup.i4
	movl	.Lswitch.table.94@GOTOFF-4(%ebx,%eax,4), %ecx
.LBB18_8:                               # %_ZL10signal_stri.exit
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.L.str.56@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
	leal	.L.str.57@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
	movl	_ZL6player@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$15, 4(%esp)
	calll	kill@PLT
	movl	_ZL6player@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$18, 4(%esp)
	calll	kill@PLT
	movl	_ZL6player@GOTOFF(%ebx), %eax
	leal	28(%esp), %esi
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	calll	waitpid@PLT
	movl	_ZL6player@GOTOFF+16(%ebx), %eax
	movl	%eax, (%esp)
	movl	$15, 4(%esp)
	calll	kill@PLT
	movl	_ZL6player@GOTOFF+16(%ebx), %eax
	movl	%eax, (%esp)
	movl	$18, 4(%esp)
	calll	kill@PLT
	movl	_ZL6player@GOTOFF+16(%ebx), %eax
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	calll	waitpid@PLT
	leal	.L.str.58@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
	movl	$1, (%esp)
	calll	exit@PLT
.Lfunc_end18:
	.size	_ZL13child_handleriP9siginfo_tPv, .Lfunc_end18-_ZL13child_handleriP9siginfo_tPv
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	_GLOBAL__sub_I_mcp_S.cc,@function
_GLOBAL__sub_I_mcp_S.cc:                # @_GLOBAL__sub_I_mcp_S.cc
	.cfi_startproc
# BB#0:
	pushl	%ebx
.Ltmp105:
	.cfi_def_cfa_offset 8
	pushl	%esi
.Ltmp106:
	.cfi_def_cfa_offset 12
	subl	$20, %esp
.Ltmp107:
	.cfi_def_cfa_offset 32
.Ltmp108:
	.cfi_offset %esi, -12
.Ltmp109:
	.cfi_offset %ebx, -8
	calll	.L19$pb
.Ltmp110:
	.cfi_adjust_cfa_offset 4
.L19$pb:
	popl	%ebx
.Ltmp111:
	.cfi_adjust_cfa_offset -4
.Ltmp112:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp112-.L19$pb), %ebx
	leal	_ZStL8__ioinit@GOTOFF(%ebx), %esi
	movl	%esi, (%esp)
	calll	_ZNSt8ios_base4InitC1Ev@PLT
	movl	__dso_handle@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	_ZNSt8ios_base4InitD1Ev@GOT(%ebx), %eax
	movl	%eax, (%esp)
	calll	__cxa_atexit@PLT
	addl	$20, %esp
	popl	%esi
	popl	%ebx
	retl
.Lfunc_end19:
	.size	_GLOBAL__sub_I_mcp_S.cc, .Lfunc_end19-_GLOBAL__sub_I_mcp_S.cc
	.cfi_endproc

	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"<MCP> "
	.size	.L.str, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"cnt == 64"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"./abalone.cc"
	.size	.L.str.3, 13

	.type	.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state,@object # @__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state
.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state:
	.asciz	"bool deserialize_state(int, game_state *)"
	.size	.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state, 42

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"buf[63] == '\\0'"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Read %s, len %z\n"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Invalid length of move: %i\n"
	.size	.L.str.6, 28

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Unexpected EOF in move at %i\n"
	.size	.L.str.7, 30

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"init"
	.size	.L.str.8, 5

	.type	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc,@object # @__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc
.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc:
	.asciz	"void initialize_state(game_state *, const char *)"
	.size	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc, 50

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"strlen(init) == 63"
	.size	.L.str.9, 19

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"W: %d, B: %d\n"
	.size	.L.str.10, 14

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"B:BBBBBBBBBBB..BBB.............................WWW..WWWWWWWWWWW"
	.size	.L.str.11, 64

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Master Control Program\n"
	.size	.L.str.12, 24

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"dT:t:m:M:s:h"
	.size	.L.str.13, 13

	.type	_ZL5debug,@object       # @_ZL5debug
	.local	_ZL5debug
	.comm	_ZL5debug,1,1
	.type	_ZL9cpu_limit,@object   # @_ZL9cpu_limit
	.data
	.align	4
_ZL9cpu_limit:
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.size	_ZL9cpu_limit, 8

	.type	_ZL9mem_limit,@object   # @_ZL9mem_limit
	.align	4
_ZL9mem_limit:
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.size	_ZL9mem_limit, 8

	.type	_ZL6player,@object      # @_ZL6player
	.local	_ZL6player
	.comm	_ZL6player,32,4
	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"Unable to fork players.\n"
	.size	.L.str.14, 25

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"[%s] P%u's turn.\n"
	.size	.L.str.15, 18

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"State: "
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"No move from player %d.\n"
	.size	.L.str.17, 25

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"No move from player %u.\n"
	.size	.L.str.18, 25

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Invalid move from player %u.\n"
	.size	.L.str.19, 30

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"P%u moves.\n"
	.size	.L.str.20, 12

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"End of Line.\n"
	.size	.L.str.22, 14

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"BW"
	.size	.L.str.23, 3

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%c wins after %i turns.\n"
	.size	.L.str.24, 25

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"A draw after %i turns.\n"
	.size	.L.str.25, 24

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"str"
	.size	.L.str.26, 4

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"./board.h"
	.size	.L.str.27, 10

	.type	.L__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc,@object # @__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc
.L__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc:
	.asciz	"void game_state::toString(char *) const"
	.size	.L__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc, 40

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"i == 64"
	.size	.L.str.28, 8

	.type	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc,@object # @__PRETTY_FUNCTION__._ZN10game_state5setupEPKc
.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc:
	.asciz	"void game_state::setup(const char *)"
	.size	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc, 37

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"strlen(str) == 63"
	.size	.L.str.29, 18

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"str[1] == ':'"
	.size	.L.str.30, 14

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Unknown player type in '%s'\n"
	.size	.L.str.31, 29

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"i == 63"
	.size	.L.str.32, 8

	.type	_ZZNK9game_move8toStringEPcE3row,@object # @_ZZNK9game_move8toStringEPcE3row
	.section	.rodata._ZZNK9game_move8toStringEPcE3row,"aG",@progbits,_ZZNK9game_move8toStringEPcE3row,comdat
	.weak	_ZZNK9game_move8toStringEPcE3row
_ZZNK9game_move8toStringEPcE3row:
	.asciz	"-ABCDEFGHI"
	.size	_ZZNK9game_move8toStringEPcE3row, 11

	.type	_ZZNK9game_move8toStringEPcE4diag,@object # @_ZZNK9game_move8toStringEPcE4diag
	.section	.rodata._ZZNK9game_move8toStringEPcE4diag,"aG",@progbits,_ZZNK9game_move8toStringEPcE4diag,comdat
	.weak	_ZZNK9game_move8toStringEPcE4diag
_ZZNK9game_move8toStringEPcE4diag:
	.asciz	"-123456789"
	.size	_ZZNK9game_move8toStringEPcE4diag, 11

	.type	.L.str.36,@object       # @.str.36
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.36:
	.asciz	"Invalid char in move: %c\n"
	.size	.L.str.36, 26

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"ABCDEFGHI"
	.size	.L.str.38, 10

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	" "
	.size	.L.str.39, 2

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"  "
	.size	.L.str.40, 3

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"   "
	.size	.L.str.41, 4

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	" - "
	.size	.L.str.42, 4

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"    "
	.size	.L.str.43, 5

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"/ \\ "
	.size	.L.str.44, 5

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"\\ / "
	.size	.L.str.45, 5

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"               1   2   3   4   5"
	.size	.L.str.46, 33

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"\033[31;1mB\033[0m"
	.size	.L.str.47, 13

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"\033[32;1mW\033[0m"
	.size	.L.str.48, 13

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"o"
	.size	.L.str.49, 2

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"check_valid_pos(row, diagonal)"
	.size	.L.str.50, 31

	.type	.L__PRETTY_FUNCTION__._ZN10game_state3setEjj9FieldType,@object # @__PRETTY_FUNCTION__._ZN10game_state3setEjj9FieldType
.L__PRETTY_FUNCTION__._ZN10game_state3setEjj9FieldType:
	.asciz	"void game_state::set(idx_t, idx_t, FieldType)"
	.size	.L__PRETTY_FUNCTION__._ZN10game_state3setEjj9FieldType, 46

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Usage: mcp [-s state_string] [-t soft-player-time] [-m soft-player-mem]\n           [-T hard-player-time] [-M hard-player-mem]\n           [-d]\n           [-h]\n           player1 player2\n state_string - 63 character string representing an initial field state\n                (this is the string the MCP prints before every move.)\n player-time  - CPU time per turn in seconds\n player-mem   - Memory limit per player in megabytes\n -d           - turn on debugging, program won't exit on invalid move\n -h           - Show this help\n"
	.size	.L.str.51, 528

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"signum == SIGALRM"
	.size	.L.str.52, 18

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"./mcp-shared.cc"
	.size	.L.str.53, 16

	.type	.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv,@object # @__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv
.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv:
	.asciz	"void alarm_handler(int, siginfo_t *, void *)"
	.size	.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv, 45

	.type	_ZL14current_player,@object # @_ZL14current_player
	.local	_ZL14current_player
	.comm	_ZL14current_player,4,4
	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"p"
	.size	.L.str.54, 2

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Failed to set timer.\n"
	.size	.L.str.55, 22

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Child signal: %d (%s,%s)\n"
	.size	.L.str.56, 26

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"killing the other one\n"
	.size	.L.str.57, 23

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"exiting\n"
	.size	.L.str.58, 9

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"\033[32mCHILD terminated successfully\033[0m\n"
	.size	.L.str.59, 40

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Child signal: %i!\n"
	.size	.L.str.60, 19

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"exited"
	.size	.L.str.61, 7

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"killed"
	.size	.L.str.62, 7

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"coredumped"
	.size	.L.str.63, 11

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"trapped"
	.size	.L.str.64, 8

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"unknown"
	.size	.L.str.65, 8

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"SIGHUP"
	.size	.L.str.66, 7

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"SIGINT"
	.size	.L.str.67, 7

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"SIGILL"
	.size	.L.str.68, 7

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"SIGABRT"
	.size	.L.str.69, 8

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"SIGSEGV"
	.size	.L.str.70, 8

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"SIGFPE"
	.size	.L.str.71, 7

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"SIGPIPE"
	.size	.L.str.72, 8

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"SIGKILL"
	.size	.L.str.73, 8

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"SIGTERM"
	.size	.L.str.74, 8

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"SIGALRM"
	.size	.L.str.75, 8

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"SIGUSR1"
	.size	.L.str.76, 8

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"SIGUSR2"
	.size	.L.str.77, 8

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"SIGBUS"
	.size	.L.str.78, 7

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"SIGCHLD"
	.size	.L.str.79, 8

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"EXECL '%s' FAILED\n"
	.size	.L.str.80, 19

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"execl"
	.size	.L.str.81, 6

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"( p == 0) or (p == 1)"
	.size	.L.str.82, 22

	.type	.L__PRETTY_FUNCTION__._ZN10game_state6playerEj,@object # @__PRETTY_FUNCTION__._ZN10game_state6playerEj
.L__PRETTY_FUNCTION__._ZN10game_state6playerEj:
	.asciz	"void game_state::player(idx_t)"
	.size	.L__PRETTY_FUNCTION__._ZN10game_state6playerEj, 31

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"time()"
	.size	.L.str.83, 7

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"localtime()"
	.size	.L.str.84, 12

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"%H:%M:%S"
	.size	.L.str.85, 9

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Move is: %s\n"
	.size	.L.str.87, 13

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"Player timeout!\n"
	.size	.L.str.88, 17

	.section	.init_array,"aw",@init_array
	.align	4
	.long	_GLOBAL__sub_I_mcp_S.cc
	.type	.Lstr,@object           # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"from invalid"
	.size	.Lstr, 13

	.type	.Lstr.89,@object        # @str.89
.Lstr.89:
	.asciz	"from2 invalid"
	.size	.Lstr.89, 14

	.type	.Lstr.90,@object        # @str.90
.Lstr.90:
	.asciz	"to invalid"
	.size	.Lstr.90, 11

	.type	.Lstr.91,@object        # @str.91
.Lstr.91:
	.asciz	"missing comma"
	.size	.Lstr.91, 14

	.type	.Lstr.92,@object        # @str.92
.Lstr.92:
	.asciz	"Final state:"
	.size	.Lstr.92, 13

	.type	.Lswitch.table,@object  # @switch.table
	.section	.data.rel.ro,"aw",@progbits
	.align	4
.Lswitch.table:
	.long	.L.str.47
	.long	.L.str.48
	.long	.L.str.49
	.long	.L.str.39
	.size	.Lswitch.table, 16

	.type	.Lswitch.table.93,@object # @switch.table.93
	.align	4
.Lswitch.table.93:
	.long	.L.str.61
	.long	.L.str.62
	.long	.L.str.63
	.long	.L.str.64
	.size	.Lswitch.table.93, 16

	.type	.Lswitch.table.94,@object # @switch.table.94
	.align	16
.Lswitch.table.94:
	.long	.L.str.66
	.long	.L.str.67
	.long	.L.str.65
	.long	.L.str.68
	.long	.L.str.65
	.long	.L.str.69
	.long	.L.str.78
	.long	.L.str.71
	.long	.L.str.73
	.long	.L.str.76
	.long	.L.str.70
	.long	.L.str.77
	.long	.L.str.72
	.long	.L.str.75
	.long	.L.str.74
	.long	.L.str.65
	.long	.L.str.79
	.size	.Lswitch.table.94, 68


	.ident	"clang version 3.8.1-17 (tags/RELEASE_381/final)"
	.section	".note.GNU-stack","",@progbits
#endif
#ifdef __x86_64__
	.text
	.file	"mcp-S.cc"
	.globl	_Z5printPKcz
	.align	16, 0x90
	.type	_Z5printPKcz,@function
_Z5printPKcz:                           # @_Z5printPKcz
	.cfi_startproc
# BB#0:
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	subq	$200, %rsp
.Ltmp2:
	.cfi_def_cfa_offset 224
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	testb	%al, %al
	je	.LBB0_2
# BB#1:
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB0_2:
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rsi, 8(%rsp)
	leaq	(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	224(%rsp), %rax
	movq	%rax, 184(%rsp)
	movl	$48, 180(%rsp)
	movl	$8, 176(%rsp)
	movq	stderr@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rcx
	leaq	.L.str(%rip), %rdi
	movl	$6, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movq	(%rbx), %rdi
	leaq	176(%rsp), %rdx
	movq	%r14, %rsi
	callq	vfprintf@PLT
	addq	$200, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	_Z5printPKcz, .Lfunc_end0-_Z5printPKcz
	.cfi_endproc

	.globl	_Z8print_nlv
	.align	16, 0x90
	.type	_Z8print_nlv,@function
_Z8print_nlv:                           # @_Z8print_nlv
	.cfi_startproc
# BB#0:
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	$10, %edi
	jmp	fputc@PLT               # TAILCALL
.Lfunc_end1:
	.size	_Z8print_nlv, .Lfunc_end1-_Z8print_nlv
	.cfi_endproc

	.globl	_Z15serialize_stateiPK10game_state
	.align	16, 0x90
	.type	_Z15serialize_stateiPK10game_state,@function
_Z15serialize_stateiPK10game_state:     # @_Z15serialize_stateiPK10game_state
	.cfi_startproc
# BB#0:
	pushq	%r15
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp7:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp8:
	.cfi_def_cfa_offset 40
	subq	$72, %rsp
.Ltmp9:
	.cfi_def_cfa_offset 112
.Ltmp10:
	.cfi_offset %rbx, -40
.Ltmp11:
	.cfi_offset %r12, -32
.Ltmp12:
	.cfi_offset %r14, -24
.Ltmp13:
	.cfi_offset %r15, -16
	movzbl	(%rsi), %ecx
	movb	$66, %al
	cmpl	$1, %ecx
	je	.LBB2_2
# BB#1:                                 # %select.false
	movb	$87, %al
.LBB2_2:                                # %select.end
	movb	%al, (%rsp)
	movb	$58, 1(%rsp)
	movl	$2, %ecx
	movl	$1, %r15d
	movl	$1, %r8d
	.align	16, 0x90
.LBB2_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_6 Depth 2
	leal	-4(%r15), %eax
	cmpq	$6, %r15
	cmovbl	%r8d, %eax
	movl	%eax, %r12d
	cmpl	$9, %eax
	ja	.LBB2_11
# BB#4:                                 #   in Loop: Header=BB2_3 Depth=1
	leaq	5(%r15), %r9
	cmpq	%r9, %r12
	jae	.LBB2_11
# BB#5:                                 # %.lr.ph.split.us.preheader.i
                                        #   in Loop: Header=BB2_3 Depth=1
	leaq	-1(%r15), %r10
	movslq	%ecx, %rax
	leaq	(%rsp,%rax), %r11
	movl	%eax, %r14d
	movq	$-1, %rbx
	.align	16, 0x90
.LBB2_6:                                # %.lr.ph.split.us.i
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%r12,%rbx), %rax
	leal	6(%rax), %edx
	movl	$24, %ecx
	cmpq	%r15, %rdx
	jbe	.LBB2_9
# BB#7:                                 # %.lr.ph.split.us.i
                                        #   in Loop: Header=BB2_6 Depth=2
	cmpl	$8, %eax
	ja	.LBB2_9
# BB#8:                                 #   in Loop: Header=BB2_6 Depth=2
	movl	%eax, %eax
	leaq	(%r10,%r10,8), %rcx
	addq	%rsi, %rcx
	movb	1(%rax,%rcx), %al
	decb	%al
	movzbl	%al, %ecx
	shll	$3, %ecx
.LBB2_9:                                # %_ZNK10game_state4getCEjj.exit.us.i
                                        #   in Loop: Header=BB2_6 Depth=2
	movl	$539907906, %eax        # imm = 0x202E5742
	shrl	%cl, %eax
	movb	%al, 1(%r11,%rbx)
	leaq	2(%r12,%rbx), %rax
	incq	%rbx
	leal	1(%r14,%rbx), %ecx
	cmpq	$9, %rax
	ja	.LBB2_11
# BB#10:                                # %_ZNK10game_state4getCEjj.exit.us.i
                                        #   in Loop: Header=BB2_6 Depth=2
	cmpq	%r9, %rax
	jb	.LBB2_6
.LBB2_11:                               # %.critedge.i
                                        #   in Loop: Header=BB2_3 Depth=1
	incq	%r15
	cmpq	$10, %r15
	jne	.LBB2_3
# BB#12:
	movslq	%ecx, %rax
	movb	$0, (%rsp,%rax)
	cmpl	$63, %eax
	jne	.LBB2_14
# BB#13:                                # %_ZNK10game_state8toStringEPc.exit
	leaq	(%rsp), %rsi
	movl	$64, %edx
	callq	write@PLT
	movl	$64, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB2_14:
	leaq	.L.str.28(%rip), %rdi
	leaq	.L.str.27(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc(%rip), %rcx
	movl	$176, %edx
	callq	__assert_fail@PLT
.Lfunc_end2:
	.size	_Z15serialize_stateiPK10game_state, .Lfunc_end2-_Z15serialize_stateiPK10game_state
	.cfi_endproc

	.globl	_Z17deserialize_stateiP10game_state
	.align	16, 0x90
	.type	_Z17deserialize_stateiP10game_state,@function
_Z17deserialize_stateiP10game_state:    # @_Z17deserialize_stateiP10game_state
	.cfi_startproc
# BB#0:
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 16
	subq	$64, %rsp
.Ltmp15:
	.cfi_def_cfa_offset 80
.Ltmp16:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	movaps	%xmm0, 16(%rsp)
	movaps	%xmm0, (%rsp)
	leaq	(%rsp), %rsi
	movl	$64, %edx
	callq	read@PLT
	cmpq	$64, %rax
	jne	.LBB3_3
# BB#1:
	cmpb	$0, 63(%rsp)
	jne	.LBB3_4
# BB#2:
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_ZN10game_state5setupEPKc@PLT
	movb	$1, %al
	addq	$64, %rsp
	popq	%rbx
	retq
.LBB3_3:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.3(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state(%rip), %rcx
	movl	$40, %edx
	callq	__assert_fail@PLT
.LBB3_4:
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.3(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state(%rip), %rcx
	movl	$41, %edx
	callq	__assert_fail@PLT
.Lfunc_end3:
	.size	_Z17deserialize_stateiP10game_state, .Lfunc_end3-_Z17deserialize_stateiP10game_state
	.cfi_endproc

	.section	.text._ZN10game_state5setupEPKc,"axG",@progbits,_ZN10game_state5setupEPKc,comdat
	.weak	_ZN10game_state5setupEPKc
	.align	16, 0x90
	.type	_ZN10game_state5setupEPKc,@function
_ZN10game_state5setupEPKc:              # @_ZN10game_state5setupEPKc
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp18:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp20:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp21:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp23:
	.cfi_def_cfa_offset 64
.Ltmp24:
	.cfi_offset %rbx, -56
.Ltmp25:
	.cfi_offset %r12, -48
.Ltmp26:
	.cfi_offset %r13, -40
.Ltmp27:
	.cfi_offset %r14, -32
.Ltmp28:
	.cfi_offset %r15, -24
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	testq	%r14, %r14
	je	.LBB4_17
# BB#1:
	movq	%r14, %rdi
	callq	strlen@PLT
	cmpq	$63, %rax
	jne	.LBB4_18
# BB#2:
	movzbl	1(%r14), %eax
	cmpl	$58, %eax
	jne	.LBB4_19
# BB#3:
	movsbl	(%r14), %eax
	cmpl	$87, %eax
	je	.LBB4_15
# BB#4:
	cmpl	$66, %eax
	jne	.LBB4_16
# BB#5:
	movb	$1, (%r15)
	jmp	.LBB4_6
.LBB4_15:
	movb	$2, (%r15)
.LBB4_6:                                # %.preheader
	movl	$2, %ebx
	movl	$1, %r12d
	.align	16, 0x90
.LBB4_7:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_10 Depth 2
	leal	-4(%r12), %eax
	cmpl	$6, %r12d
	movl	$1, %ebp
	cmovael	%eax, %ebp
	cmpl	$9, %ebp
	ja	.LBB4_12
# BB#8:                                 # %.preheader
                                        #   in Loop: Header=BB4_7 Depth=1
	leal	5(%r12), %r13d
	cmpl	%r13d, %ebp
	jae	.LBB4_12
# BB#9:                                 # %.lr.ph.preheader
                                        #   in Loop: Header=BB4_7 Depth=1
	movslq	%ebx, %rbx
	.align	16, 0x90
.LBB4_10:                               # %.lr.ph
                                        #   Parent Loop BB4_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%r14,%rbx), %ecx
	movq	%r15, %rdi
	movl	%r12d, %esi
	movl	%ebp, %edx
	callq	_ZN10game_state3setEjjc@PLT
	incl	%ebp
	incq	%rbx
	cmpl	$9, %ebp
	ja	.LBB4_12
# BB#11:                                # %.lr.ph
                                        #   in Loop: Header=BB4_10 Depth=2
	cmpl	%r13d, %ebp
	jb	.LBB4_10
.LBB4_12:                               # %.critedge
                                        #   in Loop: Header=BB4_7 Depth=1
	incl	%r12d
	cmpl	$10, %r12d
	jne	.LBB4_7
# BB#13:
	cmpl	$63, %ebx
	jne	.LBB4_20
# BB#14:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_17:
	leaq	.L.str.26(%rip), %rdi
	leaq	.L.str.27(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc(%rip), %rcx
	movl	$182, %edx
	callq	__assert_fail@PLT
.LBB4_18:
	leaq	.L.str.29(%rip), %rdi
	leaq	.L.str.27(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc(%rip), %rcx
	movl	$183, %edx
	callq	__assert_fail@PLT
.LBB4_19:
	leaq	.L.str.30(%rip), %rdi
	leaq	.L.str.27(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc(%rip), %rcx
	movl	$184, %edx
	callq	__assert_fail@PLT
.LBB4_16:
	leaq	.L.str.31(%rip), %rdi
	xorl	%eax, %eax
	movq	%r14, %rsi
	callq	printf@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB4_20:
	leaq	.L.str.32(%rip), %rdi
	leaq	.L.str.27(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc(%rip), %rcx
	movl	$206, %edx
	callq	__assert_fail@PLT
.Lfunc_end4:
	.size	_ZN10game_state5setupEPKc, .Lfunc_end4-_ZN10game_state5setupEPKc
	.cfi_endproc

	.text
	.globl	_Z14serialize_moveiPK9game_move
	.align	16, 0x90
	.type	_Z14serialize_moveiPK9game_move,@function
_Z14serialize_moveiPK9game_move:        # @_Z14serialize_moveiPK9game_move
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp32:
	.cfi_def_cfa_offset 48
.Ltmp33:
	.cfi_offset %rbx, -24
.Ltmp34:
	.cfi_offset %rbp, -16
	movl	%edi, %ebp
	movl	4(%rsi), %ecx
	movq	_ZZNK9game_move8toStringEPcE3row@GOTPCREL(%rip), %rax
	movb	(%rax,%rcx), %cl
	movb	%cl, 14(%rsp)
	movl	8(%rsi), %edx
	movq	_ZZNK9game_move8toStringEPcE4diag@GOTPCREL(%rip), %rcx
	movb	(%rcx,%rdx), %dl
	movb	%dl, 15(%rsp)
	movl	$2, %edx
	cmpl	$1, (%rsi)
	jne	.LBB5_2
# BB#1:
	movb	$45, 16(%rsp)
	movl	12(%rsi), %edx
	movb	(%rax,%rdx), %dl
	movb	%dl, 17(%rsp)
	movl	16(%rsi), %edx
	movb	(%rcx,%rdx), %dl
	movb	%dl, 18(%rsp)
	movl	$5, %edx
.LBB5_2:                                # %_ZNK9game_move8toStringEPc.exit
	movl	%edx, %edx
	movb	$44, 14(%rsp,%rdx)
	movl	20(%rsi), %edi
	movb	(%rax,%rdi), %al
	movb	%al, 15(%rsp,%rdx)
	movl	24(%rsi), %eax
	movb	(%rcx,%rax), %al
	movb	%al, 16(%rsp,%rdx)
	movb	$0, 17(%rsp,%rdx)
	leaq	14(%rsp), %rbx
	movq	%rbx, %rdi
	callq	strlen@PLT
	leaq	1(%rax), %rdx
	movl	%ebp, %edi
	movq	%rbx, %rsi
	callq	write@PLT
	movb	$1, %al
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	_Z14serialize_moveiPK9game_move, .Lfunc_end5-_Z14serialize_moveiPK9game_move
	.cfi_endproc

	.globl	_Z16deserialize_moveiP9game_move
	.align	16, 0x90
	.type	_Z16deserialize_moveiP9game_move,@function
_Z16deserialize_moveiP9game_move:       # @_Z16deserialize_moveiP9game_move
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp36:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp37:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp39:
	.cfi_def_cfa_offset 64
.Ltmp40:
	.cfi_offset %rbx, -40
.Ltmp41:
	.cfi_offset %r14, -32
.Ltmp42:
	.cfi_offset %r15, -24
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movl	$0, 16(%rsp)
	movq	$0, 8(%rsp)
	leaq	8(%rsp), %r15
	movl	$10, %edx
	movq	%r15, %rsi
	callq	read@PLT
	movq	%rax, %rbx
	leaq	.L.str.5(%rip), %rdi
	xorl	%ebp, %ebp
	xorl	%eax, %eax
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	_Z5printPKcz@PLT
	testq	%rbx, %rbx
	je	.LBB6_8
# BB#1:
	cmpq	$6, %rbx
	je	.LBB6_4
# BB#2:
	cmpq	$9, %rbx
	jne	.LBB6_3
.LBB6_4:
	leaq	8(%rsp), %rdi
	callq	strlen@PLT
	movq	%rax, %rcx
	cmpq	$5, %rcx
	je	.LBB6_7
# BB#5:
	cmpq	$8, %rcx
	jne	.LBB6_6
.LBB6_7:
	leaq	8(%rsp), %rsi
	movq	%r14, %rdi
	callq	_ZN9game_move5setupEPKc@PLT
	movb	%al, %bpl
	jmp	.LBB6_8
.LBB6_3:
	leaq	.L.str.6(%rip), %rdi
	xorl	%ebp, %ebp
	xorl	%eax, %eax
	movq	%rbx, %rsi
	callq	_Z5printPKcz@PLT
	jmp	.LBB6_8
.LBB6_6:
	leaq	.L.str.7(%rip), %rdi
	xorl	%ebp, %ebp
	xorl	%eax, %eax
	movq	%rcx, %rsi
	callq	_Z5printPKcz@PLT
.LBB6_8:
	movb	%bpl, %al
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	_Z16deserialize_moveiP9game_move, .Lfunc_end6-_Z16deserialize_moveiP9game_move
	.cfi_endproc

	.section	.text._ZN9game_move5setupEPKc,"axG",@progbits,_ZN9game_move5setupEPKc,comdat
	.weak	_ZN9game_move5setupEPKc
	.align	16, 0x90
	.type	_ZN9game_move5setupEPKc,@function
_ZN9game_move5setupEPKc:                # @_ZN9game_move5setupEPKc
	.cfi_startproc
# BB#0:
	pushq	%rbx
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbx, -16
	movzbl	(%rsi), %eax
	andl	$159, %eax
	movl	%eax, 4(%rdi)
	movsbl	1(%rsi), %ecx
	leal	-48(%rcx), %edx
	movl	%edx, 8(%rdi)
	leal	-43(%rcx), %ebx
	cmpl	%eax, %ebx
	jbe	.LBB7_4
# BB#1:
	leal	5(%rax), %ebx
	cmpl	%edx, %ebx
	jbe	.LBB7_4
# BB#2:
	addl	$-49, %ecx
	cmpl	$8, %ecx
	ja	.LBB7_4
# BB#3:
	decl	%eax
	cmpl	$9, %eax
	jae	.LBB7_4
# BB#5:
	movsbl	2(%rsi), %ecx
	cmpl	$45, %ecx
	je	.LBB7_14
# BB#6:
	movzbl	%cl, %eax
	cmpl	$44, %eax
	jne	.LBB7_21
# BB#7:
	movl	$0, (%rdi)
	movl	$3, %eax
	jmp	.LBB7_8
.LBB7_4:                                # %_ZL15check_valid_posjj.exit11.thread
	leaq	.Lstr(%rip), %rdi
	jmp	.LBB7_13
.LBB7_14:
	movl	$1, (%rdi)
	movzbl	3(%rsi), %eax
	andl	$159, %eax
	movl	%eax, 12(%rdi)
	movsbl	4(%rsi), %ecx
	leal	-48(%rcx), %edx
	movl	%edx, 16(%rdi)
	leal	-43(%rcx), %ebx
	cmpl	%eax, %ebx
	jbe	.LBB7_18
# BB#15:
	leal	5(%rax), %ebx
	cmpl	%edx, %ebx
	jbe	.LBB7_18
# BB#16:
	addl	$-49, %ecx
	cmpl	$8, %ecx
	ja	.LBB7_18
# BB#17:
	decl	%eax
	cmpl	$9, %eax
	jae	.LBB7_18
# BB#19:
	movzbl	5(%rsi), %ecx
	movl	$6, %eax
	cmpl	$44, %ecx
	jne	.LBB7_20
.LBB7_8:
	movl	%eax, %ecx
	movzbl	(%rsi,%rcx), %eax
	andl	$159, %eax
	movl	%eax, 20(%rdi)
	movsbl	1(%rsi,%rcx), %ecx
	leal	-48(%rcx), %edx
	movl	%edx, 24(%rdi)
	leal	-43(%rcx), %esi
	cmpl	%eax, %esi
	jbe	.LBB7_12
# BB#9:
	leal	5(%rax), %esi
	cmpl	%edx, %esi
	jbe	.LBB7_12
# BB#10:
	addl	$-49, %ecx
	cmpl	$8, %ecx
	ja	.LBB7_12
# BB#11:
	decl	%eax
	movb	$1, %bl
	cmpl	$9, %eax
	jb	.LBB7_22
.LBB7_12:                               # %_ZL15check_valid_posjj.exit.thread
	leaq	.Lstr.90(%rip), %rdi
	jmp	.LBB7_13
.LBB7_21:
	leaq	.L.str.36(%rip), %rdi
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	movl	%ecx, %esi
	callq	printf@PLT
	jmp	.LBB7_22
.LBB7_18:                               # %_ZL15check_valid_posjj.exit7.thread
	leaq	.Lstr.89(%rip), %rdi
	jmp	.LBB7_13
.LBB7_20:
	leaq	.Lstr.91(%rip), %rdi
.LBB7_13:
	callq	puts@PLT
	xorl	%ebx, %ebx
.LBB7_22:
	movb	%bl, %al
	popq	%rbx
	retq
.Lfunc_end7:
	.size	_ZN9game_move5setupEPKc, .Lfunc_end7-_ZN9game_move5setupEPKc
	.cfi_endproc

	.text
	.globl	_Z16initialize_stateP10game_statePKc
	.align	16, 0x90
	.type	_Z16initialize_stateP10game_statePKc,@function
_Z16initialize_stateP10game_statePKc:   # @_Z16initialize_stateP10game_statePKc
	.cfi_startproc
# BB#0:
	pushq	%r14
.Ltmp46:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp48:
	.cfi_def_cfa_offset 32
.Ltmp49:
	.cfi_offset %rbx, -24
.Ltmp50:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%rbx, %rbx
	je	.LBB8_3
# BB#1:
	movq	%rbx, %rdi
	callq	strlen@PLT
	cmpq	$63, %rax
	jne	.LBB8_4
# BB#2:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_ZN10game_state5setupEPKc@PLT
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	_ZNK10game_state5printEv@PLT # TAILCALL
.LBB8_3:
	leaq	.L.str.8(%rip), %rdi
	leaq	.L.str.3(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc(%rip), %rcx
	movl	$80, %edx
	callq	__assert_fail@PLT
.LBB8_4:
	leaq	.L.str.9(%rip), %rdi
	leaq	.L.str.3(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc(%rip), %rcx
	movl	$81, %edx
	callq	__assert_fail@PLT
.Lfunc_end8:
	.size	_Z16initialize_stateP10game_statePKc, .Lfunc_end8-_Z16initialize_stateP10game_statePKc
	.cfi_endproc

	.section	.text._ZNK10game_state5printEv,"axG",@progbits,_ZNK10game_state5printEv,comdat
	.weak	_ZNK10game_state5printEv
	.align	16, 0x90
	.type	_ZNK10game_state5printEv,@function
_ZNK10game_state5printEv:               # @_ZNK10game_state5printEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp52:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp53:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp54:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp55:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp56:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp57:
	.cfi_def_cfa_offset 128
.Ltmp58:
	.cfi_offset %rbx, -56
.Ltmp59:
	.cfi_offset %r12, -48
.Ltmp60:
	.cfi_offset %r13, -40
.Ltmp61:
	.cfi_offset %r14, -32
.Ltmp62:
	.cfi_offset %r15, -24
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movl	$9, %r15d
	movq	_ZSt4cout@GOTPCREL(%rip), %r12
	leaq	.L.str.40(%rip), %rbx
	.align	16, 0x90
.LBB9_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_3 Depth 2
                                        #     Child Loop BB9_16 Depth 2
                                        #     Child Loop BB9_42 Depth 2
                                        #     Child Loop BB9_35 Depth 2
                                        #     Child Loop BB9_31 Depth 2
	leaq	-1(%r15), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	cltq
	leaq	.L.str.38(%rip), %rcx
	movb	(%rax,%rcx), %al
	movb	%al, 71(%rsp)
	movl	$1, %edx
	movq	%r12, %rdi
	leaq	71(%rsp), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$1, %edx
	movq	%rax, %rdi
	leaq	.L.str.39(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$5, %eax
	subl	%r15d, %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movslq	%ecx, %r14
	leal	1(%r14), %r13d
	movl	$9, %ecx
	subl	%r14d, %ecx
	cmpq	$5, %r15
	movl	$1, %eax
	cmovlel	%eax, %r13d
	movl	$9, %eax
	cmovgel	%eax, %ecx
	movl	%ecx, 64(%rsp)          # 4-byte Spill
	testl	%r14d, %r14d
	jle	.LBB9_4
# BB#2:                                 # %.lr.ph.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%r14, %rbp
	.align	16, 0x90
.LBB9_3:                                # %.lr.ph
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$2, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	decq	%rbp
	jne	.LBB9_3
.LBB9_4:                                # %._crit_edge
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$3, %edx
	movq	%r12, %rdi
	leaq	.L.str.41(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	5(%r15), %rdx
	movq	%r13, %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	%eax, %r13d
	leal	5(%rax), %ecx
	movb	$4, %al
	cmpq	%r15, %rcx
	jbe	.LBB9_5
# BB#11:                                # %._crit_edge
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%r12, %rbx
	cmpq	%r13, %rdx
	jbe	.LBB9_12
# BB#13:                                # %._crit_edge
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	%r15, 56(%rsp)          # 8-byte Spill
	movq	24(%rsp), %rcx          # 8-byte Reload
	leal	-1(%rcx), %ecx
	cmpl	$8, %ecx
	ja	.LBB9_15
# BB#14:                                #   in Loop: Header=BB9_1 Depth=1
	movl	%ecx, %eax
	movq	40(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rcx,8), %rcx
	addq	32(%rsp), %rcx          # 8-byte Folded Reload
	movb	1(%rax,%rcx), %al
	jmp	.LBB9_15
	.align	16, 0x90
.LBB9_5:                                #   in Loop: Header=BB9_1 Depth=1
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	%r12, %rbx
	movq	%r15, 56(%rsp)          # 8-byte Spill
	jmp	.LBB9_15
.LBB9_12:                               #   in Loop: Header=BB9_1 Depth=1
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	%r15, 56(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB9_15:                               # %_ZNK10game_state3getEjj.exit
                                        #   in Loop: Header=BB9_1 Depth=1
	decb	%al
	movsbq	%al, %rax
	leaq	.Lswitch.table(%rip), %rcx
	movq	(%rcx,%rax,8), %rbp
	movq	%rbp, %rdi
	callq	strlen@PLT
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	24(%rsp), %rcx          # 8-byte Reload
	leal	1(%rcx), %eax
	cmpl	64(%rsp), %eax          # 4-byte Folded Reload
	movl	%ecx, %r15d
	ja	.LBB9_21
	.align	16, 0x90
.LBB9_16:                               # %.lr.ph26.split.us
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r15d, %r12d
	movl	$3, %edx
	movq	%rbx, %rdi
	leaq	.L.str.42(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leal	1(%r12), %r15d
	leal	6(%r12), %ecx
	movb	$4, %al
	cmpq	56(%rsp), %rcx          # 8-byte Folded Reload
	jbe	.LBB9_20
# BB#17:                                # %.lr.ph26.split.us
                                        #   in Loop: Header=BB9_16 Depth=2
	cmpq	%r15, 48(%rsp)          # 8-byte Folded Reload
	jbe	.LBB9_20
# BB#18:                                # %.lr.ph26.split.us
                                        #   in Loop: Header=BB9_16 Depth=2
	cmpl	$8, %r12d
	ja	.LBB9_20
# BB#19:                                #   in Loop: Header=BB9_16 Depth=2
	movl	%r12d, %eax
	movq	40(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rcx,8), %rcx
	addq	32(%rsp), %rcx          # 8-byte Folded Reload
	movb	1(%rax,%rcx), %al
.LBB9_20:                               # %_ZNK10game_state3getEjj.exit9.us
                                        #   in Loop: Header=BB9_16 Depth=2
	decb	%al
	movsbq	%al, %rax
	leaq	.Lswitch.table(%rip), %rcx
	movq	(%rcx,%rax,8), %rbp
	movq	%rbp, %rdi
	callq	strlen@PLT
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	addl	$2, %r12d
	cmpl	64(%rsp), %r12d         # 4-byte Folded Reload
	jbe	.LBB9_16
.LBB9_21:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	56(%rsp), %rbp          # 8-byte Reload
	cmpq	$4, %rbp
	movq	%rbx, %r12
	jg	.LBB9_23
# BB#22:                                #   in Loop: Header=BB9_1 Depth=1
	movl	$3, %edx
	movq	%r12, %rdi
	leaq	.L.str.41(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$10, %esi
	subq	%r14, %rsi
	movq	%r12, %rdi
	callq	_ZNSo9_M_insertIlEERSoT_@PLT
.LBB9_23:                               #   in Loop: Header=BB9_1 Depth=1
	movq	(%r12), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %r15
	testq	%r15, %r15
	je	.LBB9_41
# BB#24:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit19
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpb	$0, 56(%r15)
	je	.LBB9_26
# BB#25:                                #   in Loop: Header=BB9_1 Depth=1
	movb	67(%r15), %al
	jmp	.LBB9_27
	.align	16, 0x90
.LBB9_26:                               #   in Loop: Header=BB9_1 Depth=1
	movq	%r15, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r15), %rax
	movl	$10, %esi
	movq	%r15, %rdi
	callq	*48(%rax)
.LBB9_27:                               # %_ZNKSt5ctypeIcE5widenEc.exit16
                                        #   in Loop: Header=BB9_1 Depth=1
	movsbl	%al, %esi
	movq	%r12, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	movl	$4, %edx
	movq	%r12, %rdi
	leaq	.L.str.43(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	leaq	.L.str.40(%rip), %r15
	jle	.LBB9_28
	.align	16, 0x90
.LBB9_42:                               # %.lr.ph28
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$2, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	decq	%r14
	jne	.LBB9_42
.LBB9_28:                               # %._crit_edge29
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpq	$5, %rbp
	jle	.LBB9_32
# BB#29:                                #   in Loop: Header=BB9_1 Depth=1
	movq	%rbp, %r14
	movl	64(%rsp), %eax          # 4-byte Reload
	movl	%eax, %ebp
	movq	24(%rsp), %rcx          # 8-byte Reload
	cmpl	%eax, %ecx
	leaq	.L.str.44(%rip), %rbx
	ja	.LBB9_36
# BB#30:                                # %.lr.ph35.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	decq	%r13
	.align	16, 0x90
.LBB9_31:                               # %.lr.ph35
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$4, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	incq	%r13
	cmpq	%rbp, %r13
	jl	.LBB9_31
	jmp	.LBB9_36
	.align	16, 0x90
.LBB9_32:                               #   in Loop: Header=BB9_1 Depth=1
	cmpq	$2, %rbp
	movq	%rbp, %r14
	leaq	.L.str.45(%rip), %rbx
	jl	.LBB9_36
# BB#33:                                #   in Loop: Header=BB9_1 Depth=1
	movl	$2, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	24(%rsp), %rax          # 8-byte Reload
	cmpl	64(%rsp), %eax          # 4-byte Folded Reload
	jae	.LBB9_36
# BB#34:                                # %.lr.ph32.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	64(%rsp), %ebp          # 4-byte Reload
	subq	%r13, %rbp
	.align	16, 0x90
.LBB9_35:                               # %.lr.ph32
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$4, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	decq	%rbp
	jne	.LBB9_35
	.align	16, 0x90
.LBB9_36:                               # %.loopexit
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	(%r12), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbp
	testq	%rbp, %rbp
	je	.LBB9_43
# BB#37:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit20
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpb	$0, 56(%rbp)
	je	.LBB9_39
# BB#38:                                #   in Loop: Header=BB9_1 Depth=1
	movq	%r15, %rbx
	movb	67(%rbp), %al
	jmp	.LBB9_40
	.align	16, 0x90
.LBB9_39:                               #   in Loop: Header=BB9_1 Depth=1
	movq	%r15, %rbx
	movq	%rbp, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbp), %rax
	movl	$10, %esi
	movq	%rbp, %rdi
	callq	*48(%rax)
.LBB9_40:                               # %_ZNKSt5ctypeIcE5widenEc.exit18
                                        #   in Loop: Header=BB9_1 Depth=1
	movsbl	%al, %esi
	movq	%r12, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	cmpq	$1, %r14
	movq	40(%rsp), %r15          # 8-byte Reload
	jg	.LBB9_1
# BB#6:
	leaq	.L.str.46(%rip), %rsi
	movl	$32, %edx
	movq	%r12, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%r12), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB9_41
# BB#7:                                 # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit
	cmpb	$0, 56(%rbx)
	je	.LBB9_9
# BB#8:
	movb	67(%rbx), %al
	jmp	.LBB9_10
.LBB9_9:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB9_10:                               # %_ZNKSt5ctypeIcE5widenEc.exit
	movsbl	%al, %esi
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_43:
	callq	_ZSt16__throw_bad_castv@PLT
.LBB9_41:
	callq	_ZSt16__throw_bad_castv@PLT
.Lfunc_end9:
	.size	_ZNK10game_state5printEv, .Lfunc_end9-_ZNK10game_state5printEv
	.cfi_endproc

	.text
	.globl	_Z14is_final_statePK10game_state
	.align	16, 0x90
	.type	_Z14is_final_statePK10game_state,@function
_Z14is_final_statePK10game_state:       # @_Z14is_final_statePK10game_state
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp65:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp66:
	.cfi_def_cfa_offset 32
.Ltmp67:
	.cfi_offset %rbx, -24
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	xorl	%esi, %esi
	movl	$9, %eax
	.align	16, 0x90
.LBB10_1:                               # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-8(%rbx,%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%esi, %ecx
	movzbl	-7(%rbx,%rax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	-6(%rbx,%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	-5(%rbx,%rax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	-4(%rbx,%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	-3(%rbx,%rax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	-2(%rbx,%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	-1(%rbx,%rax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	(%rbx,%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %esi
	addl	%edx, %esi
	addq	$9, %rax
	cmpq	$90, %rax
	jne	.LBB10_1
# BB#2:                                 # %.preheader.i44.preheader
	xorl	%edx, %edx
	movl	$9, %eax
	.align	16, 0x90
.LBB10_3:                               # %.preheader.i44
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-8(%rbx,%rax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	-7(%rbx,%rax), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	-6(%rbx,%rax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	-5(%rbx,%rax), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	-4(%rbx,%rax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	-3(%rbx,%rax), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	-2(%rbx,%rax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	-1(%rbx,%rax), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edi
	addl	%ecx, %edi
	movzbl	(%rbx,%rax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %edx
	addl	%edi, %edx
	addq	$9, %rax
	cmpq	$90, %rax
	jne	.LBB10_3
# BB#4:                                 # %_ZNK10game_state5countE9FieldType.exit45
	leaq	.L.str.10(%rip), %rdi
	xorl	%ebp, %ebp
	xorl	%eax, %eax
	callq	_Z5printPKcz@PLT
	movl	$9, %eax
	.align	16, 0x90
.LBB10_5:                               # %.preheader.i29
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-8(%rbx,%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%ebp, %ecx
	movzbl	-7(%rbx,%rax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	-6(%rbx,%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	-5(%rbx,%rax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	-4(%rbx,%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	-3(%rbx,%rax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	-2(%rbx,%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	-1(%rbx,%rax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	(%rbx,%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ebp
	addl	%edx, %ebp
	addq	$9, %rax
	cmpq	$90, %rax
	jne	.LBB10_5
# BB#6:                                 # %_ZNK10game_state5countE9FieldType.exit30
	movb	$1, %al
	movl	$9, %ecx
	cmpl	$9, %ebp
	jb	.LBB10_10
# BB#7:
	xorl	%eax, %eax
	.align	16, 0x90
.LBB10_8:                               # %.preheader.i14
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-8(%rbx,%rcx), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%eax, %edx
	movzbl	-7(%rbx,%rcx), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%edx, %eax
	movzbl	-6(%rbx,%rcx), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%eax, %edx
	movzbl	-5(%rbx,%rcx), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%edx, %eax
	movzbl	-4(%rbx,%rcx), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%eax, %edx
	movzbl	-3(%rbx,%rcx), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%edx, %eax
	movzbl	-2(%rbx,%rcx), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%eax, %edx
	movzbl	-1(%rbx,%rcx), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %esi
	addl	%edx, %esi
	movzbl	(%rbx,%rcx), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%esi, %eax
	addq	$9, %rcx
	cmpq	$90, %rcx
	jne	.LBB10_8
# BB#9:                                 # %_ZNK10game_state5countE9FieldType.exit15
	cmpl	$9, %eax
	setb	%al
.LBB10_10:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end10:
	.size	_Z14is_final_statePK10game_state, .Lfunc_end10-_Z14is_final_statePK10game_state
	.cfi_endproc

	.globl	_Z10move_validPK10game_statePK9game_move
	.align	16, 0x90
	.type	_Z10move_validPK10game_statePK9game_move,@function
_Z10move_validPK10game_statePK9game_move: # @_Z10move_validPK10game_statePK9game_move
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp70:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp71:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp72:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp73:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp74:
	.cfi_def_cfa_offset 56
.Ltmp75:
	.cfi_offset %rbx, -56
.Ltmp76:
	.cfi_offset %r12, -48
.Ltmp77:
	.cfi_offset %r13, -40
.Ltmp78:
	.cfi_offset %r14, -32
.Ltmp79:
	.cfi_offset %r15, -24
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	movl	20(%rsi), %ebp
	movl	4(%rsi), %r10d
	movl	%ebp, %r11d
	subl	%r10d, %r11d
	leal	1(%r11), %ecx
	xorl	%eax, %eax
	cmpl	$2, %ecx
	ja	.LBB11_78
# BB#1:
	movl	8(%rsi), %r9d
	movl	24(%rsi), %r8d
	movl	%r8d, %edi
	subl	%r9d, %edi
	leal	1(%rdi), %ecx
	cmpl	$2, %ecx
	ja	.LBB11_78
# BB#2:
	movl	%ebp, %r14d
	subl	%r10d, %r14d
	setne	%bl
	movl	%r8d, %r15d
	subl	%r9d, %r15d
	setne	%dl
	cmpl	%edi, %r11d
	sete	%r12b
	movb	%bl, %cl
	orb	%dl, %cl
	xorl	%eax, %eax
	movzbl	%cl, %ecx
	cmpl	$1, %ecx
	jne	.LBB11_78
# BB#3:
	andb	%dl, %bl
	xorb	$1, %bl
	orb	%bl, %r12b
	movq	%rdi, %r12
	je	.LBB11_78
# BB#4:
	movl	(%rsi), %eax
	testl	%eax, %eax
	je	.LBB11_46
# BB#5:
	cmpl	$1, %eax
	jne	.LBB11_77
# BB#6:
	movl	12(%rsi), %eax
	movl	%eax, %edx
	subl	%r10d, %edx
	movl	%edx, %ecx
	negl	%ecx
	cmovll	%edx, %ecx
	cmpl	$2, %ecx
	jg	.LBB11_77
# BB#7:
	movl	16(%rsi), %r14d
	movl	%r14d, %esi
	subl	%r9d, %esi
	movl	%esi, %ecx
	negl	%ecx
	cmovll	%esi, %ecx
	cmpl	$2, %ecx
	jg	.LBB11_77
# BB#8:
	cmpl	%r10d, %eax
	sete	%bl
	cmpl	%r9d, %r14d
	sete	%cl
	cmpl	%esi, %edx
	je	.LBB11_10
# BB#9:
	orb	%cl, %bl
	je	.LBB11_77
.LBB11_10:
	cmpl	%r10d, %eax
	jne	.LBB11_12
# BB#11:
	cmpl	%r9d, %r14d
	je	.LBB11_13
.LBB11_12:
	imull	%r11d, %esi
	imull	%r12d, %edx
	cmpl	%edx, %esi
	je	.LBB11_77
.LBB11_13:
	leal	5(%r8), %ecx
	cmpl	%ebp, %ecx
	jbe	.LBB11_77
# BB#14:
	leal	5(%rbp), %ecx
	cmpl	%r8d, %ecx
	jbe	.LBB11_77
# BB#15:
	decl	%ebp
	cmpl	$8, %ebp
	ja	.LBB11_77
# BB#16:
	decl	%r8d
	cmpl	$8, %r8d
	ja	.LBB11_77
# BB#17:                                # %_ZNK10game_state3getEjj.exit
	movl	%r8d, %ecx
	movl	%ebp, %edx
	leaq	(%rdx,%rdx,8), %rdx
	addq	%r13, %rdx
	movzbl	1(%rcx,%rdx), %ecx
	cmpl	$3, %ecx
	jne	.LBB11_77
# BB#18:
	leal	(%rax,%r11), %ecx
	leal	5(%r14,%r12), %edx
	cmpl	%ecx, %edx
	jbe	.LBB11_77
# BB#19:
	leal	(%r14,%r12), %ecx
	leal	5(%rax,%r11), %edx
	cmpl	%ecx, %edx
	jbe	.LBB11_77
# BB#20:
	leal	-1(%rax,%r11), %edx
	cmpl	$8, %edx
	ja	.LBB11_77
# BB#21:
	leal	-1(%r14,%r12), %ecx
	cmpl	$8, %ecx
	ja	.LBB11_77
# BB#22:                                # %_ZNK10game_state3getEjj.exit86
	movl	%ecx, %ecx
	movl	%edx, %edx
	leaq	(%rdx,%rdx,8), %rdx
	addq	%r13, %rdx
	movzbl	1(%rcx,%rdx), %ecx
	cmpl	$3, %ecx
	jne	.LBB11_77
# BB#23:
	leal	(%rax,%r10), %edx
	shrl	%edx
	leal	(%rdx,%r11), %ecx
	leal	(%r14,%r9), %esi
	shrl	%esi
	leal	5(%rsi,%r12), %edi
	cmpl	%ecx, %edi
	jbe	.LBB11_77
# BB#24:
	movl	%r12d, %ecx
	addl	%esi, %ecx
	leal	5(%rdx,%r11), %edi
	cmpl	%ecx, %edi
	jbe	.LBB11_77
# BB#25:
	leal	-1(%rdx,%r11), %edi
	cmpl	$8, %edi
	ja	.LBB11_77
# BB#26:
	leal	-1(%rsi,%r12), %ecx
	cmpl	$8, %ecx
	ja	.LBB11_77
# BB#27:                                # %_ZNK10game_state3getEjj.exit80
	movl	%ecx, %ecx
	movl	%edi, %edi
	leaq	(%rdi,%rdi,8), %rdi
	addq	%r13, %rdi
	movzbl	1(%rcx,%rdi), %ecx
	cmpl	$3, %ecx
	jne	.LBB11_77
# BB#28:
	leal	5(%r9), %ecx
	movb	$4, %bl
	cmpl	%r10d, %ecx
	jbe	.LBB11_33
# BB#29:
	leal	5(%r10), %ecx
	cmpl	%r9d, %ecx
	jbe	.LBB11_33
# BB#30:
	decl	%r10d
	cmpl	$8, %r10d
	ja	.LBB11_33
# BB#31:
	decl	%r9d
	cmpl	$8, %r9d
	ja	.LBB11_33
# BB#32:
	movl	%r9d, %ecx
	movl	%r10d, %edi
	leaq	(%rdi,%rdi,8), %rdi
	addq	%r13, %rdi
	movb	1(%rcx,%rdi), %bl
.LBB11_33:                              # %_ZNK10game_state3getEjj.exit74
	movzbl	(%r13), %ecx
	movzbl	%bl, %ebx
	cmpl	%ecx, %ebx
	jne	.LBB11_77
# BB#34:
	leal	5(%r14), %ecx
	movb	$4, %dil
	cmpl	%eax, %ecx
	jbe	.LBB11_39
# BB#35:
	leal	5(%rax), %ecx
	cmpl	%r14d, %ecx
	jbe	.LBB11_39
# BB#36:
	decl	%eax
	cmpl	$8, %eax
	ja	.LBB11_39
# BB#37:
	decl	%r14d
	cmpl	$8, %r14d
	ja	.LBB11_39
# BB#38:
	movl	%r14d, %ecx
	movl	%eax, %eax
	leaq	(%rax,%rax,8), %rax
	addq	%r13, %rax
	movb	1(%rcx,%rax), %dil
.LBB11_39:                              # %_ZNK10game_state3getEjj.exit68
	movzbl	%dil, %eax
	cmpl	%ebx, %eax
	jne	.LBB11_77
# BB#40:
	movq	%r13, %rdi
	leal	5(%rsi), %ecx
	movb	$4, %al
	cmpl	%edx, %ecx
	jbe	.LBB11_45
# BB#41:
	leal	5(%rdx), %ecx
	cmpl	%esi, %ecx
	jbe	.LBB11_45
# BB#42:
	decl	%edx
	cmpl	$8, %edx
	ja	.LBB11_45
# BB#43:
	decl	%esi
	cmpl	$8, %esi
	ja	.LBB11_45
# BB#44:
	movl	%esi, %eax
	movl	%edx, %ecx
	leaq	(%rcx,%rcx,8), %rcx
	addq	%rcx, %rdi
	movb	1(%rax,%rdi), %al
.LBB11_45:                              # %_ZNK10game_state3getEjj.exit62
	movzbl	%al, %ecx
	movb	$1, %al
	cmpl	%ebx, %ecx
	jne	.LBB11_77
	jmp	.LBB11_78
.LBB11_46:
	leal	-1(%r10), %eax
	leal	-1(%r9), %esi
	leal	5(%r9), %edx
	movb	$4, %cl
	cmpl	%r10d, %edx
	jbe	.LBB11_51
# BB#47:
	addl	$5, %r10d
	cmpl	%r9d, %r10d
	jbe	.LBB11_51
# BB#48:
	cmpl	$8, %eax
	ja	.LBB11_51
# BB#49:
	cmpl	$8, %esi
	ja	.LBB11_51
# BB#50:
	movl	%esi, %ecx
	movl	%eax, %edx
	leaq	(%rdx,%rdx,8), %rdx
	addq	%r13, %rdx
	movb	1(%rcx,%rdx), %cl
.LBB11_51:                              # %_ZNK10game_state3getEjj.exit56
	movzbl	(%r13), %edx
	movzbl	%cl, %r9d
	cmpl	%edx, %r9d
	jne	.LBB11_77
# BB#52:                                # %.preheader.preheader
	xorl	%r8d, %r8d
	jmp	.LBB11_53
	.align	16, 0x90
.LBB11_56:                              #   in Loop: Header=BB11_53 Depth=1
	incl	%r8d
	addl	%r14d, %eax
	addl	%r15d, %esi
.LBB11_53:                              # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	leal	1(%rax), %ebp
	leal	1(%rsi), %ebx
	cmpl	$9, %eax
	sbbb	%cl, %cl
	cmpl	$9, %esi
	sbbb	%dl, %dl
	andb	%cl, %dl
	leal	6(%rax), %ecx
	cmpl	%ecx, %ebx
	sbbb	%cl, %cl
	andb	%dl, %cl
	leal	6(%rsi), %edx
	cmpl	%edx, %ebp
	sbbb	%dl, %dl
	andb	%cl, %dl
	andb	$1, %dl
	movb	$4, %cl
	movzbl	%dl, %edi
	cmpl	$1, %edi
	jne	.LBB11_55
# BB#54:                                #   in Loop: Header=BB11_53 Depth=1
	movl	%esi, %ecx
	movl	%eax, %edi
	leaq	(%rdi,%rdi,8), %rdi
	addq	%r13, %rdi
	movb	1(%rcx,%rdi), %cl
.LBB11_55:                              # %_ZNK10game_state3getEjj.exit50
                                        #   in Loop: Header=BB11_53 Depth=1
	movzbl	%cl, %ecx
	cmpl	%r9d, %ecx
	je	.LBB11_56
# BB#57:
	testl	%r8d, %r8d
	je	.LBB11_77
# BB#58:
	cmpl	$3, %r8d
	jg	.LBB11_77
# BB#59:
	movq	%r13, -8(%rsp)          # 8-byte Spill
	cmpl	$1, %r9d
	sete	%r9b
	testb	%dl, %dl
	je	.LBB11_60
# BB#61:                                # %_ZNK10game_state3getEjj.exit44.preheader
	movq	%r12, %rdx
	incb	%r9b
	leal	-1(%rbx), %r13d
	leal	-1(%rbp), %r12d
	movzbl	%r9b, %ecx
	movl	%ecx, -16(%rsp)         # 4-byte Spill
	movl	%esi, %r9d
	movl	%eax, %r10d
	movb	$1, %al
	movl	%eax, -12(%rsp)         # 4-byte Spill
.LBB11_62:                              # %_ZNK10game_state3getEjj.exit44
                                        # =>This Inner Loop Header: Depth=1
	movl	%r9d, %eax
	movl	%r10d, %ecx
	leaq	(%rcx,%rcx,8), %rcx
	addq	-8(%rsp), %rcx          # 8-byte Folded Reload
	movzbl	1(%rax,%rcx), %eax
	cmpl	-16(%rsp), %eax         # 4-byte Folded Reload
	jne	.LBB11_63
# BB#64:                                #   in Loop: Header=BB11_62 Depth=1
	decl	%r8d
	leal	(%r14,%r12), %eax
	leal	(%r15,%r13), %esi
	leal	6(%r15,%r13), %ecx
	leal	1(%r14,%r12), %edi
	movl	$0, -12(%rsp)           # 4-byte Folded Spill
	cmpl	%edi, %ecx
	jbe	.LBB11_65
# BB#66:                                #   in Loop: Header=BB11_62 Depth=1
	leal	1(%r15,%r13), %ecx
	leal	6(%r14,%r12), %edi
	cmpl	%ecx, %edi
	jbe	.LBB11_67
# BB#68:                                #   in Loop: Header=BB11_62 Depth=1
	cmpl	$8, %eax
	ja	.LBB11_69
# BB#70:                                #   in Loop: Header=BB11_62 Depth=1
	leal	-1(%rbp,%r11), %r10d
	movl	%ebp, %ecx
	addl	%r11d, %ecx
	leal	-1(%rbx,%rdx), %r9d
	movl	%ebx, %edi
	addl	%edx, %edi
	cmpl	$9, %esi
	movl	%eax, %r12d
	movl	%esi, %r13d
	movl	%edi, %ebx
	movl	%ecx, %ebp
	movl	$0, %ecx
	jb	.LBB11_62
	jmp	.LBB11_71
.LBB11_60:
	movb	$1, %cl
	movl	%ecx, -12(%rsp)         # 4-byte Spill
	xorl	%ecx, %ecx
	jmp	.LBB11_71
.LBB11_63:
	movb	$1, %cl
	movl	%r9d, %esi
	movl	%r10d, %eax
	jmp	.LBB11_71
.LBB11_65:
	xorl	%ecx, %ecx
	jmp	.LBB11_71
.LBB11_67:
	xorl	%ecx, %ecx
	jmp	.LBB11_71
.LBB11_69:
	xorl	%ecx, %ecx
.LBB11_71:                              # %_ZNK10game_state3getEjj.exit44.thread
	testl	%r8d, %r8d
	movq	-8(%rsp), %rdi          # 8-byte Reload
	jle	.LBB11_77
# BB#72:
	testb	%cl, %cl
	je	.LBB11_73
# BB#74:                                # %_ZNK10game_state3getEjj.exit38
	movl	%esi, %ecx
	movl	%eax, %eax
	leaq	(%rax,%rax,8), %rax
	addq	%rax, %rdi
	movzbl	1(%rcx,%rdi), %ecx
	movb	$1, %al
	cmpl	$3, %ecx
	je	.LBB11_78
# BB#75:
	movzbl	%cl, %eax
	cmpl	$4, %eax
	setne	%al
	jmp	.LBB11_76
.LBB11_73:
	xorl	%eax, %eax
.LBB11_76:                              # %_ZNK10game_state3getEjj.exit32
	movl	-12(%rsp), %ecx         # 4-byte Reload
	orb	%al, %cl
	movb	$1, %al
	testb	$1, %cl
	je	.LBB11_78
.LBB11_77:                              # %.thread91
	xorl	%eax, %eax
.LBB11_78:
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	_Z10move_validPK10game_statePK9game_move, .Lfunc_end11-_Z10move_validPK10game_statePK9game_move
	.cfi_endproc

	.globl	_Z10apply_moveP10game_statePK9game_move
	.align	16, 0x90
	.type	_Z10apply_moveP10game_statePK9game_move,@function
_Z10apply_moveP10game_statePK9game_move: # @_Z10apply_moveP10game_statePK9game_move
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp82:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp83:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp84:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp85:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp86:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp87:
	.cfi_def_cfa_offset 64
.Ltmp88:
	.cfi_offset %rbx, -56
.Ltmp89:
	.cfi_offset %r12, -48
.Ltmp90:
	.cfi_offset %r13, -40
.Ltmp91:
	.cfi_offset %r14, -32
.Ltmp92:
	.cfi_offset %r15, -24
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	_Z10move_validPK10game_statePK9game_move@PLT
	testb	%al, %al
	je	.LBB12_1
# BB#2:
	movl	20(%rbx), %r15d
	movl	(%rbx), %edi
	movl	4(%rbx), %ecx
	movl	%r15d, %r13d
	subl	%ecx, %r13d
	movl	24(%rbx), %esi
	movl	8(%rbx), %ebp
	movl	%esi, %r12d
	subl	%ebp, %r12d
	movb	$1, %al
	cmpl	$1, %edi
	je	.LBB12_11
# BB#3:
	testl	%edi, %edi
	jne	.LBB12_35
# BB#4:                                 # %.preheader.preheader
	decl	%ecx
	addl	$5, %ebp
	movb	$3, %bl
	.align	16, 0x90
.LBB12_5:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	leal	1(%rcx), %edx
	cmpl	%edx, %ebp
	jbe	.LBB12_35
# BB#6:                                 # %.preheader
                                        #   in Loop: Header=BB12_5 Depth=1
	leal	6(%rcx), %edx
	leal	-5(%rbp), %esi
	cmpl	%esi, %edx
	jbe	.LBB12_35
# BB#7:                                 # %.preheader
                                        #   in Loop: Header=BB12_5 Depth=1
	cmpl	$8, %ecx
	ja	.LBB12_35
# BB#8:                                 # %.preheader
                                        #   in Loop: Header=BB12_5 Depth=1
	leal	-6(%rbp), %edx
	cmpl	$8, %edx
	ja	.LBB12_35
# BB#9:                                 # %_ZNK10game_state3getEjj.exit50
                                        #   in Loop: Header=BB12_5 Depth=1
	movl	%edx, %edi
	movl	%ecx, %edx
	leaq	(%rdx,%rdx,8), %rdx
	addq	%r14, %rdx
	movzbl	1(%rdi,%rdx), %esi
	cmpl	$4, %esi
	je	.LBB12_35
# BB#10:                                #   in Loop: Header=BB12_5 Depth=1
	leaq	1(%rdi,%rdx), %rdx
	movb	%bl, (%rdx)
	addl	%r13d, %ecx
	addl	%r12d, %ebp
	movzbl	%sil, %edx
	cmpl	$3, %edx
	movb	%sil, %bl
	jne	.LBB12_5
	jmp	.LBB12_35
.LBB12_1:
	xorl	%eax, %eax
	jmp	.LBB12_35
.LBB12_11:
	leal	-1(%rcx), %r8d
	cmpl	$9, %r8d
	sbbb	%dil, %dil
	leal	-1(%rbp), %r9d
	cmpl	$9, %r9d
	sbbb	%dl, %dl
	andb	%dil, %dl
	leal	5(%rcx), %edi
	cmpl	%edi, %ebp
	sbbb	%r11b, %r11b
	leal	5(%rbp), %edi
	cmpl	%edi, %ecx
	sbbb	%r10b, %r10b
	andb	%r11b, %r10b
	andb	%dl, %r10b
	andb	$1, %r10b
	movb	$4, %r11b
	movzbl	%r10b, %edx
	cmpl	$1, %edx
	jne	.LBB12_13
# BB#12:
	movl	%r9d, %edx
	movl	%r8d, %edi
	leaq	(%rdi,%rdi,8), %rdi
	addq	%r14, %rdi
	movb	1(%rdx,%rdi), %r11b
.LBB12_13:                              # %_ZNK10game_state3getEjj.exit
	leal	5(%rsi), %edx
	cmpl	%r15d, %edx
	jbe	.LBB12_36
# BB#14:                                # %_ZNK10game_state3getEjj.exit
	leal	5(%r15), %edx
	cmpl	%esi, %edx
	jbe	.LBB12_36
# BB#15:                                # %_ZNK10game_state3getEjj.exit
	decl	%r15d
	cmpl	$8, %r15d
	ja	.LBB12_36
# BB#16:                                # %_ZNK10game_state3getEjj.exit
	decl	%esi
	cmpl	$9, %esi
	jae	.LBB12_36
# BB#17:                                # %_ZN10game_state3setEjj9FieldType.exit13
	movl	%esi, %edx
	movl	%r15d, %esi
	leaq	(%rsi,%rsi,8), %rsi
	addq	%r14, %rsi
	movb	%r11b, 1(%rdx,%rsi)
	movl	12(%rbx), %r15d
	movl	16(%rbx), %ebx
	leal	(%r15,%r13), %edx
	leal	5(%rbx,%r12), %esi
	cmpl	%edx, %esi
	jbe	.LBB12_36
# BB#18:                                # %_ZN10game_state3setEjj9FieldType.exit13
	leal	(%rbx,%r12), %edx
	leal	5(%r15,%r13), %esi
	cmpl	%edx, %esi
	jbe	.LBB12_36
# BB#19:                                # %_ZN10game_state3setEjj9FieldType.exit13
	leal	-1(%r15,%r13), %esi
	cmpl	$8, %esi
	ja	.LBB12_36
# BB#20:                                # %_ZN10game_state3setEjj9FieldType.exit13
	leal	-1(%rbx,%r12), %edx
	cmpl	$9, %edx
	jae	.LBB12_36
# BB#21:                                # %_ZN10game_state3setEjj9FieldType.exit19
	movl	%edx, %edx
	movl	%esi, %esi
	leaq	(%rsi,%rsi,8), %rsi
	addq	%r14, %rsi
	movb	%r11b, 1(%rdx,%rsi)
	addl	%r15d, %ecx
	shrl	%ecx
	leal	(%rcx,%r13), %edx
	addl	%ebx, %ebp
	shrl	%ebp
	leal	5(%rbp,%r12), %esi
	cmpl	%edx, %esi
	jbe	.LBB12_36
# BB#22:                                # %_ZN10game_state3setEjj9FieldType.exit19
	movl	%r12d, %edx
	addl	%ebp, %edx
	leal	5(%rcx,%r13), %esi
	cmpl	%edx, %esi
	jbe	.LBB12_36
# BB#23:                                # %_ZN10game_state3setEjj9FieldType.exit19
	leal	-1(%rcx,%r13), %esi
	cmpl	$8, %esi
	ja	.LBB12_36
# BB#24:                                # %_ZN10game_state3setEjj9FieldType.exit19
	leal	-1(%rbp,%r12), %edx
	cmpl	$9, %edx
	jae	.LBB12_36
# BB#25:                                # %_ZN10game_state3setEjj9FieldType.exit25
	movl	%edx, %edx
	movl	%esi, %esi
	leaq	(%rsi,%rsi,8), %rsi
	addq	%r14, %rsi
	movb	%r11b, 1(%rdx,%rsi)
	testb	%r10b, %r10b
	je	.LBB12_36
# BB#26:                                # %_ZN10game_state3setEjj9FieldType.exit31
	movl	%r9d, %edx
	movl	%r8d, %esi
	leaq	(%rsi,%rsi,8), %rsi
	addq	%r14, %rsi
	movb	$3, 1(%rdx,%rsi)
	leal	5(%rbx), %edx
	cmpl	%r15d, %edx
	jbe	.LBB12_36
# BB#27:                                # %_ZN10game_state3setEjj9FieldType.exit31
	leal	5(%r15), %edx
	cmpl	%ebx, %edx
	jbe	.LBB12_36
# BB#28:                                # %_ZN10game_state3setEjj9FieldType.exit31
	decl	%r15d
	cmpl	$8, %r15d
	ja	.LBB12_36
# BB#29:                                # %_ZN10game_state3setEjj9FieldType.exit31
	decl	%ebx
	cmpl	$9, %ebx
	jae	.LBB12_36
# BB#30:                                # %_ZN10game_state3setEjj9FieldType.exit37
	movl	%ebx, %edx
	movl	%r15d, %esi
	leaq	(%rsi,%rsi,8), %rsi
	addq	%r14, %rsi
	movb	$3, 1(%rdx,%rsi)
	leal	5(%rbp), %edx
	cmpl	%ecx, %edx
	jbe	.LBB12_36
# BB#31:                                # %_ZN10game_state3setEjj9FieldType.exit37
	leal	5(%rcx), %edx
	cmpl	%ebp, %edx
	jbe	.LBB12_36
# BB#32:                                # %_ZN10game_state3setEjj9FieldType.exit37
	decl	%ecx
	cmpl	$8, %ecx
	ja	.LBB12_36
# BB#33:                                # %_ZN10game_state3setEjj9FieldType.exit37
	decl	%ebp
	cmpl	$9, %ebp
	jae	.LBB12_36
# BB#34:                                # %_ZN10game_state3setEjj9FieldType.exit43
	movl	%ebp, %edx
	movl	%ecx, %ecx
	leaq	(%rcx,%rcx,8), %rcx
	addq	%rcx, %r14
	movb	$3, 1(%rdx,%r14)
.LBB12_35:                              # %.thread
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB12_36:                              # %_ZL15check_valid_posjj.exit.thread.i12
	leaq	.L.str.50(%rip), %rdi
	leaq	.L.str.27(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN10game_state3setEjj9FieldType(%rip), %rcx
	movl	$127, %edx
	callq	__assert_fail@PLT
.Lfunc_end12:
	.size	_Z10apply_moveP10game_statePK9game_move, .Lfunc_end12-_Z10apply_moveP10game_statePK9game_move
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI13_0:
	.zero	16
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp95:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp96:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp97:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp98:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp99:
	.cfi_def_cfa_offset 56
	subq	$648, %rsp              # imm = 0x288
.Ltmp100:
	.cfi_def_cfa_offset 704
.Ltmp101:
	.cfi_offset %rbx, -56
.Ltmp102:
	.cfi_offset %r12, -48
.Ltmp103:
	.cfi_offset %r13, -40
.Ltmp104:
	.cfi_offset %r14, -32
.Ltmp105:
	.cfi_offset %r15, -24
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movl	%edi, %ebx
	leaq	.L.str.12(%rip), %rdi
	xorl	%eax, %eax
	callq	_Z5printPKcz@PLT
	leaq	.L.str.11(%rip), %r14
	leaq	.L.str.13(%rip), %r15
	movq	optarg@GOTPCREL(%rip), %r12
	jmp	.LBB13_1
.LBB13_18:                              #   in Loop: Header=BB13_1 Depth=1
	movq	(%r12), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	strtoul@PLT
	shlq	$20, %rax
	movq	%rax, _ZL9mem_limit+8(%rip)
	.align	16, 0x90
.LBB13_1:                               # %.backedge
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %edi
	movq	%rbp, %rsi
	movq	%r15, %rdx
	callq	getopt@PLT
	cmpl	$99, %eax
	jle	.LBB13_2
# BB#9:                                 # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$114, %eax
	jg	.LBB13_14
# BB#10:                                # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$100, %eax
	je	.LBB13_73
# BB#11:                                # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$109, %eax
	jne	.LBB13_12
# BB#17:                                #   in Loop: Header=BB13_1 Depth=1
	movq	(%r12), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	strtoul@PLT
	shlq	$20, %rax
	movq	%rax, _ZL9mem_limit(%rip)
	jmp	.LBB13_1
	.align	16, 0x90
.LBB13_2:                               # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$76, %eax
	jle	.LBB13_3
# BB#6:                                 # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$77, %eax
	je	.LBB13_18
# BB#7:                                 # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$84, %eax
	jne	.LBB13_1
# BB#8:                                 #   in Loop: Header=BB13_1 Depth=1
	movq	(%r12), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	strtoul@PLT
	movq	%rax, _ZL9cpu_limit+8(%rip)
	jmp	.LBB13_1
	.align	16, 0x90
.LBB13_14:                              # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$115, %eax
	je	.LBB13_19
# BB#15:                                # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$116, %eax
	jne	.LBB13_1
# BB#16:                                #   in Loop: Header=BB13_1 Depth=1
	movq	(%r12), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	strtoul@PLT
	movq	%rax, _ZL9cpu_limit(%rip)
	jmp	.LBB13_1
.LBB13_3:                               # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$-1, %eax
	je	.LBB13_20
# BB#4:                                 # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$58, %eax
	je	.LBB13_13
# BB#5:                                 # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$63, %eax
	jne	.LBB13_1
	jmp	.LBB13_13
.LBB13_73:                              #   in Loop: Header=BB13_1 Depth=1
	movb	$1, _ZL5debug(%rip)
	jmp	.LBB13_1
.LBB13_19:                              #   in Loop: Header=BB13_1 Depth=1
	movq	(%r12), %r14
	jmp	.LBB13_1
.LBB13_12:                              # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$104, %eax
	jne	.LBB13_1
	jmp	.LBB13_13
.LBB13_20:
	movq	optind@GOTPCREL(%rip), %r15
	movl	(%r15), %eax
	addl	$2, %eax
	cmpl	%ebx, %eax
	jg	.LBB13_13
# BB#21:
	movq	$1, 480(%rsp)
	leaq	488(%rsp), %rdi
	callq	sigemptyset@PLT
	movq	$0, 624(%rsp)
	movq	$0, 480(%rsp)
	movl	$0, 616(%rsp)
	leaq	480(%rsp), %rsi
	movl	$13, %edi
	xorl	%edx, %edx
	callq	sigaction@PLT
	testl	%eax, %eax
	jne	.LBB13_74
# BB#22:
	movq	$0, 320(%rsp)
	leaq	328(%rsp), %rdi
	callq	sigemptyset@PLT
	movq	$0, 464(%rsp)
	leaq	_ZL13alarm_handleriP9siginfo_tPv(%rip), %rax
	movq	%rax, 320(%rsp)
	movl	$268435460, 456(%rsp)   # imm = 0x10000004
	leaq	320(%rsp), %rsi
	movl	$14, %edi
	xorl	%edx, %edx
	callq	sigaction@PLT
	testl	%eax, %eax
	jne	.LBB13_74
# BB#23:
	movq	$0, 160(%rsp)
	leaq	168(%rsp), %rdi
	callq	sigemptyset@PLT
	movq	$0, 304(%rsp)
	leaq	_ZL13child_handleriP9siginfo_tPv(%rip), %rax
	movq	%rax, 160(%rsp)
	movl	$268435460, 296(%rsp)   # imm = 0x10000004
	leaq	160(%rsp), %rsi
	movl	$17, %edi
	xorl	%edx, %edx
	callq	sigaction@PLT
	testl	%eax, %eax
	jne	.LBB13_74
# BB#24:                                # %_ZL21setup_signal_handlersv.exit
	movslq	(%r15), %rax
	movq	(%rbp,%rax,8), %rdi
	leaq	_ZL6player(%rip), %rbx
	movq	%rbx, %rsi
	callq	_ZL11fork_playerPcP6player
	testb	%al, %al
	je	.LBB13_75
# BB#25:
	movslq	(%r15), %rax
	movq	8(%rbp,%rax,8), %rdi
	leaq	_ZL6player+16(%rip), %rsi
	callq	_ZL11fork_playerPcP6player
	testb	%al, %al
	je	.LBB13_75
# BB#26:
	movabsq	$289360691352306692, %rax # imm = 0x404040404040404
	movq	%rax, 552(%rsp)
	movq	%rax, 544(%rsp)
	movq	%rax, 536(%rsp)
	movq	%rax, 528(%rsp)
	movq	%rax, 520(%rsp)
	movq	%rax, 512(%rsp)
	movq	%rax, 504(%rsp)
	movq	%rax, 496(%rsp)
	movq	%rax, 488(%rsp)
	movq	%rax, 480(%rsp)
	movw	$1028, 560(%rsp)        # imm = 0x404
	testq	%r14, %r14
	je	.LBB13_76
# BB#27:
	movq	%r14, %rdi
	callq	strlen@PLT
	cmpq	$63, %rax
	jne	.LBB13_77
# BB#28:                                # %_Z16initialize_stateP10game_statePKc.exit
	leaq	480(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	_ZN10game_state5setupEPKc@PLT
	movq	%rbp, %rdi
	callq	_ZNK10game_state5printEv@PLT
	movzbl	480(%rsp), %eax
	cmpl	$1, %eax
	setne	%al
	movzbl	%al, %r14d
	xorl	%r15d, %r15d
.LBB13_29:                              # %.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_32 Depth 2
	movq	%r14, 120(%rsp)         # 8-byte Spill
	movq	%rbp, %rdi
	callq	_Z14is_final_statePK10game_state@PLT
	testb	%al, %al
	jne	.LBB13_30
# BB#31:                                # %.lr.ph
                                        #   in Loop: Header=BB13_29 Depth=1
	movl	%r15d, 68(%rsp)         # 4-byte Spill
	movl	%r14d, %eax
	orl	$1, %eax
	movl	%eax, 108(%rsp)         # 4-byte Spill
	movl	%r14d, %eax
	shlq	$4, %rax
	leaq	(%rbx,%rax), %r13
	movq	%r13, 80(%rsp)          # 8-byte Spill
	leaq	13(%rax,%rbx), %rcx
	movq	%rcx, 112(%rsp)         # 8-byte Spill
	leaq	12(%rax,%rbx), %rcx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	leaq	8(%rax,%rbx), %rcx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	leaq	4(%rax,%rbx), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	%rbp, %r12
	leaq	160(%rsp), %r15
	.align	16, 0x90
.LBB13_32:                              #   Parent Loop BB13_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$1, 108(%rsp)           # 4-byte Folded Reload
	jne	.LBB13_78
# BB#33:                                #   in Loop: Header=BB13_32 Depth=2
	cmpl	$1, %r14d
	je	.LBB13_36
# BB#34:                                #   in Loop: Header=BB13_32 Depth=2
	testl	%r14d, %r14d
	jne	.LBB13_37
# BB#35:                                #   in Loop: Header=BB13_32 Depth=2
	movb	$1, 480(%rsp)
	jmp	.LBB13_38
	.align	16, 0x90
.LBB13_36:                              #   in Loop: Header=BB13_32 Depth=2
	movb	$2, 480(%rsp)
	jmp	.LBB13_38
	.align	16, 0x90
.LBB13_37:                              #   in Loop: Header=BB13_32 Depth=2
	movb	$4, 480(%rsp)
.LBB13_38:                              # %_ZN10game_state6playerEj.exit
                                        #   in Loop: Header=BB13_32 Depth=2
	movq	%r13, %r14
	movq	%r15, %rdi
	callq	time@PLT
	cmpq	$-1, 160(%rsp)
	je	.LBB13_39
.LBB13_40:                              #   in Loop: Header=BB13_32 Depth=2
	movq	%r15, %rdi
	callq	localtime@PLT
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB13_41
.LBB13_42:                              # %_ZL10getTimeStrPcm.exit
                                        #   in Loop: Header=BB13_32 Depth=2
	movl	$64, %esi
	leaq	320(%rsp), %rbp
	movq	%rbp, %rdi
	leaq	.L.str.85(%rip), %rdx
	movq	%rbx, %rcx
	callq	strftime@PLT
	xorl	%eax, %eax
	leaq	.L.str.15(%rip), %rdi
	movq	%rbp, %rsi
	movq	120(%rsp), %rdx         # 8-byte Reload
	callq	_Z5printPKcz@PLT
	xorl	%eax, %eax
	leaq	.L.str.16(%rip), %rdi
	callq	_Z5printPKcz@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
	movl	$2, %edi
	movq	%r12, %rsi
	callq	_Z15serialize_stateiPK10game_state@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	$10, %edi
	callq	fputc@PLT
	movq	112(%rsp), %rax         # 8-byte Reload
	movb	$0, (%rax)
	movq	96(%rsp), %rax          # 8-byte Reload
	movb	$0, (%rax)
	movq	%r14, %r13
	movq	%r13, _ZL14current_player(%rip)
	movq	_ZL9cpu_limit(%rip), %rax
	cmpq	$-1, %rax
	movl	$0, %ecx
	cmoveq	%rcx, %rax
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 160(%rsp)
	movq	%rax, 176(%rsp)
	movq	$0, 184(%rsp)
	xorl	%edi, %edi
	xorl	%edx, %edx
	movq	%r15, %rsi
	movq	%r15, %rbx
	callq	setitimer@PLT
	testl	%eax, %eax
	js	.LBB13_79
# BB#43:                                # %_ZL9arm_timerl.exit.i
                                        #   in Loop: Header=BB13_32 Depth=2
	movl	(%r13), %edi
	movl	$18, %esi
	callq	kill@PLT
	testl	%eax, %eax
	js	.LBB13_63
# BB#44:                                #   in Loop: Header=BB13_32 Depth=2
	movq	88(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %edi
	movq	%r12, %rsi
	callq	_Z15serialize_stateiPK10game_state@PLT
	movq	112(%rsp), %rax         # 8-byte Reload
	cmpb	$0, (%rax)
	jne	.LBB13_62
# BB#45:                                #   in Loop: Header=BB13_32 Depth=2
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %edi
	movl	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movl	$10, %edx
	movq	%rbx, %rsi
	callq	read@PLT
	movq	%rax, %r13
	xorl	%r15d, %r15d
	xorl	%eax, %eax
	leaq	.L.str.5(%rip), %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	_Z5printPKcz@PLT
	testq	%r13, %r13
	je	.LBB13_53
# BB#46:                                #   in Loop: Header=BB13_32 Depth=2
	cmpq	$6, %r13
	je	.LBB13_49
# BB#47:                                #   in Loop: Header=BB13_32 Depth=2
	cmpq	$9, %r13
	jne	.LBB13_48
.LBB13_49:                              #   in Loop: Header=BB13_32 Depth=2
	movq	%rbx, %rdi
	callq	strlen@PLT
	movq	%rax, %rcx
	cmpq	$5, %rcx
	je	.LBB13_52
# BB#50:                                #   in Loop: Header=BB13_32 Depth=2
	cmpq	$8, %rcx
	jne	.LBB13_51
.LBB13_52:                              #   in Loop: Header=BB13_32 Depth=2
	leaq	128(%rsp), %rdi
	movq	%rbx, %rsi
	callq	_ZN9game_move5setupEPKc@PLT
	movb	%al, %r15b
	jmp	.LBB13_53
.LBB13_39:                              #   in Loop: Header=BB13_32 Depth=2
	leaq	.L.str.83(%rip), %rdi
	callq	perror@PLT
	jmp	.LBB13_40
.LBB13_41:                              #   in Loop: Header=BB13_32 Depth=2
	leaq	.L.str.84(%rip), %rdi
	callq	perror@PLT
	jmp	.LBB13_42
.LBB13_48:                              #   in Loop: Header=BB13_32 Depth=2
	xorl	%r15d, %r15d
	xorl	%eax, %eax
	leaq	.L.str.6(%rip), %rdi
	movq	%r13, %rsi
	callq	_Z5printPKcz@PLT
	jmp	.LBB13_53
.LBB13_51:                              #   in Loop: Header=BB13_32 Depth=2
	xorl	%r15d, %r15d
	xorl	%eax, %eax
	leaq	.L.str.7(%rip), %rdi
	movq	%rcx, %rsi
	callq	_Z5printPKcz@PLT
	.align	16, 0x90
.LBB13_53:                              # %_Z16deserialize_moveiP9game_move.exit.i
                                        #   in Loop: Header=BB13_32 Depth=2
	movq	112(%rsp), %rax         # 8-byte Reload
	cmpb	$0, (%rax)
	movq	80(%rsp), %r13          # 8-byte Reload
	je	.LBB13_54
.LBB13_62:                              # %_ZL11player_moveP6playerPK10game_stateP9game_move.exit
                                        #   in Loop: Header=BB13_32 Depth=2
	xorl	%eax, %eax
	leaq	.L.str.88(%rip), %rdi
	callq	_Z5printPKcz@PLT
.LBB13_63:                              # %_ZL11player_moveP6playerPK10game_stateP9game_move.exit.thread
                                        #   in Loop: Header=BB13_32 Depth=2
	movzbl	_ZL5debug(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB13_67
# BB#64:                                #   in Loop: Header=BB13_32 Depth=2
	xorl	%eax, %eax
	leaq	.L.str.17(%rip), %rdi
	movq	120(%rsp), %r14         # 8-byte Reload
	movl	%r14d, %esi
	callq	_Z5printPKcz@PLT
	movq	%rbx, %r15
.LBB13_65:                              # %.thread
                                        #   in Loop: Header=BB13_32 Depth=2
	movq	%r12, %rdi
	callq	_Z14is_final_statePK10game_state@PLT
	testb	%al, %al
	je	.LBB13_32
	jmp	.LBB13_66
.LBB13_54:                              #   in Loop: Header=BB13_32 Depth=2
	testb	%r15b, %r15b
	je	.LBB13_63
# BB#55:                                #   in Loop: Header=BB13_32 Depth=2
	movl	(%r13), %edi
	movl	$19, %esi
	callq	kill@PLT
	testl	%eax, %eax
	js	.LBB13_63
# BB#56:                                #   in Loop: Header=BB13_32 Depth=2
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 176(%rsp)
	movaps	%xmm0, 160(%rsp)
	xorl	%edi, %edi
	xorl	%edx, %edx
	movq	%rbx, %r15
	movq	%r15, %rsi
	callq	setitimer@PLT
	testl	%eax, %eax
	js	.LBB13_79
# BB#57:                                # %_ZL9arm_timerl.exit2.i
                                        #   in Loop: Header=BB13_32 Depth=2
	movq	$0, _ZL14current_player(%rip)
	movw	$0, 640(%rsp)
	movq	$0, 632(%rsp)
	movl	132(%rsp), %eax
	movq	_ZZNK9game_move8toStringEPcE3row@GOTPCREL(%rip), %rdx
	movb	(%rdx,%rax), %al
	movb	%al, 632(%rsp)
	movl	136(%rsp), %eax
	movq	_ZZNK9game_move8toStringEPcE4diag@GOTPCREL(%rip), %rsi
	movb	(%rsi,%rax), %al
	movb	%al, 633(%rsp)
	movl	$2, %eax
	cmpl	$1, 128(%rsp)
	movq	120(%rsp), %r14         # 8-byte Reload
	jne	.LBB13_59
# BB#58:                                #   in Loop: Header=BB13_32 Depth=2
	movb	$45, 634(%rsp)
	movl	140(%rsp), %eax
	movb	(%rdx,%rax), %al
	movb	%al, 635(%rsp)
	movl	144(%rsp), %eax
	movb	(%rsi,%rax), %al
	movb	%al, 636(%rsp)
	movl	$5, %eax
.LBB13_59:                              #   in Loop: Header=BB13_32 Depth=2
	movl	%eax, %eax
	movb	$44, 632(%rsp,%rax)
	movl	148(%rsp), %ecx
	movb	(%rdx,%rcx), %cl
	movb	%cl, 633(%rsp,%rax)
	movl	152(%rsp), %ecx
	movb	(%rsi,%rcx), %cl
	movb	%cl, 634(%rsp,%rax)
	movb	$0, 635(%rsp,%rax)
	xorl	%eax, %eax
	leaq	.L.str.87(%rip), %rdi
	leaq	632(%rsp), %rsi
	callq	_Z5printPKcz@PLT
	movq	%r12, %rdi
	leaq	128(%rsp), %rsi
	callq	_Z10apply_moveP10game_statePK9game_move@PLT
	testb	%al, %al
	jne	.LBB13_68
# BB#60:                                #   in Loop: Header=BB13_32 Depth=2
	xorl	%eax, %eax
	leaq	.L.str.19(%rip), %rdi
	movl	%r14d, %esi
	callq	_Z5printPKcz@PLT
	movb	_ZL5debug(%rip), %al
	andb	$1, %al
	jne	.LBB13_65
	jmp	.LBB13_61
.LBB13_68:                              #   in Loop: Header=BB13_29 Depth=1
	xorl	%eax, %eax
	leaq	.L.str.20(%rip), %rdi
	movl	%r14d, %esi
	callq	_Z5printPKcz@PLT
	movl	$1, %r13d
	subl	%r14d, %r13d
	sete	%al
	movzbl	%al, %eax
	movq	%r12, %rbp
	movl	68(%rsp), %r15d         # 4-byte Reload
	addl	%eax, %r15d
	cmpl	$101, %r15d
	movl	%r13d, %r14d
	leaq	_ZL6player(%rip), %rbx
	jl	.LBB13_29
	jmp	.LBB13_69
.LBB13_66:
	movl	%r14d, %r13d
	movl	68(%rsp), %r15d         # 4-byte Reload
.LBB13_69:                              # %.loopexit
	movq	stderr@GOTPCREL(%rip), %rax
	movq	%rax, %rbx
	movq	(%rbx), %rsi
	movl	$10, %edi
	callq	fputc@PLT
	leaq	.Lstr.92(%rip), %rdi
	callq	puts@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
	movl	$1, %ebp
	leaq	480(%rsp), %rsi
	movl	$1, %edi
	callq	_Z15serialize_stateiPK10game_state@PLT
	movq	(%rbx), %rsi
	movl	$10, %edi
	callq	fputc@PLT
	movq	(%rbx), %rsi
	movl	$10, %edi
	callq	fputc@PLT
	leaq	.L.str.22(%rip), %rdi
	xorl	%eax, %eax
	callq	_Z5printPKcz@PLT
	cmpl	$100, %r15d
	jg	.LBB13_71
# BB#70:
	subl	%r13d, %ebp
	leaq	.L.str.23(%rip), %rax
	movsbl	(%rbp,%rax), %esi
	leaq	.L.str.24(%rip), %rdi
	xorl	%eax, %eax
	movl	%r15d, %edx
	callq	_Z5printPKcz@PLT
	jmp	.LBB13_72
.LBB13_71:
	leaq	.L.str.25(%rip), %rdi
	xorl	%eax, %eax
	movl	%r15d, %esi
	callq	_Z5printPKcz@PLT
.LBB13_72:                              # %.preheader
	movl	_ZL6player(%rip), %edi
	movl	$15, %esi
	callq	kill@PLT
	movl	_ZL6player(%rip), %edi
	movl	$18, %esi
	callq	kill@PLT
	movl	_ZL6player(%rip), %edi
	leaq	320(%rsp), %rbx
	xorl	%edx, %edx
	movq	%rbx, %rsi
	callq	waitpid@PLT
	movl	_ZL6player+16(%rip), %edi
	movl	$15, %esi
	callq	kill@PLT
	movl	_ZL6player+16(%rip), %edi
	movl	$18, %esi
	callq	kill@PLT
	movl	_ZL6player+16(%rip), %edi
	xorl	%edx, %edx
	movq	%rbx, %rsi
	callq	waitpid@PLT
	xorl	%eax, %eax
	addq	$648, %rsp              # imm = 0x288
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB13_30:
	movl	%r14d, %r13d
	jmp	.LBB13_69
.LBB13_79:
	leaq	.L.str.55(%rip), %rdi
	xorl	%eax, %eax
	callq	_Z5printPKcz@PLT
	callq	abort@PLT
.LBB13_78:
	leaq	.L.str.82(%rip), %rdi
	leaq	.L.str.27(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN10game_state6playerEj(%rip), %rcx
	movl	$99, %edx
	callq	__assert_fail@PLT
.LBB13_67:
	movq	120(%rsp), %rdx         # 8-byte Reload
	leal	3(%rdx), %edi
	leaq	.L.str.18(%rip), %rsi
	xorl	%eax, %eax
	callq	_ZL8exit_msg11exit_reasonPKcz
.LBB13_13:                              # %.loopexit8
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	.L.str.51(%rip), %rdi
	movl	$527, %esi              # imm = 0x20F
	movl	$1, %edx
	callq	fwrite@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB13_74:
	callq	abort@PLT
.LBB13_75:
	leaq	.L.str.14(%rip), %rsi
	movl	$5, %edi
	xorl	%eax, %eax
	callq	_ZL8exit_msg11exit_reasonPKcz
.LBB13_76:
	leaq	.L.str.8(%rip), %rdi
	leaq	.L.str.3(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc(%rip), %rcx
	movl	$80, %edx
	callq	__assert_fail@PLT
.LBB13_77:
	leaq	.L.str.9(%rip), %rdi
	leaq	.L.str.3(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc(%rip), %rcx
	movl	$81, %edx
	callq	__assert_fail@PLT
.LBB13_61:
	leal	1(%r14), %edi
	leaq	.L.str.19(%rip), %rsi
	xorl	%eax, %eax
	movl	%r14d, %edx
	callq	_ZL8exit_msg11exit_reasonPKcz
.Lfunc_end13:
	.size	main, .Lfunc_end13-main
	.cfi_endproc

	.align	16, 0x90
	.type	_ZL11fork_playerPcP6player,@function
_ZL11fork_playerPcP6player:             # @_ZL11fork_playerPcP6player
	.cfi_startproc
# BB#0:
	pushq	%r14
.Ltmp107:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp108:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp109:
	.cfi_def_cfa_offset 48
.Ltmp110:
	.cfi_offset %rbx, -24
.Ltmp111:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	16(%rsp), %rdi
	callq	pipe@PLT
	testl	%eax, %eax
	je	.LBB14_2
# BB#1:
	xorl	%eax, %eax
	jmp	.LBB14_9
.LBB14_2:
	leaq	8(%rsp), %rdi
	callq	pipe@PLT
	testl	%eax, %eax
	je	.LBB14_4
# BB#3:
	xorl	%eax, %eax
	jmp	.LBB14_9
.LBB14_4:
	callq	fork@PLT
	movl	%eax, (%rbx)
	movl	(%rbx), %eax
	cmpl	$-1, %eax
	je	.LBB14_10
# BB#5:
	cmpl	$0, (%rbx)
	je	.LBB14_11
# BB#6:
	movl	(%rbx), %edi
	movl	$19, %esi
	callq	kill@PLT
	testl	%eax, %eax
	js	.LBB14_7
# BB#8:
	movl	20(%rsp), %edi
	callq	close@PLT
	movl	8(%rsp), %edi
	callq	close@PLT
	movl	16(%rsp), %eax
	movl	%eax, 4(%rbx)
	movl	12(%rsp), %eax
	movl	%eax, 8(%rbx)
	movb	$1, %al
	jmp	.LBB14_9
.LBB14_7:
	xorl	%eax, %eax
.LBB14_9:
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB14_10:
	callq	abort@PLT
.LBB14_11:
	movl	16(%rsp), %edi
	callq	close@PLT
	movl	12(%rsp), %edi
	callq	close@PLT
	movl	8(%rsp), %edi
	movl	$3, %esi
	callq	dup2@PLT
	movl	20(%rsp), %edi
	movl	$4, %esi
	callq	dup2@PLT
	movl	$2, %edi
	callq	close@PLT
	movl	$1, %edi
	movl	$2, %esi
	callq	dup2@PLT
	leaq	_ZL9cpu_limit(%rip), %rsi
	xorl	%edi, %edi
	callq	setrlimit@PLT
	leaq	_ZL9mem_limit(%rip), %rsi
	movl	$9, %edi
	callq	setrlimit@PLT
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%r14, %rsi
	callq	execl@PLT
	leaq	.L.str.80(%rip), %rdi
	xorl	%eax, %eax
	movq	%r14, %rsi
	callq	printf@PLT
	leaq	.L.str.81(%rip), %rdi
	callq	perror@PLT
	movl	$5, %edi
	callq	_exit@PLT
.Lfunc_end14:
	.size	_ZL11fork_playerPcP6player, .Lfunc_end14-_ZL11fork_playerPcP6player
	.cfi_endproc

	.align	16, 0x90
	.type	_ZL8exit_msg11exit_reasonPKcz,@function
_ZL8exit_msg11exit_reasonPKcz:          # @_ZL8exit_msg11exit_reasonPKcz
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp112:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp113:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp114:
	.cfi_def_cfa_offset 32
	subq	$208, %rsp
.Ltmp115:
	.cfi_def_cfa_offset 240
.Ltmp116:
	.cfi_offset %rbx, -32
.Ltmp117:
	.cfi_offset %r14, -24
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movl	%edi, %r14d
	testb	%al, %al
	je	.LBB15_2
# BB#1:
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB15_2:
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	leaq	(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	240(%rsp), %rax
	movq	%rax, 184(%rsp)
	movl	$48, 180(%rsp)
	movl	$16, 176(%rsp)
	movq	stderr@GOTPCREL(%rip), %rbp
	movq	(%rbp), %rcx
	leaq	.L.str(%rip), %rdi
	movl	$6, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movq	(%rbp), %rdi
	leaq	176(%rsp), %rdx
	movq	%rbx, %rsi
	callq	vfprintf@PLT
	movl	%r14d, %edi
	callq	exit@PLT
.Lfunc_end15:
	.size	_ZL8exit_msg11exit_reasonPKcz, .Lfunc_end15-_ZL8exit_msg11exit_reasonPKcz
	.cfi_endproc

	.section	.text._ZN10game_state3setEjjc,"axG",@progbits,_ZN10game_state3setEjjc,comdat
	.weak	_ZN10game_state3setEjjc
	.align	16, 0x90
	.type	_ZN10game_state3setEjjc,@function
_ZN10game_state3setEjjc:                # @_ZN10game_state3setEjjc
	.cfi_startproc
# BB#0:
	pushq	%rax
.Ltmp119:
	.cfi_def_cfa_offset 16
	movzbl	%cl, %eax
	cmpl	$46, %eax
	je	.LBB16_13
# BB#1:
	cmpl	$87, %eax
	je	.LBB16_8
# BB#2:
	cmpl	$66, %eax
	jne	.LBB16_18
# BB#3:
	leal	5(%rdx), %eax
	cmpl	%esi, %eax
	jbe	.LBB16_24
# BB#4:
	leal	5(%rsi), %eax
	cmpl	%edx, %eax
	jbe	.LBB16_24
# BB#5:
	decl	%esi
	cmpl	$8, %esi
	ja	.LBB16_24
# BB#6:
	decl	%edx
	cmpl	$9, %edx
	jae	.LBB16_24
# BB#7:                                 # %_ZN10game_state3setEjj9FieldType.exit
	movl	%edx, %eax
	movl	%esi, %ecx
	leaq	(%rcx,%rcx,8), %rcx
	addq	%rcx, %rdi
	movb	$1, 1(%rax,%rdi)
	popq	%rax
	retq
.LBB16_13:
	leal	5(%rdx), %eax
	cmpl	%esi, %eax
	jbe	.LBB16_24
# BB#14:
	leal	5(%rsi), %eax
	cmpl	%edx, %eax
	jbe	.LBB16_24
# BB#15:
	decl	%esi
	cmpl	$8, %esi
	ja	.LBB16_24
# BB#16:
	decl	%edx
	cmpl	$9, %edx
	jae	.LBB16_24
# BB#17:                                # %_ZN10game_state3setEjj9FieldType.exit12
	movl	%edx, %eax
	movl	%esi, %ecx
	leaq	(%rcx,%rcx,8), %rcx
	addq	%rcx, %rdi
	movb	$3, 1(%rax,%rdi)
	popq	%rax
	retq
.LBB16_8:
	leal	5(%rdx), %eax
	cmpl	%esi, %eax
	jbe	.LBB16_24
# BB#9:
	leal	5(%rsi), %eax
	cmpl	%edx, %eax
	jbe	.LBB16_24
# BB#10:
	decl	%esi
	cmpl	$8, %esi
	ja	.LBB16_24
# BB#11:
	decl	%edx
	cmpl	$9, %edx
	jae	.LBB16_24
# BB#12:                                # %_ZN10game_state3setEjj9FieldType.exit6
	movl	%edx, %eax
	movl	%esi, %ecx
	leaq	(%rcx,%rcx,8), %rcx
	addq	%rcx, %rdi
	movb	$2, 1(%rax,%rdi)
	popq	%rax
	retq
.LBB16_18:
	leal	5(%rdx), %eax
	cmpl	%esi, %eax
	jbe	.LBB16_24
# BB#19:
	leal	5(%rsi), %eax
	cmpl	%edx, %eax
	jbe	.LBB16_24
# BB#20:
	decl	%esi
	cmpl	$8, %esi
	ja	.LBB16_24
# BB#21:
	decl	%edx
	cmpl	$9, %edx
	jae	.LBB16_24
# BB#22:                                # %_ZN10game_state3setEjj9FieldType.exit18
	movl	%edx, %eax
	movl	%esi, %ecx
	leaq	(%rcx,%rcx,8), %rcx
	addq	%rcx, %rdi
	movb	$4, 1(%rax,%rdi)
	popq	%rax
	retq
.LBB16_24:                              # %_ZL15check_valid_posjj.exit.thread.i
	leaq	.L.str.50(%rip), %rdi
	leaq	.L.str.27(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN10game_state3setEjj9FieldType(%rip), %rcx
	movl	$127, %edx
	callq	__assert_fail@PLT
.Lfunc_end16:
	.size	_ZN10game_state3setEjjc, .Lfunc_end16-_ZN10game_state3setEjjc
	.cfi_endproc

	.text
	.align	16, 0x90
	.type	_ZL13alarm_handleriP9siginfo_tPv,@function
_ZL13alarm_handleriP9siginfo_tPv:       # @_ZL13alarm_handleriP9siginfo_tPv
	.cfi_startproc
# BB#0:
	subq	$40, %rsp
.Ltmp120:
	.cfi_def_cfa_offset 48
	cmpl	$14, %edi
	jne	.LBB17_7
# BB#1:
	movq	_ZL14current_player(%rip), %rax
	testq	%rax, %rax
	je	.LBB17_8
# BB#2:
	cmpb	$0, 12(%rax)
	je	.LBB17_3
# BB#5:
	movb	$1, 13(%rax)
	movl	(%rax), %edi
	movl	$9, %esi
	addq	$40, %rsp
	jmp	kill@PLT                # TAILCALL
.LBB17_3:
	movb	$1, 12(%rax)
	movl	(%rax), %edi
	movl	$24, %esi
	callq	kill@PLT
	movq	_ZL9cpu_limit+8(%rip), %rax
	subq	_ZL9cpu_limit(%rip), %rax
	xorl	%ecx, %ecx
	cmpq	$-1, %rax
	cmoveq	%rcx, %rax
	xorps	%xmm0, %xmm0
	movaps	%xmm0, (%rsp)
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	leaq	(%rsp), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	callq	setitimer@PLT
	testl	%eax, %eax
	js	.LBB17_4
# BB#6:
	addq	$40, %rsp
	retq
.LBB17_7:
	leaq	.L.str.52(%rip), %rdi
	leaq	.L.str.53(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv(%rip), %rcx
	movl	$81, %edx
	callq	__assert_fail@PLT
.LBB17_8:
	leaq	.L.str.54(%rip), %rdi
	leaq	.L.str.53(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv(%rip), %rcx
	movl	$84, %edx
	callq	__assert_fail@PLT
.LBB17_4:
	leaq	.L.str.55(%rip), %rdi
	xorl	%eax, %eax
	callq	_Z5printPKcz@PLT
	callq	abort@PLT
.Lfunc_end17:
	.size	_ZL13alarm_handleriP9siginfo_tPv, .Lfunc_end17-_ZL13alarm_handleriP9siginfo_tPv
	.cfi_endproc

	.align	16, 0x90
	.type	_ZL13child_handleriP9siginfo_tPv,@function
_ZL13child_handleriP9siginfo_tPv:       # @_ZL13child_handleriP9siginfo_tPv
	.cfi_startproc
# BB#0:
	pushq	%rbx
.Ltmp121:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp122:
	.cfi_def_cfa_offset 32
.Ltmp123:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movl	8(%rbx), %eax
	addl	$-5, %eax
	cmpl	$2, %eax
	jae	.LBB18_1
# BB#11:
	addq	$16, %rsp
	popq	%rbx
	retq
.LBB18_1:
	movl	24(%rbx), %esi
	cmpl	$15, %esi
	je	.LBB18_9
# BB#2:
	cmpl	$11, %esi
	je	.LBB18_4
# BB#3:
	cmpl	$9, %esi
	je	.LBB18_4
# BB#10:
	leaq	.L.str.60(%rip), %rdi
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbx
	jmp	_Z5printPKcz@PLT        # TAILCALL
.LBB18_9:
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	$10, %edi
	callq	fputc@PLT
	leaq	.L.str.59(%rip), %rdi
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbx
	jmp	_Z5printPKcz@PLT        # TAILCALL
.LBB18_4:
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	$10, %edi
	callq	fputc@PLT
	movl	8(%rbx), %eax
	movl	24(%rbx), %esi
	decl	%eax
	leaq	.L.str.65(%rip), %rcx
	cmpl	$3, %eax
	movq	%rcx, %rdx
	ja	.LBB18_6
# BB#5:                                 # %switch.lookup.i
	cltq
	leaq	.Lswitch.table.93(%rip), %rdx
	movq	(%rdx,%rax,8), %rdx
.LBB18_6:                               # %_ZL11si_code_stri.exit
	leal	-1(%rsi), %eax
	cmpl	$16, %eax
	ja	.LBB18_8
# BB#7:                                 # %switch.lookup.i4
	cltq
	leaq	.Lswitch.table.94(%rip), %rcx
	movq	(%rcx,%rax,8), %rcx
.LBB18_8:                               # %_ZL10signal_stri.exit
	leaq	.L.str.56(%rip), %rdi
	xorl	%eax, %eax
	callq	_Z5printPKcz@PLT
	leaq	.L.str.57(%rip), %rdi
	xorl	%eax, %eax
	callq	_Z5printPKcz@PLT
	movl	_ZL6player(%rip), %edi
	movl	$15, %esi
	callq	kill@PLT
	movl	_ZL6player(%rip), %edi
	movl	$18, %esi
	callq	kill@PLT
	movl	_ZL6player(%rip), %edi
	leaq	12(%rsp), %rbx
	xorl	%edx, %edx
	movq	%rbx, %rsi
	callq	waitpid@PLT
	movl	_ZL6player+16(%rip), %edi
	movl	$15, %esi
	callq	kill@PLT
	movl	_ZL6player+16(%rip), %edi
	movl	$18, %esi
	callq	kill@PLT
	movl	_ZL6player+16(%rip), %edi
	xorl	%edx, %edx
	movq	%rbx, %rsi
	callq	waitpid@PLT
	leaq	.L.str.58(%rip), %rdi
	xorl	%eax, %eax
	callq	_Z5printPKcz@PLT
	movl	$1, %edi
	callq	exit@PLT
.Lfunc_end18:
	.size	_ZL13child_handleriP9siginfo_tPv, .Lfunc_end18-_ZL13child_handleriP9siginfo_tPv
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	_GLOBAL__sub_I_mcp_S.cc,@function
_GLOBAL__sub_I_mcp_S.cc:                # @_GLOBAL__sub_I_mcp_S.cc
	.cfi_startproc
# BB#0:
	pushq	%rbx
.Ltmp124:
	.cfi_def_cfa_offset 16
.Ltmp125:
	.cfi_offset %rbx, -16
	leaq	_ZStL8__ioinit(%rip), %rbx
	movq	%rbx, %rdi
	callq	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	movq	__dso_handle@GOTPCREL(%rip), %rdx
	movq	%rbx, %rsi
	popq	%rbx
	jmp	__cxa_atexit@PLT        # TAILCALL
.Lfunc_end19:
	.size	_GLOBAL__sub_I_mcp_S.cc, .Lfunc_end19-_GLOBAL__sub_I_mcp_S.cc
	.cfi_endproc

	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"<MCP> "
	.size	.L.str, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"cnt == 64"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"./abalone.cc"
	.size	.L.str.3, 13

	.type	.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state,@object # @__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state
.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state:
	.asciz	"bool deserialize_state(int, game_state *)"
	.size	.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state, 42

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"buf[63] == '\\0'"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Read %s, len %z\n"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Invalid length of move: %i\n"
	.size	.L.str.6, 28

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Unexpected EOF in move at %i\n"
	.size	.L.str.7, 30

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"init"
	.size	.L.str.8, 5

	.type	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc,@object # @__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc
.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc:
	.asciz	"void initialize_state(game_state *, const char *)"
	.size	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc, 50

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"strlen(init) == 63"
	.size	.L.str.9, 19

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"W: %d, B: %d\n"
	.size	.L.str.10, 14

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"B:BBBBBBBBBBB..BBB.............................WWW..WWWWWWWWWWW"
	.size	.L.str.11, 64

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Master Control Program\n"
	.size	.L.str.12, 24

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"dT:t:m:M:s:h"
	.size	.L.str.13, 13

	.type	_ZL5debug,@object       # @_ZL5debug
	.local	_ZL5debug
	.comm	_ZL5debug,1,1
	.type	_ZL9cpu_limit,@object   # @_ZL9cpu_limit
	.data
	.align	8
_ZL9cpu_limit:
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.size	_ZL9cpu_limit, 16

	.type	_ZL9mem_limit,@object   # @_ZL9mem_limit
	.align	8
_ZL9mem_limit:
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.size	_ZL9mem_limit, 16

	.type	_ZL6player,@object      # @_ZL6player
	.local	_ZL6player
	.comm	_ZL6player,32,16
	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"Unable to fork players.\n"
	.size	.L.str.14, 25

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"[%s] P%u's turn.\n"
	.size	.L.str.15, 18

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"State: "
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"No move from player %d.\n"
	.size	.L.str.17, 25

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"No move from player %u.\n"
	.size	.L.str.18, 25

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Invalid move from player %u.\n"
	.size	.L.str.19, 30

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"P%u moves.\n"
	.size	.L.str.20, 12

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"End of Line.\n"
	.size	.L.str.22, 14

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"BW"
	.size	.L.str.23, 3

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%c wins after %i turns.\n"
	.size	.L.str.24, 25

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"A draw after %i turns.\n"
	.size	.L.str.25, 24

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"str"
	.size	.L.str.26, 4

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"./board.h"
	.size	.L.str.27, 10

	.type	.L__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc,@object # @__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc
.L__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc:
	.asciz	"void game_state::toString(char *) const"
	.size	.L__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc, 40

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"i == 64"
	.size	.L.str.28, 8

	.type	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc,@object # @__PRETTY_FUNCTION__._ZN10game_state5setupEPKc
.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc:
	.asciz	"void game_state::setup(const char *)"
	.size	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc, 37

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"strlen(str) == 63"
	.size	.L.str.29, 18

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"str[1] == ':'"
	.size	.L.str.30, 14

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Unknown player type in '%s'\n"
	.size	.L.str.31, 29

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"i == 63"
	.size	.L.str.32, 8

	.type	_ZZNK9game_move8toStringEPcE3row,@object # @_ZZNK9game_move8toStringEPcE3row
	.section	.rodata._ZZNK9game_move8toStringEPcE3row,"aG",@progbits,_ZZNK9game_move8toStringEPcE3row,comdat
	.weak	_ZZNK9game_move8toStringEPcE3row
_ZZNK9game_move8toStringEPcE3row:
	.asciz	"-ABCDEFGHI"
	.size	_ZZNK9game_move8toStringEPcE3row, 11

	.type	_ZZNK9game_move8toStringEPcE4diag,@object # @_ZZNK9game_move8toStringEPcE4diag
	.section	.rodata._ZZNK9game_move8toStringEPcE4diag,"aG",@progbits,_ZZNK9game_move8toStringEPcE4diag,comdat
	.weak	_ZZNK9game_move8toStringEPcE4diag
_ZZNK9game_move8toStringEPcE4diag:
	.asciz	"-123456789"
	.size	_ZZNK9game_move8toStringEPcE4diag, 11

	.type	.L.str.36,@object       # @.str.36
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.36:
	.asciz	"Invalid char in move: %c\n"
	.size	.L.str.36, 26

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"ABCDEFGHI"
	.size	.L.str.38, 10

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	" "
	.size	.L.str.39, 2

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"  "
	.size	.L.str.40, 3

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"   "
	.size	.L.str.41, 4

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	" - "
	.size	.L.str.42, 4

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"    "
	.size	.L.str.43, 5

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"/ \\ "
	.size	.L.str.44, 5

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"\\ / "
	.size	.L.str.45, 5

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"               1   2   3   4   5"
	.size	.L.str.46, 33

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"\033[31;1mB\033[0m"
	.size	.L.str.47, 13

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"\033[32;1mW\033[0m"
	.size	.L.str.48, 13

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"o"
	.size	.L.str.49, 2

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"check_valid_pos(row, diagonal)"
	.size	.L.str.50, 31

	.type	.L__PRETTY_FUNCTION__._ZN10game_state3setEjj9FieldType,@object # @__PRETTY_FUNCTION__._ZN10game_state3setEjj9FieldType
.L__PRETTY_FUNCTION__._ZN10game_state3setEjj9FieldType:
	.asciz	"void game_state::set(idx_t, idx_t, FieldType)"
	.size	.L__PRETTY_FUNCTION__._ZN10game_state3setEjj9FieldType, 46

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Usage: mcp [-s state_string] [-t soft-player-time] [-m soft-player-mem]\n           [-T hard-player-time] [-M hard-player-mem]\n           [-d]\n           [-h]\n           player1 player2\n state_string - 63 character string representing an initial field state\n                (this is the string the MCP prints before every move.)\n player-time  - CPU time per turn in seconds\n player-mem   - Memory limit per player in megabytes\n -d           - turn on debugging, program won't exit on invalid move\n -h           - Show this help\n"
	.size	.L.str.51, 528

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"signum == SIGALRM"
	.size	.L.str.52, 18

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"./mcp-shared.cc"
	.size	.L.str.53, 16

	.type	.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv,@object # @__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv
.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv:
	.asciz	"void alarm_handler(int, siginfo_t *, void *)"
	.size	.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv, 45

	.type	_ZL14current_player,@object # @_ZL14current_player
	.local	_ZL14current_player
	.comm	_ZL14current_player,8,8
	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"p"
	.size	.L.str.54, 2

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Failed to set timer.\n"
	.size	.L.str.55, 22

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Child signal: %d (%s,%s)\n"
	.size	.L.str.56, 26

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"killing the other one\n"
	.size	.L.str.57, 23

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"exiting\n"
	.size	.L.str.58, 9

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"\033[32mCHILD terminated successfully\033[0m\n"
	.size	.L.str.59, 40

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Child signal: %i!\n"
	.size	.L.str.60, 19

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"exited"
	.size	.L.str.61, 7

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"killed"
	.size	.L.str.62, 7

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"coredumped"
	.size	.L.str.63, 11

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"trapped"
	.size	.L.str.64, 8

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"unknown"
	.size	.L.str.65, 8

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"SIGHUP"
	.size	.L.str.66, 7

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"SIGINT"
	.size	.L.str.67, 7

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"SIGILL"
	.size	.L.str.68, 7

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"SIGABRT"
	.size	.L.str.69, 8

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"SIGSEGV"
	.size	.L.str.70, 8

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"SIGFPE"
	.size	.L.str.71, 7

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"SIGPIPE"
	.size	.L.str.72, 8

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"SIGKILL"
	.size	.L.str.73, 8

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"SIGTERM"
	.size	.L.str.74, 8

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"SIGALRM"
	.size	.L.str.75, 8

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"SIGUSR1"
	.size	.L.str.76, 8

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"SIGUSR2"
	.size	.L.str.77, 8

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"SIGBUS"
	.size	.L.str.78, 7

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"SIGCHLD"
	.size	.L.str.79, 8

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"EXECL '%s' FAILED\n"
	.size	.L.str.80, 19

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"execl"
	.size	.L.str.81, 6

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"( p == 0) or (p == 1)"
	.size	.L.str.82, 22

	.type	.L__PRETTY_FUNCTION__._ZN10game_state6playerEj,@object # @__PRETTY_FUNCTION__._ZN10game_state6playerEj
.L__PRETTY_FUNCTION__._ZN10game_state6playerEj:
	.asciz	"void game_state::player(idx_t)"
	.size	.L__PRETTY_FUNCTION__._ZN10game_state6playerEj, 31

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"time()"
	.size	.L.str.83, 7

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"localtime()"
	.size	.L.str.84, 12

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"%H:%M:%S"
	.size	.L.str.85, 9

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Move is: %s\n"
	.size	.L.str.87, 13

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"Player timeout!\n"
	.size	.L.str.88, 17

	.section	.init_array,"aw",@init_array
	.align	8
	.quad	_GLOBAL__sub_I_mcp_S.cc
	.type	.Lstr,@object           # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"from invalid"
	.size	.Lstr, 13

	.type	.Lstr.89,@object        # @str.89
.Lstr.89:
	.asciz	"from2 invalid"
	.size	.Lstr.89, 14

	.type	.Lstr.90,@object        # @str.90
.Lstr.90:
	.asciz	"to invalid"
	.size	.Lstr.90, 11

	.type	.Lstr.91,@object        # @str.91
.Lstr.91:
	.asciz	"missing comma"
	.size	.Lstr.91, 14

	.type	.Lstr.92,@object        # @str.92
.Lstr.92:
	.asciz	"Final state:"
	.size	.Lstr.92, 13

	.type	.Lswitch.table,@object  # @switch.table
	.section	.data.rel.ro,"aw",@progbits
	.align	16
.Lswitch.table:
	.quad	.L.str.47
	.quad	.L.str.48
	.quad	.L.str.49
	.quad	.L.str.39
	.size	.Lswitch.table, 32

	.type	.Lswitch.table.93,@object # @switch.table.93
	.align	16
.Lswitch.table.93:
	.quad	.L.str.61
	.quad	.L.str.62
	.quad	.L.str.63
	.quad	.L.str.64
	.size	.Lswitch.table.93, 32

	.type	.Lswitch.table.94,@object # @switch.table.94
	.align	16
.Lswitch.table.94:
	.quad	.L.str.66
	.quad	.L.str.67
	.quad	.L.str.65
	.quad	.L.str.68
	.quad	.L.str.65
	.quad	.L.str.69
	.quad	.L.str.78
	.quad	.L.str.71
	.quad	.L.str.73
	.quad	.L.str.76
	.quad	.L.str.70
	.quad	.L.str.77
	.quad	.L.str.72
	.quad	.L.str.75
	.quad	.L.str.74
	.quad	.L.str.65
	.quad	.L.str.79
	.size	.Lswitch.table.94, 136


	.ident	"clang version 3.8.1-17 (tags/RELEASE_381/final)"
	.section	".note.GNU-stack","",@progbits
#endif
#endif
#ifdef __APPLE__
#ifdef __i386__
	.text
	.file	"mcp-S.cc"
	.globl	_Z5printPKcz
	.align	16, 0x90
	.type	_Z5printPKcz,@function
_Z5printPKcz:                           # @_Z5printPKcz
# BB#0:
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$32, %esp
	calll	.L0$pb
.L0$pb:
	popl	%ebx
.Ltmp0:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp0-.L0$pb), %ebx
	movl	48(%esp), %esi
	leal	52(%esp), %eax
	movl	%eax, 28(%esp)
	movl	stderr@GOT(%ebx), %edi
	movl	(%edi), %eax
	movl	%eax, 12(%esp)
	leal	.L.str@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$1, 8(%esp)
	movl	$6, 4(%esp)
	calll	fwrite@PLT
	movl	(%edi), %eax
	movl	28(%esp), %ecx
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	calll	vfprintf@PLT
	addl	$32, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	retl
.Lfunc_end0:
	.size	_Z5printPKcz, .Lfunc_end0-_Z5printPKcz

	.globl	_Z8print_nlv
	.align	16, 0x90
	.type	_Z8print_nlv,@function
_Z8print_nlv:                           # @_Z8print_nlv
# BB#0:
	pushl	%ebx
	subl	$8, %esp
	calll	.L1$pb
.L1$pb:
	popl	%ebx
.Ltmp1:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp1-.L1$pb), %ebx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	calll	fputc@PLT
	addl	$8, %esp
	popl	%ebx
	retl
.Lfunc_end1:
	.size	_Z8print_nlv, .Lfunc_end1-_Z8print_nlv

	.globl	_Z15serialize_stateiPK10game_state
	.align	16, 0x90
	.type	_Z15serialize_stateiPK10game_state,@function
_Z15serialize_stateiPK10game_state:     # @_Z15serialize_stateiPK10game_state
	.cfi_startproc
# BB#0:
	pushl	%ebp
.Ltmp2:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.Ltmp3:
	.cfi_def_cfa_offset 12
	pushl	%edi
.Ltmp4:
	.cfi_def_cfa_offset 16
	pushl	%esi
.Ltmp5:
	.cfi_def_cfa_offset 20
	subl	$92, %esp
.Ltmp6:
	.cfi_def_cfa_offset 112
.Ltmp7:
	.cfi_offset %esi, -20
.Ltmp8:
	.cfi_offset %edi, -16
.Ltmp9:
	.cfi_offset %ebx, -12
.Ltmp10:
	.cfi_offset %ebp, -8
	calll	.L2$pb
.Ltmp11:
	.cfi_adjust_cfa_offset 4
.L2$pb:
	popl	%eax
.Ltmp12:
	.cfi_adjust_cfa_offset -4
.Ltmp13:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp13-.L2$pb), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	116(%esp), %eax
	movzbl	(%eax), %edx
	movb	$66, %cl
	cmpl	$1, %edx
	je	.LBB2_2
# BB#1:                                 # %select.false
	movb	$87, %cl
.LBB2_2:                                # %select.end
	movb	%cl, 28(%esp)
	movb	$58, 29(%esp)
	movl	$2, %esi
	movl	$1, %ebp
	.align	16, 0x90
.LBB2_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_8 Depth 2
	leal	-4(%ebp), %edx
	cmpl	$6, %ebp
	movl	$1, %ecx
	cmovbl	%ecx, %edx
	cmpl	$9, %edx
	ja	.LBB2_4
# BB#5:                                 #   in Loop: Header=BB2_3 Depth=1
	leal	5(%ebp), %edi
	cmpl	%edi, %edx
	jae	.LBB2_6
# BB#7:                                 # %.lr.ph.split.us.preheader.i
                                        #   in Loop: Header=BB2_3 Depth=1
	leal	(%eax,%edx), %ebx
	movl	%eax, 24(%esp)          # 4-byte Spill
	decl	%edx
	.align	16, 0x90
.LBB2_8:                                # %.lr.ph.split.us.i
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	6(%edx), %eax
	movl	$24, %ecx
	cmpl	%ebp, %eax
	jbe	.LBB2_11
# BB#9:                                 # %.lr.ph.split.us.i
                                        #   in Loop: Header=BB2_8 Depth=2
	cmpl	$8, %edx
	ja	.LBB2_11
# BB#10:                                #   in Loop: Header=BB2_8 Depth=2
	movb	(%ebx), %al
	decb	%al
	movzbl	%al, %ecx
	shll	$3, %ecx
.LBB2_11:                               # %_ZNK10game_state4getCEjj.exit.us.i
                                        #   in Loop: Header=BB2_8 Depth=2
	movl	$539907906, %eax        # imm = 0x202E5742
	shrl	%cl, %eax
	movb	%al, 28(%esp,%esi)
	incl	%esi
	leal	2(%edx), %ecx
	cmpl	$9, %ecx
	ja	.LBB2_13
# BB#12:                                # %_ZNK10game_state4getCEjj.exit.us.i
                                        #   in Loop: Header=BB2_8 Depth=2
	incl	%edx
	incl	%ebx
	cmpl	%edi, %ecx
	jb	.LBB2_8
	jmp	.LBB2_13
	.align	16, 0x90
.LBB2_6:                                #   in Loop: Header=BB2_3 Depth=1
	movl	%eax, 24(%esp)          # 4-byte Spill
	jmp	.LBB2_13
	.align	16, 0x90
.LBB2_4:                                #   in Loop: Header=BB2_3 Depth=1
	movl	%eax, 24(%esp)          # 4-byte Spill
.LBB2_13:                               # %.critedge.i
                                        #   in Loop: Header=BB2_3 Depth=1
	incl	%ebp
	movl	24(%esp), %eax          # 4-byte Reload
	addl	$9, %eax
	cmpl	$10, %ebp
	jne	.LBB2_3
# BB#14:
	movb	$0, 28(%esp,%esi)
	cmpl	$63, %esi
	jne	.LBB2_16
# BB#15:                                # %_ZNK10game_state8toStringEPc.exit
	leal	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	112(%esp), %eax
	movl	%eax, (%esp)
	movl	$64, 8(%esp)
	movl	20(%esp), %ebx          # 4-byte Reload
	calll	write@PLT
	movl	$64, %eax
	addl	$92, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.LBB2_16:
	movl	20(%esp), %ebx          # 4-byte Reload
	leal	.L__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.28@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$176, 8(%esp)
	calll	__assert_fail@PLT
.Lfunc_end2:
	.size	_Z15serialize_stateiPK10game_state, .Lfunc_end2-_Z15serialize_stateiPK10game_state
	.cfi_endproc

	.globl	_Z17deserialize_stateiP10game_state
	.align	16, 0x90
	.type	_Z17deserialize_stateiP10game_state,@function
_Z17deserialize_stateiP10game_state:    # @_Z17deserialize_stateiP10game_state
	.cfi_startproc
# BB#0:
	pushl	%ebx
.Ltmp14:
	.cfi_def_cfa_offset 8
	pushl	%esi
.Ltmp15:
	.cfi_def_cfa_offset 12
	subl	$84, %esp
.Ltmp16:
	.cfi_def_cfa_offset 96
.Ltmp17:
	.cfi_offset %esi, -12
.Ltmp18:
	.cfi_offset %ebx, -8
	calll	.L3$pb
.Ltmp19:
	.cfi_adjust_cfa_offset 4
.L3$pb:
	popl	%ebx
.Ltmp20:
	.cfi_adjust_cfa_offset -4
.Ltmp21:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp21-.L3$pb), %ebx
	movl	96(%esp), %eax
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 64(%esp)
	movaps	%xmm0, 48(%esp)
	movaps	%xmm0, 32(%esp)
	movaps	%xmm0, 16(%esp)
	leal	16(%esp), %esi
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	movl	$64, 8(%esp)
	calll	read@PLT
	cmpl	$64, %eax
	jne	.LBB3_3
# BB#1:
	cmpb	$0, 79(%esp)
	jne	.LBB3_4
# BB#2:
	movl	100(%esp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	calll	_ZN10game_state5setupEPKc@PLT
	movl	$1, %eax
	addl	$84, %esp
	popl	%esi
	popl	%ebx
	retl
.LBB3_3:
	leal	.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$40, 8(%esp)
	calll	__assert_fail@PLT
.LBB3_4:
	leal	.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$41, 8(%esp)
	calll	__assert_fail@PLT
.Lfunc_end3:
	.size	_Z17deserialize_stateiP10game_state, .Lfunc_end3-_Z17deserialize_stateiP10game_state
	.cfi_endproc

	.section	.text._ZN10game_state5setupEPKc,"axG",@progbits,_ZN10game_state5setupEPKc,comdat
	.weak	_ZN10game_state5setupEPKc
	.align	16, 0x90
	.type	_ZN10game_state5setupEPKc,@function
_ZN10game_state5setupEPKc:              # @_ZN10game_state5setupEPKc
# BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$28, %esp
	calll	.L4$pb
.L4$pb:
	popl	%ebx
.Ltmp22:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp22-.L4$pb), %ebx
	movl	52(%esp), %esi
	testl	%esi, %esi
	je	.LBB4_18
# BB#1:
	movl	%esi, (%esp)
	calll	strlen@PLT
	cmpl	$63, %eax
	jne	.LBB4_19
# BB#2:
	movzbl	1(%esi), %eax
	cmpl	$58, %eax
	jne	.LBB4_20
# BB#3:
	movl	48(%esp), %ecx
	movsbl	(%esi), %eax
	cmpl	$87, %eax
	je	.LBB4_12
# BB#4:
	cmpl	$66, %eax
	jne	.LBB4_13
# BB#5:
	movb	$1, (%ecx)
	jmp	.LBB4_6
.LBB4_12:
	movb	$2, (%ecx)
.LBB4_6:                                # %.preheader
	movl	$2, %esi
	movl	$1, %ebp
	.align	16, 0x90
.LBB4_7:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_15 Depth 2
	leal	-4(%ebp), %eax
	cmpl	$6, %ebp
	movl	$1, %edi
	cmovael	%eax, %edi
	cmpl	$9, %edi
	ja	.LBB4_9
# BB#8:                                 # %.preheader
                                        #   in Loop: Header=BB4_7 Depth=1
	leal	5(%ebp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	cmpl	%eax, %edi
	jae	.LBB4_9
	.align	16, 0x90
.LBB4_15:                               # %.lr.ph
                                        #   Parent Loop BB4_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	52(%esp), %eax
	movsbl	(%eax,%esi), %eax
	incl	%esi
	movl	%esi, 24(%esp)          # 4-byte Spill
	movl	%eax, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%ecx, (%esp)
	movl	%ecx, %esi
	calll	_ZN10game_state3setEjjc@PLT
	incl	%edi
	cmpl	$9, %edi
	ja	.LBB4_16
# BB#14:                                # %.lr.ph
                                        #   in Loop: Header=BB4_15 Depth=2
	cmpl	20(%esp), %edi          # 4-byte Folded Reload
	movl	%esi, %ecx
	movl	24(%esp), %esi          # 4-byte Reload
	jb	.LBB4_15
	jmp	.LBB4_9
	.align	16, 0x90
.LBB4_16:                               #   in Loop: Header=BB4_7 Depth=1
	movl	%esi, %ecx
	movl	24(%esp), %esi          # 4-byte Reload
.LBB4_9:                                # %.critedge
                                        #   in Loop: Header=BB4_7 Depth=1
	incl	%ebp
	cmpl	$10, %ebp
	jne	.LBB4_7
# BB#10:
	cmpl	$63, %esi
	jne	.LBB4_11
# BB#17:
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.LBB4_18:
	leal	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.26@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$182, 8(%esp)
	calll	__assert_fail@PLT
.LBB4_19:
	leal	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.29@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$183, 8(%esp)
	calll	__assert_fail@PLT
.LBB4_20:
	leal	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$184, 8(%esp)
	calll	__assert_fail@PLT
.LBB4_13:
	movl	52(%esp), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.31@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	printf@PLT
	movl	$1, (%esp)
	calll	exit@PLT
.LBB4_11:
	leal	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$206, 8(%esp)
	calll	__assert_fail@PLT
.Lfunc_end4:
	.size	_ZN10game_state5setupEPKc, .Lfunc_end4-_ZN10game_state5setupEPKc

	.text
	.globl	_Z14serialize_moveiPK9game_move
	.align	16, 0x90
	.type	_Z14serialize_moveiPK9game_move,@function
_Z14serialize_moveiPK9game_move:        # @_Z14serialize_moveiPK9game_move
	.cfi_startproc
# BB#0:
	pushl	%ebp
.Ltmp23:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.Ltmp24:
	.cfi_def_cfa_offset 12
	pushl	%edi
.Ltmp25:
	.cfi_def_cfa_offset 16
	pushl	%esi
.Ltmp26:
	.cfi_def_cfa_offset 20
	subl	$28, %esp
.Ltmp27:
	.cfi_def_cfa_offset 48
.Ltmp28:
	.cfi_offset %esi, -20
.Ltmp29:
	.cfi_offset %edi, -16
.Ltmp30:
	.cfi_offset %ebx, -12
.Ltmp31:
	.cfi_offset %ebp, -8
	calll	.L5$pb
.Ltmp32:
	.cfi_adjust_cfa_offset 4
.L5$pb:
	popl	%ebx
.Ltmp33:
	.cfi_adjust_cfa_offset -4
.Ltmp34:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp34-.L5$pb), %ebx
	movl	52(%esp), %ebp
	movl	48(%esp), %esi
	movl	4(%ebp), %edx
	movl	_ZZNK9game_move8toStringEPcE3row@GOT(%ebx), %ecx
	movb	(%ecx,%edx), %dl
	movb	%dl, 18(%esp)
	movl	8(%ebp), %edi
	movl	_ZZNK9game_move8toStringEPcE4diag@GOT(%ebx), %edx
	movb	(%edx,%edi), %al
	movb	%al, 19(%esp)
	movl	$2, %edi
	cmpl	$1, (%ebp)
	jne	.LBB5_2
# BB#1:
	movb	$45, 20(%esp)
	movl	12(%ebp), %eax
	movb	(%ecx,%eax), %al
	movb	%al, 21(%esp)
	movl	16(%ebp), %eax
	movb	(%edx,%eax), %al
	movb	%al, 22(%esp)
	movl	$5, %edi
.LBB5_2:                                # %_ZNK9game_move8toStringEPc.exit
	movb	$44, 18(%esp,%edi)
	movl	20(%ebp), %eax
	movb	(%ecx,%eax), %al
	movb	%al, 19(%esp,%edi)
	movl	24(%ebp), %eax
	movb	(%edx,%eax), %al
	movb	%al, 20(%esp,%edi)
	movb	$0, 21(%esp,%edi)
	leal	18(%esp), %edi
	movl	%edi, (%esp)
	calll	strlen@PLT
	incl	%eax
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	calll	write@PLT
	movl	$1, %eax
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end5:
	.size	_Z14serialize_moveiPK9game_move, .Lfunc_end5-_Z14serialize_moveiPK9game_move
	.cfi_endproc

	.globl	_Z16deserialize_moveiP9game_move
	.align	16, 0x90
	.type	_Z16deserialize_moveiP9game_move,@function
_Z16deserialize_moveiP9game_move:       # @_Z16deserialize_moveiP9game_move
	.cfi_startproc
# BB#0:
	pushl	%ebx
.Ltmp35:
	.cfi_def_cfa_offset 8
	pushl	%edi
.Ltmp36:
	.cfi_def_cfa_offset 12
	pushl	%esi
.Ltmp37:
	.cfi_def_cfa_offset 16
	subl	$32, %esp
.Ltmp38:
	.cfi_def_cfa_offset 48
.Ltmp39:
	.cfi_offset %esi, -16
.Ltmp40:
	.cfi_offset %edi, -12
.Ltmp41:
	.cfi_offset %ebx, -8
	calll	.L6$pb
.Ltmp42:
	.cfi_adjust_cfa_offset 4
.L6$pb:
	popl	%ebx
.Ltmp43:
	.cfi_adjust_cfa_offset -4
.Ltmp44:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp44-.L6$pb), %ebx
	movl	48(%esp), %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 28(%esp)
	leal	20(%esp), %edi
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	movl	$10, 8(%esp)
	calll	read@PLT
	movl	%eax, %esi
	movl	%esi, 8(%esp)
	movl	%edi, 4(%esp)
	leal	.L.str.5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
	testl	%esi, %esi
	je	.LBB6_1
# BB#2:
	cmpl	$6, %esi
	je	.LBB6_6
# BB#3:
	cmpl	$9, %esi
	jne	.LBB6_4
.LBB6_6:
	movl	%edi, (%esp)
	calll	strlen@PLT
	cmpl	$5, %eax
	je	.LBB6_9
# BB#7:
	cmpl	$8, %eax
	jne	.LBB6_8
.LBB6_9:
	movl	52(%esp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	calll	_ZN9game_move5setupEPKc@PLT
	jmp	.LBB6_10
.LBB6_1:
	xorl	%eax, %eax
	jmp	.LBB6_10
.LBB6_4:
	movl	%esi, 4(%esp)
	leal	.L.str.6@GOTOFF(%ebx), %eax
	jmp	.LBB6_5
.LBB6_8:
	movl	%eax, 4(%esp)
	leal	.L.str.7@GOTOFF(%ebx), %eax
.LBB6_5:
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
	xorl	%eax, %eax
.LBB6_10:
	movzbl	%al, %eax
	addl	$32, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	retl
.Lfunc_end6:
	.size	_Z16deserialize_moveiP9game_move, .Lfunc_end6-_Z16deserialize_moveiP9game_move
	.cfi_endproc

	.section	.text._ZN9game_move5setupEPKc,"axG",@progbits,_ZN9game_move5setupEPKc,comdat
	.weak	_ZN9game_move5setupEPKc
	.align	16, 0x90
	.type	_ZN9game_move5setupEPKc,@function
_ZN9game_move5setupEPKc:                # @_ZN9game_move5setupEPKc
# BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$12, %esp
	calll	.L7$pb
.L7$pb:
	popl	%ebx
.Ltmp45:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp45-.L7$pb), %ebx
	movl	36(%esp), %ecx
	movl	32(%esp), %eax
	movzbl	(%ecx), %edx
	andl	$159, %edx
	movl	%edx, 4(%eax)
	movsbl	1(%ecx), %esi
	leal	-48(%esi), %edi
	movl	%edi, 8(%eax)
	leal	-43(%esi), %ebp
	cmpl	%edx, %ebp
	jbe	.LBB7_4
# BB#1:
	leal	5(%edx), %ebp
	cmpl	%edi, %ebp
	jbe	.LBB7_4
# BB#2:
	addl	$-49, %esi
	cmpl	$8, %esi
	ja	.LBB7_4
# BB#3:
	decl	%edx
	cmpl	$9, %edx
	jae	.LBB7_4
# BB#5:
	movsbl	2(%ecx), %edx
	cmpl	$45, %edx
	je	.LBB7_14
# BB#6:
	movzbl	%dl, %esi
	cmpl	$44, %esi
	jne	.LBB7_21
# BB#7:
	movl	$0, (%eax)
	movl	$3, %esi
	jmp	.LBB7_8
.LBB7_4:                                # %_ZL15check_valid_posjj.exit11.thread
	leal	.Lstr@GOTOFF(%ebx), %eax
	jmp	.LBB7_13
.LBB7_14:
	movl	$1, (%eax)
	movzbl	3(%ecx), %edx
	andl	$159, %edx
	movl	%edx, 12(%eax)
	movsbl	4(%ecx), %esi
	leal	-48(%esi), %edi
	movl	%edi, 16(%eax)
	leal	-43(%esi), %ebp
	cmpl	%edx, %ebp
	jbe	.LBB7_18
# BB#15:
	leal	5(%edx), %ebp
	cmpl	%edi, %ebp
	jbe	.LBB7_18
# BB#16:
	addl	$-49, %esi
	cmpl	$8, %esi
	ja	.LBB7_18
# BB#17:
	decl	%edx
	cmpl	$9, %edx
	jae	.LBB7_18
# BB#19:
	movzbl	5(%ecx), %edx
	movl	$6, %esi
	cmpl	$44, %edx
	jne	.LBB7_20
.LBB7_8:
	movzbl	(%ecx,%esi), %edx
	andl	$159, %edx
	movl	%edx, 20(%eax)
	movsbl	1(%ecx,%esi), %ecx
	leal	-48(%ecx), %esi
	movl	%esi, 24(%eax)
	leal	-43(%ecx), %eax
	cmpl	%edx, %eax
	jbe	.LBB7_12
# BB#9:
	leal	5(%edx), %eax
	cmpl	%esi, %eax
	jbe	.LBB7_12
# BB#10:
	addl	$-49, %ecx
	cmpl	$8, %ecx
	ja	.LBB7_12
# BB#11:
	decl	%edx
	movb	$1, %al
	cmpl	$9, %edx
	jb	.LBB7_23
.LBB7_12:                               # %_ZL15check_valid_posjj.exit.thread
	leal	.Lstr.90@GOTOFF(%ebx), %eax
	jmp	.LBB7_13
.LBB7_21:
	movl	%edx, 4(%esp)
	leal	.L.str.36@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	printf@PLT
	jmp	.LBB7_22
.LBB7_18:                               # %_ZL15check_valid_posjj.exit7.thread
	leal	.Lstr.89@GOTOFF(%ebx), %eax
	jmp	.LBB7_13
.LBB7_20:
	leal	.Lstr.91@GOTOFF(%ebx), %eax
.LBB7_13:
	movl	%eax, (%esp)
	calll	puts@PLT
.LBB7_22:
	xorl	%eax, %eax
.LBB7_23:
	movzbl	%al, %eax
	addl	$12, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end7:
	.size	_ZN9game_move5setupEPKc, .Lfunc_end7-_ZN9game_move5setupEPKc

	.text
	.globl	_Z16initialize_stateP10game_statePKc
	.align	16, 0x90
	.type	_Z16initialize_stateP10game_statePKc,@function
_Z16initialize_stateP10game_statePKc:   # @_Z16initialize_stateP10game_statePKc
	.cfi_startproc
# BB#0:
	pushl	%ebx
.Ltmp46:
	.cfi_def_cfa_offset 8
	pushl	%edi
.Ltmp47:
	.cfi_def_cfa_offset 12
	pushl	%esi
.Ltmp48:
	.cfi_def_cfa_offset 16
	subl	$16, %esp
.Ltmp49:
	.cfi_def_cfa_offset 32
.Ltmp50:
	.cfi_offset %esi, -16
.Ltmp51:
	.cfi_offset %edi, -12
.Ltmp52:
	.cfi_offset %ebx, -8
	calll	.L8$pb
.Ltmp53:
	.cfi_adjust_cfa_offset 4
.L8$pb:
	popl	%ebx
.Ltmp54:
	.cfi_adjust_cfa_offset -4
.Ltmp55:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp55-.L8$pb), %ebx
	movl	36(%esp), %esi
	testl	%esi, %esi
	je	.LBB8_3
# BB#1:
	movl	%esi, (%esp)
	calll	strlen@PLT
	cmpl	$63, %eax
	jne	.LBB8_4
# BB#2:
	movl	32(%esp), %edi
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	calll	_ZN10game_state5setupEPKc@PLT
	movl	%edi, (%esp)
	calll	_ZNK10game_state5printEv@PLT
	addl	$16, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	retl
.LBB8_3:
	leal	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$80, 8(%esp)
	calll	__assert_fail@PLT
.LBB8_4:
	leal	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$81, 8(%esp)
	calll	__assert_fail@PLT
.Lfunc_end8:
	.size	_Z16initialize_stateP10game_statePKc, .Lfunc_end8-_Z16initialize_stateP10game_statePKc
	.cfi_endproc

	.section	.text._ZNK10game_state5printEv,"axG",@progbits,_ZNK10game_state5printEv,comdat
	.weak	_ZNK10game_state5printEv
	.align	16, 0x90
	.type	_ZNK10game_state5printEv,@function
_ZNK10game_state5printEv:               # @_ZNK10game_state5printEv
	.cfi_startproc
# BB#0:
	pushl	%ebp
.Ltmp56:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.Ltmp57:
	.cfi_def_cfa_offset 12
	pushl	%edi
.Ltmp58:
	.cfi_def_cfa_offset 16
	pushl	%esi
.Ltmp59:
	.cfi_def_cfa_offset 20
	subl	$76, %esp
.Ltmp60:
	.cfi_def_cfa_offset 96
.Ltmp61:
	.cfi_offset %esi, -20
.Ltmp62:
	.cfi_offset %edi, -16
.Ltmp63:
	.cfi_offset %ebx, -12
.Ltmp64:
	.cfi_offset %ebp, -8
	calll	.L9$pb
.Ltmp65:
	.cfi_adjust_cfa_offset 4
.L9$pb:
	popl	%ebx
.Ltmp66:
	.cfi_adjust_cfa_offset -4
.Ltmp67:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp67-.L9$pb), %ebx
	movl	96(%esp), %eax
	leal	73(%eax), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	_ZSt4cout@GOT(%ebx), %ebp
	movl	%ebp, 56(%esp)          # 4-byte Spill
	leal	.L.str.39@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	leal	.L.str.40@GOTOFF(%ebx), %edi
	movl	%edi, 44(%esp)          # 4-byte Spill
	leal	.L.str.41@GOTOFF(%ebx), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	$9, %esi
	.align	16, 0x90
.LBB9_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_42 Depth 2
                                        #     Child Loop BB9_14 Depth 2
                                        #     Child Loop BB9_44 Depth 2
                                        #     Child Loop BB9_35 Depth 2
                                        #     Child Loop BB9_30 Depth 2
	movl	%esi, 64(%esp)          # 4-byte Spill
	movb	.L.str.38@GOTOFF-1(%ebx,%esi), %al
	movb	%al, 75(%esp)
	leal	75(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	movl	$1, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	24(%esp), %ecx          # 4-byte Reload
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	$1, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	$5, %eax
	subl	%esi, %eax
	movl	%eax, %edx
	negl	%edx
	cmovll	%eax, %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	leal	1(%edx), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	$9, %ecx
	subl	%edx, %ecx
	cmpl	$5, %esi
	movl	$1, %esi
	cmovgl	%eax, %esi
	movl	%esi, 68(%esp)          # 4-byte Spill
	movl	$9, %eax
	cmovgel	%eax, %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	testl	%edx, %edx
	movl	%edx, %esi
	jle	.LBB9_2
	.align	16, 0x90
.LBB9_42:                               # %.lr.ph
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edi, 4(%esp)
	movl	%ebp, (%esp)
	movl	$2, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	decl	%esi
	jne	.LBB9_42
.LBB9_2:                                # %._crit_edge
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	64(%esp), %esi          # 4-byte Reload
	leal	-1(%esi), %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	36(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	movl	$3, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	5(%esi), %edi
	movl	68(%esp), %edx          # 4-byte Reload
	leal	5(%edx), %ecx
	movb	$4, %al
	cmpl	%esi, %ecx
	jbe	.LBB9_3
# BB#9:                                 # %._crit_edge
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	%edx, %edi
	jbe	.LBB9_3
# BB#10:                                # %._crit_edge
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	%edi, 52(%esp)          # 4-byte Spill
	leal	-1(%edx), %ecx
	cmpl	$8, %ecx
	movl	48(%esp), %edx          # 4-byte Reload
	ja	.LBB9_12
# BB#11:                                #   in Loop: Header=BB9_1 Depth=1
	leal	(%edx,%edx,8), %eax
	addl	96(%esp), %eax
	movb	1(%ecx,%eax), %al
	jmp	.LBB9_12
	.align	16, 0x90
.LBB9_3:                                #   in Loop: Header=BB9_1 Depth=1
	movl	%edi, 52(%esp)          # 4-byte Spill
	movl	48(%esp), %edx          # 4-byte Reload
.LBB9_12:                               # %_ZNK10game_state3getEjj.exit
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	%edx, 48(%esp)          # 4-byte Spill
	decb	%al
	movsbl	%al, %eax
	movl	.Lswitch.table@GOTOFF(%ebx,%eax,4), %esi
	movl	%esi, (%esp)
	calll	strlen@PLT
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ebp, (%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	68(%esp), %edi          # 4-byte Reload
	leal	1(%edi), %eax
	cmpl	60(%esp), %eax          # 4-byte Folded Reload
	ja	.LBB9_21
# BB#13:                                # %.lr.ph26.split.us.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	32(%esp), %eax          # 4-byte Reload
	leal	(%eax,%edi), %esi
	.align	16, 0x90
.LBB9_14:                               # %.lr.ph26.split.us
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	.L.str.42@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	movl	$3, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	leal	1(%edi), %edx
	leal	6(%edi), %ecx
	movb	$4, %al
	cmpl	64(%esp), %ecx          # 4-byte Folded Reload
	jbe	.LBB9_15
# BB#16:                                # %.lr.ph26.split.us
                                        #   in Loop: Header=BB9_14 Depth=2
	cmpl	%edx, 52(%esp)          # 4-byte Folded Reload
	jbe	.LBB9_17
# BB#18:                                # %.lr.ph26.split.us
                                        #   in Loop: Header=BB9_14 Depth=2
	movl	%edx, 68(%esp)          # 4-byte Spill
	cmpl	$8, %edi
	ja	.LBB9_20
# BB#19:                                #   in Loop: Header=BB9_14 Depth=2
	movb	(%esi), %al
	jmp	.LBB9_20
	.align	16, 0x90
.LBB9_15:                               #   in Loop: Header=BB9_14 Depth=2
	movl	%edx, 68(%esp)          # 4-byte Spill
	jmp	.LBB9_20
.LBB9_17:                               #   in Loop: Header=BB9_14 Depth=2
	movl	%edx, 68(%esp)          # 4-byte Spill
	.align	16, 0x90
.LBB9_20:                               # %_ZNK10game_state3getEjj.exit9.us
                                        #   in Loop: Header=BB9_14 Depth=2
	decb	%al
	movsbl	%al, %eax
	movl	.Lswitch.table@GOTOFF(%ebx,%eax,4), %ebp
	movl	%ebp, (%esp)
	calll	strlen@PLT
	movl	%eax, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	56(%esp), %ebp          # 4-byte Reload
	movl	%ebp, (%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	incl	%esi
	addl	$2, %edi
	cmpl	60(%esp), %edi          # 4-byte Folded Reload
	movl	68(%esp), %edi          # 4-byte Reload
	jbe	.LBB9_14
.LBB9_21:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	$4, 64(%esp)            # 4-byte Folded Reload
	movl	40(%esp), %edi          # 4-byte Reload
	jg	.LBB9_23
# BB#22:                                #   in Loop: Header=BB9_1 Depth=1
	movl	36(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	movl	$3, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	$10, %eax
	subl	%edi, %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	calll	_ZNSo9_M_insertIlEERSoT_@PLT
.LBB9_23:                               #   in Loop: Header=BB9_1 Depth=1
	movl	(%ebp), %eax
	movl	-12(%eax), %eax
	movl	124(%ebp,%eax), %esi
	testl	%esi, %esi
	je	.LBB9_43
# BB#24:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit19
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpb	$0, 28(%esi)
	je	.LBB9_26
# BB#25:                                #   in Loop: Header=BB9_1 Depth=1
	movb	39(%esi), %al
	jmp	.LBB9_27
	.align	16, 0x90
.LBB9_26:                               #   in Loop: Header=BB9_1 Depth=1
	movl	%esi, (%esp)
	calll	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movl	(%esi), %eax
	movl	%esi, (%esp)
	movl	$10, 4(%esp)
	calll	*24(%eax)
.LBB9_27:                               # %_ZNKSt5ctypeIcE5widenEc.exit16
                                        #   in Loop: Header=BB9_1 Depth=1
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	calll	_ZNSo3putEc@PLT
	movl	%eax, (%esp)
	calll	_ZNSo5flushEv@PLT
	leal	.L.str.43@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	movl	$4, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	testl	%edi, %edi
	movl	44(%esp), %esi          # 4-byte Reload
	jle	.LBB9_28
	.align	16, 0x90
.LBB9_44:                               # %.lr.ph28
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%esi, 4(%esp)
	movl	%ebp, (%esp)
	movl	$2, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	decl	%edi
	jne	.LBB9_44
.LBB9_28:                               # %._crit_edge29
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	64(%esp), %eax          # 4-byte Reload
	cmpl	$6, %eax
	jl	.LBB9_32
# BB#29:                                # %.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	60(%esp), %esi          # 4-byte Reload
	movl	28(%esp), %edi          # 4-byte Reload
	jmp	.LBB9_30
	.align	16, 0x90
.LBB9_31:                               # %.lr.ph34
                                        #   in Loop: Header=BB9_30 Depth=2
	leal	.L.str.44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	movl	$4, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	incl	%edi
.LBB9_30:                               # %.preheader
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%esi, %edi
	jbe	.LBB9_31
	jmp	.LBB9_36
	.align	16, 0x90
.LBB9_32:                               #   in Loop: Header=BB9_1 Depth=1
	cmpl	$2, %eax
	movl	60(%esp), %esi          # 4-byte Reload
	jl	.LBB9_36
# BB#33:                                #   in Loop: Header=BB9_1 Depth=1
	movl	44(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	movl	$2, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	cmpl	$2, %esi
	jb	.LBB9_36
# BB#34:                                # %.lr.ph32.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	decl	%esi
	.align	16, 0x90
.LBB9_35:                               # %.lr.ph32
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	.L.str.45@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	movl	$4, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	decl	%esi
	jne	.LBB9_35
	.align	16, 0x90
.LBB9_36:                               # %.loopexit
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	(%ebp), %eax
	movl	-12(%eax), %eax
	movl	124(%ebp,%eax), %esi
	testl	%esi, %esi
	je	.LBB9_45
# BB#37:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit20
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpb	$0, 28(%esi)
	je	.LBB9_39
# BB#38:                                #   in Loop: Header=BB9_1 Depth=1
	movb	39(%esi), %al
	jmp	.LBB9_40
	.align	16, 0x90
.LBB9_39:                               #   in Loop: Header=BB9_1 Depth=1
	movl	%esi, (%esp)
	calll	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movl	(%esi), %eax
	movl	%esi, (%esp)
	movl	$10, 4(%esp)
	calll	*24(%eax)
.LBB9_40:                               # %_ZNKSt5ctypeIcE5widenEc.exit18
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	44(%esp), %edi          # 4-byte Reload
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	calll	_ZNSo3putEc@PLT
	movl	%eax, (%esp)
	calll	_ZNSo5flushEv@PLT
	addl	$-9, 32(%esp)           # 4-byte Folded Spill
	cmpl	$1, 64(%esp)            # 4-byte Folded Reload
	movl	48(%esp), %esi          # 4-byte Reload
	jg	.LBB9_1
# BB#4:
	leal	.L.str.46@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	movl	$32, 8(%esp)
	calll	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i@PLT
	movl	(%ebp), %eax
	movl	-12(%eax), %eax
	movl	124(%ebp,%eax), %esi
	testl	%esi, %esi
	je	.LBB9_41
# BB#5:                                 # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit
	cmpb	$0, 28(%esi)
	je	.LBB9_7
# BB#6:
	movb	39(%esi), %al
	jmp	.LBB9_8
.LBB9_7:
	movl	%esi, (%esp)
	calll	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movl	(%esi), %eax
	movl	%esi, (%esp)
	movl	$10, 4(%esp)
	calll	*24(%eax)
.LBB9_8:                                # %_ZNKSt5ctypeIcE5widenEc.exit
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	calll	_ZNSo3putEc@PLT
	movl	%eax, (%esp)
	calll	_ZNSo5flushEv@PLT
	addl	$76, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.LBB9_43:
	calll	_ZSt16__throw_bad_castv@PLT
.LBB9_45:
	calll	_ZSt16__throw_bad_castv@PLT
.LBB9_41:
	calll	_ZSt16__throw_bad_castv@PLT
.Lfunc_end9:
	.size	_ZNK10game_state5printEv, .Lfunc_end9-_ZNK10game_state5printEv
	.cfi_endproc

	.text
	.globl	_Z14is_final_statePK10game_state
	.align	16, 0x90
	.type	_Z14is_final_statePK10game_state,@function
_Z14is_final_statePK10game_state:       # @_Z14is_final_statePK10game_state
# BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$12, %esp
	calll	.L10$pb
.L10$pb:
	popl	%ebx
.Ltmp68:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp68-.L10$pb), %ebx
	xorl	%ebp, %ebp
	movl	$9, %ecx
	movl	32(%esp), %esi
	.align	16, 0x90
.LBB10_1:                               # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-8(%esi,%ecx), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ebp, %edx
	movzbl	-7(%esi,%ecx), %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%edx, %eax
	movzbl	-6(%esi,%ecx), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%eax, %edx
	movzbl	-5(%esi,%ecx), %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%edx, %eax
	movzbl	-4(%esi,%ecx), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%eax, %edx
	movzbl	-3(%esi,%ecx), %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%edx, %eax
	movzbl	-2(%esi,%ecx), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%eax, %edx
	movzbl	-1(%esi,%ecx), %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %edi
	addl	%edx, %edi
	movzbl	(%esi,%ecx), %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %ebp
	addl	%edi, %ebp
	addl	$9, %ecx
	cmpl	$90, %ecx
	jne	.LBB10_1
# BB#2:                                 # %.preheader.i41.preheader
	xorl	%edx, %edx
	movl	$9, %ecx
	.align	16, 0x90
.LBB10_3:                               # %.preheader.i41
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-8(%esi,%ecx), %edi
	cmpl	$1, %edi
	sete	%al
	movzbl	%al, %eax
	addl	%edx, %eax
	movzbl	-7(%esi,%ecx), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%eax, %edx
	movzbl	-6(%esi,%ecx), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%edx, %eax
	movzbl	-5(%esi,%ecx), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%eax, %edx
	movzbl	-4(%esi,%ecx), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%edx, %eax
	movzbl	-3(%esi,%ecx), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%eax, %edx
	movzbl	-2(%esi,%ecx), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%edx, %eax
	movzbl	-1(%esi,%ecx), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edi
	addl	%eax, %edi
	movzbl	(%esi,%ecx), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %edx
	addl	%edi, %edx
	addl	$9, %ecx
	cmpl	$90, %ecx
	jne	.LBB10_3
# BB#4:                                 # %_ZNK10game_state5countE9FieldType.exit42
	movl	%edx, 8(%esp)
	movl	%ebp, 4(%esp)
	leal	.L.str.10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
	xorl	%ecx, %ecx
	movl	$9, %eax
	.align	16, 0x90
.LBB10_5:                               # %.preheader.i27
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-8(%esi,%eax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	-7(%esi,%eax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	-6(%esi,%eax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	-5(%esi,%eax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	-4(%esi,%eax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	-3(%esi,%eax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	-2(%esi,%eax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	-1(%esi,%eax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %edi
	addl	%edx, %edi
	movzbl	(%esi,%eax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edi, %ecx
	addl	$9, %eax
	cmpl	$90, %eax
	jne	.LBB10_5
# BB#6:                                 # %_ZNK10game_state5countE9FieldType.exit28
	movb	$1, %al
	cmpl	$9, %ecx
	jb	.LBB10_10
# BB#7:
	xorl	%ecx, %ecx
	movl	$9, %eax
	.align	16, 0x90
.LBB10_8:                               # %.preheader.i13
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-8(%esi,%eax), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	-7(%esi,%eax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	-6(%esi,%eax), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	-5(%esi,%eax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	-4(%esi,%eax), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	-3(%esi,%eax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	-2(%esi,%eax), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	-1(%esi,%eax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %edi
	addl	%edx, %edi
	movzbl	(%esi,%eax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edi, %ecx
	addl	$9, %eax
	cmpl	$90, %eax
	jne	.LBB10_8
# BB#9:                                 # %_ZNK10game_state5countE9FieldType.exit14
	cmpl	$9, %ecx
	setb	%al
.LBB10_10:
	movzbl	%al, %eax
	addl	$12, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end10:
	.size	_Z14is_final_statePK10game_state, .Lfunc_end10-_Z14is_final_statePK10game_state

	.globl	_Z10move_validPK10game_statePK9game_move
	.align	16, 0x90
	.type	_Z10move_validPK10game_statePK9game_move,@function
_Z10move_validPK10game_statePK9game_move: # @_Z10move_validPK10game_statePK9game_move
# BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$52, %esp
	movl	76(%esp), %edx
	movl	20(%edx), %ebp
	movl	4(%edx), %esi
	movl	%ebp, %eax
	subl	%esi, %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	leal	1(%eax), %ecx
	xorl	%eax, %eax
	cmpl	$2, %ecx
	ja	.LBB11_77
# BB#1:
	movl	%esi, %edi
	movl	8(%edx), %esi
	movl	%esi, 20(%esp)          # 4-byte Spill
	movl	24(%edx), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	subl	%esi, %ecx
	movl	%edi, %esi
	movl	%ecx, 24(%esp)          # 4-byte Spill
	incl	%ecx
	cmpl	$2, %ecx
	ja	.LBB11_77
# BB#2:
	movl	%ebp, %eax
	subl	%esi, %eax
	movl	%eax, 4(%esp)           # 4-byte Spill
	setne	%bl
	movl	44(%esp), %eax          # 4-byte Reload
	subl	20(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 40(%esp)          # 4-byte Spill
	setne	%cl
	movl	24(%esp), %eax          # 4-byte Reload
	cmpl	%eax, 48(%esp)          # 4-byte Folded Reload
	sete	%bh
	movb	%bl, %ch
	orb	%cl, %ch
	xorl	%eax, %eax
	movzbl	%ch, %edi
	cmpl	$1, %edi
	jne	.LBB11_77
# BB#3:
	andb	%cl, %bl
	xorb	$1, %bl
	orb	%bl, %bh
	je	.LBB11_77
# BB#4:
	movl	(%edx), %eax
	testl	%eax, %eax
	je	.LBB11_46
# BB#5:
	cmpl	$1, %eax
	jne	.LBB11_76
# BB#6:
	movl	12(%edx), %eax
	movl	%eax, %ecx
	subl	%esi, %ecx
	movl	%ecx, %edi
	negl	%edi
	cmovll	%ecx, %edi
	cmpl	$2, %edi
	jg	.LBB11_76
# BB#7:
	movl	16(%edx), %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	subl	20(%esp), %edx          # 4-byte Folded Reload
	movl	%edx, %edi
	negl	%edi
	cmovll	%edx, %edi
	cmpl	$2, %edi
	jg	.LBB11_76
# BB#8:
	cmpl	%esi, %eax
	sete	%bl
	movl	40(%esp), %edi          # 4-byte Reload
	cmpl	20(%esp), %edi          # 4-byte Folded Reload
	sete	%bh
	cmpl	%edx, %ecx
	je	.LBB11_10
# BB#9:
	orb	%bh, %bl
	je	.LBB11_76
.LBB11_10:
	cmpl	%esi, %eax
	jne	.LBB11_12
# BB#11:
	movl	40(%esp), %edi          # 4-byte Reload
	cmpl	20(%esp), %edi          # 4-byte Folded Reload
	je	.LBB11_13
.LBB11_12:
	imull	48(%esp), %edx          # 4-byte Folded Reload
	imull	24(%esp), %ecx          # 4-byte Folded Reload
	cmpl	%ecx, %edx
	je	.LBB11_76
.LBB11_13:
	movl	44(%esp), %ecx          # 4-byte Reload
	leal	5(%ecx), %ecx
	cmpl	%ebp, %ecx
	jbe	.LBB11_76
# BB#14:
	leal	5(%ebp), %ecx
	cmpl	44(%esp), %ecx          # 4-byte Folded Reload
	jbe	.LBB11_76
# BB#15:
	decl	%ebp
	cmpl	$8, %ebp
	ja	.LBB11_76
# BB#16:
	movl	44(%esp), %ecx          # 4-byte Reload
	decl	%ecx
	cmpl	$8, %ecx
	movl	%ecx, %edx
	ja	.LBB11_76
# BB#17:                                # %_ZNK10game_state3getEjj.exit
	leal	(%ebp,%ebp,8), %ecx
	addl	72(%esp), %ecx
	movzbl	1(%edx,%ecx), %ecx
	cmpl	$3, %ecx
	jne	.LBB11_76
# BB#18:
	movl	48(%esp), %ecx          # 4-byte Reload
	leal	(%eax,%ecx), %ecx
	movl	24(%esp), %edx          # 4-byte Reload
	movl	40(%esp), %edi          # 4-byte Reload
	leal	5(%edi,%edx), %edx
	cmpl	%ecx, %edx
	jbe	.LBB11_76
# BB#19:
	movl	24(%esp), %ecx          # 4-byte Reload
	movl	40(%esp), %edx          # 4-byte Reload
	leal	(%edx,%ecx), %ecx
	movl	48(%esp), %edx          # 4-byte Reload
	leal	5(%eax,%edx), %edx
	cmpl	%ecx, %edx
	jbe	.LBB11_76
# BB#20:
	movl	48(%esp), %ecx          # 4-byte Reload
	leal	-1(%eax,%ecx), %ecx
	cmpl	$8, %ecx
	ja	.LBB11_76
# BB#21:
	movl	24(%esp), %edx          # 4-byte Reload
	movl	40(%esp), %edi          # 4-byte Reload
	leal	-1(%edi,%edx), %edx
	cmpl	$8, %edx
	ja	.LBB11_76
# BB#22:                                # %_ZNK10game_state3getEjj.exit86
	leal	(%ecx,%ecx,8), %ecx
	addl	72(%esp), %ecx
	movzbl	1(%edx,%ecx), %ecx
	cmpl	$3, %ecx
	jne	.LBB11_76
# BB#23:
	leal	(%eax,%esi), %ebx
	shrl	%ebx
	movl	48(%esp), %ecx          # 4-byte Reload
	leal	(%ebx,%ecx), %ecx
	movl	20(%esp), %edx          # 4-byte Reload
	movl	40(%esp), %edi          # 4-byte Reload
	leal	(%edi,%edx), %ebp
	shrl	%ebp
	movl	24(%esp), %edx          # 4-byte Reload
	leal	5(%ebp,%edx), %edx
	cmpl	%ecx, %edx
	jbe	.LBB11_76
# BB#24:
	movl	24(%esp), %ecx          # 4-byte Reload
	leal	(%ebp,%ecx), %ecx
	movl	48(%esp), %edx          # 4-byte Reload
	leal	5(%ebx,%edx), %edx
	cmpl	%ecx, %edx
	jbe	.LBB11_76
# BB#25:
	movl	48(%esp), %ecx          # 4-byte Reload
	leal	-1(%ebx,%ecx), %ecx
	cmpl	$8, %ecx
	ja	.LBB11_76
# BB#26:
	movl	24(%esp), %edx          # 4-byte Reload
	leal	-1(%ebp,%edx), %edx
	cmpl	$8, %edx
	ja	.LBB11_76
# BB#27:                                # %_ZNK10game_state3getEjj.exit80
	leal	(%ecx,%ecx,8), %ecx
	addl	72(%esp), %ecx
	movzbl	1(%edx,%ecx), %ecx
	cmpl	$3, %ecx
	jne	.LBB11_76
# BB#28:
	movl	20(%esp), %edi          # 4-byte Reload
	leal	5(%edi), %ecx
	movb	$4, %dl
	cmpl	%esi, %ecx
	jbe	.LBB11_33
# BB#29:
	leal	5(%esi), %ecx
	cmpl	%edi, %ecx
	movl	%edi, %ecx
	jbe	.LBB11_33
# BB#30:
	decl	%esi
	cmpl	$8, %esi
	ja	.LBB11_33
# BB#31:
	movl	%ecx, %edi
	decl	%edi
	cmpl	$8, %edi
	ja	.LBB11_33
# BB#32:
	leal	(%esi,%esi,8), %ecx
	addl	72(%esp), %ecx
	movb	1(%edi,%ecx), %dl
.LBB11_33:                              # %_ZNK10game_state3getEjj.exit74
	movl	72(%esp), %ecx
	movzbl	(%ecx), %esi
	movzbl	%dl, %ecx
	cmpl	%esi, %ecx
	jne	.LBB11_76
# BB#34:
	movl	40(%esp), %edx          # 4-byte Reload
	leal	5(%edx), %esi
	movb	$4, %dl
	cmpl	%eax, %esi
	jbe	.LBB11_39
# BB#35:
	leal	5(%eax), %esi
	cmpl	40(%esp), %esi          # 4-byte Folded Reload
	jbe	.LBB11_39
# BB#36:
	decl	%eax
	cmpl	$8, %eax
	ja	.LBB11_39
# BB#37:
	movl	40(%esp), %esi          # 4-byte Reload
	decl	%esi
	cmpl	$8, %esi
	ja	.LBB11_39
# BB#38:
	leal	(%eax,%eax,8), %eax
	addl	72(%esp), %eax
	movb	1(%esi,%eax), %dl
.LBB11_39:                              # %_ZNK10game_state3getEjj.exit68
	movzbl	%dl, %eax
	cmpl	%ecx, %eax
	jne	.LBB11_76
# BB#40:
	leal	5(%ebp), %edx
	movb	$4, %al
	cmpl	%ebx, %edx
	jbe	.LBB11_45
# BB#41:
	leal	5(%ebx), %edx
	cmpl	%ebp, %edx
	jbe	.LBB11_45
# BB#42:
	decl	%ebx
	cmpl	$8, %ebx
	ja	.LBB11_45
# BB#43:
	decl	%ebp
	cmpl	$8, %ebp
	ja	.LBB11_45
# BB#44:
	leal	(%ebx,%ebx,8), %eax
	movl	72(%esp), %edx
	addl	%eax, %edx
	movb	1(%ebp,%edx), %al
.LBB11_45:                              # %_ZNK10game_state3getEjj.exit62
	movzbl	%al, %edx
	movb	$1, %al
	cmpl	%ecx, %edx
	jne	.LBB11_76
	jmp	.LBB11_77
.LBB11_46:
	movl	20(%esp), %edx          # 4-byte Reload
	leal	-1(%edx), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	leal	5(%edx), %ecx
	movb	$4, %al
	cmpl	%esi, %ecx
	jbe	.LBB11_47
# BB#48:
	leal	5(%esi), %ecx
	cmpl	%edx, %ecx
	movl	%edx, %edi
	jbe	.LBB11_52
# BB#49:
	leal	-1(%esi), %ecx
	cmpl	$8, %ecx
	ja	.LBB11_52
# BB#50:
	cmpl	$8, 32(%esp)            # 4-byte Folded Reload
	ja	.LBB11_52
# BB#51:
	leal	(%ecx,%ecx,8), %eax
	addl	72(%esp), %eax
	movl	32(%esp), %ecx          # 4-byte Reload
	movb	1(%ecx,%eax), %al
	jmp	.LBB11_52
.LBB11_47:
	movl	%edx, %edi
.LBB11_52:                              # %_ZNK10game_state3getEjj.exit56
	movl	72(%esp), %ecx
	movzbl	(%ecx), %ecx
	movzbl	%al, %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	cmpl	%ecx, %eax
	jne	.LBB11_76
# BB#53:                                # %.preheader.preheader
	leal	(%esi,%esi,8), %eax
	movl	72(%esp), %ecx
	leal	-9(%ecx,%eax), %edx
	leal	(%ebp,%ebp,8), %ecx
	movl	44(%esp), %ebx          # 4-byte Reload
	addl	%ecx, %ebx
	movl	%edi, %ebp
	subl	%ebp, %ebx
	subl	%eax, %ebx
	movl	%ebx, 44(%esp)          # 4-byte Spill
	xorl	%edi, %edi
	movl	$0, 12(%esp)            # 4-byte Folded Spill
	jmp	.LBB11_54
	.align	16, 0x90
.LBB11_57:                              #   in Loop: Header=BB11_54 Depth=1
	incl	12(%esp)                # 4-byte Folded Spill
	movl	%ebx, %esi
	addl	48(%esp), %esi          # 4-byte Folded Reload
	addl	44(%esp), %edx          # 4-byte Folded Reload
	addl	40(%esp), %edi          # 4-byte Folded Reload
.LBB11_54:                              # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	leal	(%ebp,%edi), %ebx
	movl	%ebx, 36(%esp)          # 4-byte Spill
	leal	-1(%esi), %eax
	movl	%eax, 8(%esp)           # 4-byte Spill
	cmpl	$9, %eax
	sbbb	%al, %al
	movl	32(%esp), %ecx          # 4-byte Reload
	leal	(%ecx,%edi), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	cmpl	$9, %ecx
	sbbb	%ah, %ah
	leal	5(%esi), %ecx
	cmpl	%ecx, %ebx
	sbbb	%cl, %cl
	andb	%al, %cl
	movl	%esi, %ebx
	movl	%ebp, %esi
	leal	5(%esi,%edi), %ebp
	cmpl	%ebp, %ebx
	movl	%esi, %ebp
	sbbb	%al, %al
	andb	%cl, %al
	andb	%ah, %al
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$1, %ecx
	movb	$4, %ah
	jne	.LBB11_56
# BB#55:                                #   in Loop: Header=BB11_54 Depth=1
	movb	(%ebp,%edx), %ah
.LBB11_56:                              # %_ZNK10game_state3getEjj.exit50
                                        #   in Loop: Header=BB11_54 Depth=1
	movzbl	%ah, %ecx
	cmpl	28(%esp), %ecx          # 4-byte Folded Reload
	je	.LBB11_57
# BB#58:
	movl	12(%esp), %ebp          # 4-byte Reload
	testl	%ebp, %ebp
	movl	16(%esp), %esi          # 4-byte Reload
	je	.LBB11_76
# BB#59:
	cmpl	$3, %ebp
	jg	.LBB11_76
# BB#60:
	cmpl	$1, 28(%esp)            # 4-byte Folded Reload
	sete	%ah
	testb	%al, %al
	je	.LBB11_61
# BB#62:                                # %_ZNK10game_state3getEjj.exit44.preheader
	incb	%ah
	movl	36(%esp), %edx          # 4-byte Reload
	decl	%edx
	leal	-1(%ebx), %edi
	movl	%ebx, 44(%esp)          # 4-byte Spill
	movzbl	%ah, %eax
	movl	%eax, (%esp)            # 4-byte Spill
	movl	%esi, %ecx
	movl	8(%esp), %ebx           # 4-byte Reload
	movb	$1, %al
	movl	%eax, 20(%esp)          # 4-byte Spill
.LBB11_63:                              # %_ZNK10game_state3getEjj.exit44
                                        # =>This Inner Loop Header: Depth=1
	leal	(%ebx,%ebx,8), %eax
	addl	72(%esp), %eax
	movzbl	1(%ecx,%eax), %eax
	cmpl	(%esp), %eax            # 4-byte Folded Reload
	jne	.LBB11_64
# BB#65:                                #   in Loop: Header=BB11_63 Depth=1
	decl	%ebp
	movl	%ebp, %ebx
	movl	40(%esp), %eax          # 4-byte Reload
	leal	6(%eax,%edx), %ebp
	movl	4(%esp), %esi           # 4-byte Reload
	leal	1(%esi,%edi), %ecx
	movl	$0, 20(%esp)            # 4-byte Folded Spill
	cmpl	%ecx, %ebp
	movl	%esi, %ecx
	leal	(%ecx,%edi), %ebp
	leal	(%eax,%edx), %esi
	jbe	.LBB11_66
# BB#67:                                #   in Loop: Header=BB11_63 Depth=1
	leal	1(%eax,%edx), %edx
	leal	6(%ecx,%edi), %ecx
	cmpl	%edx, %ecx
	jbe	.LBB11_66
# BB#68:                                #   in Loop: Header=BB11_63 Depth=1
	cmpl	$8, %ebp
	ja	.LBB11_66
# BB#69:                                #   in Loop: Header=BB11_63 Depth=1
	movl	48(%esp), %eax          # 4-byte Reload
	movl	44(%esp), %edx          # 4-byte Reload
	leal	-1(%edx,%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	addl	%eax, %edx
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	24(%esp), %eax          # 4-byte Reload
	movl	36(%esp), %edx          # 4-byte Reload
	leal	-1(%edx,%eax), %ecx
	addl	%eax, %edx
	movl	%edx, 36(%esp)          # 4-byte Spill
	cmpl	$9, %esi
	movl	%ebp, %eax
	movl	%eax, %edi
	movl	%esi, %edx
	movl	$0, 28(%esp)            # 4-byte Folded Spill
	movl	%ebx, %ebp
	movl	32(%esp), %ebx          # 4-byte Reload
	jb	.LBB11_63
	jmp	.LBB11_70
.LBB11_61:
	movb	$1, %al
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	$0, 28(%esp)            # 4-byte Folded Spill
	movl	8(%esp), %eax           # 4-byte Reload
	jmp	.LBB11_70
.LBB11_64:
	movb	$1, %al
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	%ecx, %esi
	movl	%ebx, %eax
	jmp	.LBB11_70
.LBB11_66:
	movl	$0, 28(%esp)            # 4-byte Folded Spill
	movl	%ebp, %eax
	movl	%ebx, %ebp
.LBB11_70:                              # %_ZNK10game_state3getEjj.exit44.thread
	movl	28(%esp), %ecx          # 4-byte Reload
	testl	%ebp, %ebp
	jle	.LBB11_76
# BB#71:
	testb	%cl, %cl
	je	.LBB11_72
# BB#73:                                # %_ZNK10game_state3getEjj.exit38
	leal	(%eax,%eax,8), %eax
	movl	72(%esp), %ecx
	addl	%eax, %ecx
	movzbl	1(%esi,%ecx), %ecx
	movb	$1, %al
	cmpl	$3, %ecx
	je	.LBB11_77
# BB#74:
	movzbl	%cl, %eax
	cmpl	$4, %eax
	setne	%al
	jmp	.LBB11_75
.LBB11_72:
	xorl	%eax, %eax
.LBB11_75:                              # %_ZNK10game_state3getEjj.exit32
	movl	20(%esp), %ecx          # 4-byte Reload
	orb	%al, %cl
	movb	$1, %al
	testb	$1, %cl
	je	.LBB11_77
.LBB11_76:                              # %.thread91
	xorl	%eax, %eax
.LBB11_77:
	movzbl	%al, %eax
	addl	$52, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end11:
	.size	_Z10move_validPK10game_statePK9game_move, .Lfunc_end11-_Z10move_validPK10game_statePK9game_move

	.globl	_Z10apply_moveP10game_statePK9game_move
	.align	16, 0x90
	.type	_Z10apply_moveP10game_statePK9game_move,@function
_Z10apply_moveP10game_statePK9game_move: # @_Z10apply_moveP10game_statePK9game_move
# BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$60, %esp
	calll	.L12$pb
.L12$pb:
	popl	%ebx
.Ltmp69:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp69-.L12$pb), %ebx
	movl	84(%esp), %esi
	movl	80(%esp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	calll	_Z10move_validPK10game_statePK9game_move@PLT
	testb	%al, %al
	je	.LBB12_1
# BB#2:
	movl	20(%esi), %eax
	movl	(%esi), %edx
	movl	4(%esi), %ecx
	movl	%eax, %edi
	subl	%ecx, %edi
	movl	%edi, 48(%esp)          # 4-byte Spill
	movl	24(%esi), %ebp
	movl	%ebp, 52(%esp)          # 4-byte Spill
	movl	8(%esi), %edi
	subl	%edi, %ebp
	movl	%ebp, 36(%esp)          # 4-byte Spill
	cmpl	$1, %edx
	je	.LBB12_11
# BB#3:
	testl	%edx, %edx
	jne	.LBB12_35
# BB#4:                                 # %.preheader.preheader
	leal	(%ecx,%ecx,8), %edx
	movl	80(%esp), %esi
	leal	-9(%esi,%edx), %esi
	leal	(%eax,%eax,8), %eax
	movl	52(%esp), %ebx          # 4-byte Reload
	addl	%eax, %ebx
	movl	%edi, %ebp
	subl	%ebp, %ebx
	subl	%edx, %ebx
	movl	%ebx, 52(%esp)          # 4-byte Spill
	leal	-1(%ebp), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	movb	$3, %al
	xorl	%ebx, %ebx
	movl	36(%esp), %edi          # 4-byte Reload
	.align	16, 0x90
.LBB12_5:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	leal	5(%ebp,%ebx), %edx
	cmpl	%ecx, %edx
	jbe	.LBB12_35
# BB#6:                                 # %.preheader
                                        #   in Loop: Header=BB12_5 Depth=1
	movb	%al, 59(%esp)           # 1-byte Spill
	movl	%ecx, %eax
	movl	%ebp, %ecx
	movl	%edi, %ebp
	leal	5(%eax), %edx
	leal	(%ecx,%ebx), %edi
	cmpl	%edi, %edx
	jbe	.LBB12_35
# BB#7:                                 # %.preheader
                                        #   in Loop: Header=BB12_5 Depth=1
	leal	-1(%eax), %edx
	cmpl	$8, %edx
	movl	%ebp, %edi
	ja	.LBB12_35
# BB#8:                                 # %.preheader
                                        #   in Loop: Header=BB12_5 Depth=1
	movl	44(%esp), %edx          # 4-byte Reload
	leal	(%edx,%ebx), %edx
	cmpl	$8, %edx
	ja	.LBB12_35
# BB#9:                                 # %_ZNK10game_state3getEjj.exit50
                                        #   in Loop: Header=BB12_5 Depth=1
	movl	%ecx, %ebp
	movzbl	(%ebp,%esi), %edx
	cmpl	$4, %edx
	je	.LBB12_35
# BB#10:                                #   in Loop: Header=BB12_5 Depth=1
	movb	59(%esp), %cl           # 1-byte Reload
	movb	%cl, (%ebp,%esi)
	movl	%eax, %ecx
	addl	48(%esp), %ecx          # 4-byte Folded Reload
	addl	52(%esp), %esi          # 4-byte Folded Reload
	addl	%edi, %ebx
	movzbl	%dl, %eax
	cmpl	$3, %eax
	movb	%dl, %al
	jne	.LBB12_5
	jmp	.LBB12_35
.LBB12_1:
	xorl	%eax, %eax
	jmp	.LBB12_36
.LBB12_11:
	leal	-1(%ecx), %esi
	cmpl	$9, %esi
	sbbb	%dl, %dl
	movl	%edi, %ebp
	movl	%ebp, 40(%esp)          # 4-byte Spill
	leal	-1(%ebp), %edi
	movl	%edi, 44(%esp)          # 4-byte Spill
	cmpl	$9, %edi
	sbbb	%dh, %dh
	movb	%dh, 59(%esp)           # 1-byte Spill
	leal	5(%ecx), %edi
	cmpl	%edi, %ebp
	movl	80(%esp), %edi
	sbbb	%dh, %dh
	andb	%dl, %dh
	movb	%dh, 35(%esp)           # 1-byte Spill
	leal	5(%ebp), %edx
	cmpl	%edx, %ecx
	sbbb	%dl, %dl
	andb	35(%esp), %dl           # 1-byte Folded Reload
	andb	59(%esp), %dl           # 1-byte Folded Reload
	andb	$1, %dl
	movb	%dl, 35(%esp)           # 1-byte Spill
	movb	$4, 59(%esp)            # 1-byte Folded Spill
	movzbl	%dl, %edx
	cmpl	$1, %edx
	jne	.LBB12_13
# BB#12:
	leal	(%esi,%esi,8), %edx
	addl	%edi, %edx
	movl	44(%esp), %ebp          # 4-byte Reload
	movb	1(%ebp,%edx), %dl
	movb	%dl, 59(%esp)           # 1-byte Spill
.LBB12_13:                              # %_ZNK10game_state3getEjj.exit
	movl	%esi, 24(%esp)          # 4-byte Spill
	movl	%ebx, 20(%esp)          # 4-byte Spill
	movl	52(%esp), %esi          # 4-byte Reload
	leal	5(%esi), %edx
	cmpl	%eax, %edx
	jbe	.LBB12_37
# BB#14:                                # %_ZNK10game_state3getEjj.exit
	leal	5(%eax), %edx
	cmpl	%esi, %edx
	jbe	.LBB12_37
# BB#15:                                # %_ZNK10game_state3getEjj.exit
	decl	%eax
	cmpl	$8, %eax
	ja	.LBB12_37
# BB#16:                                # %_ZNK10game_state3getEjj.exit
	decl	%esi
	cmpl	$9, %esi
	jae	.LBB12_37
# BB#17:                                # %_ZN10game_state3setEjj9FieldType.exit13
	leal	(%eax,%eax,8), %eax
	addl	%edi, %eax
	movb	59(%esp), %dl           # 1-byte Reload
	movb	%dl, 1(%esi,%eax)
	movl	84(%esp), %eax
	movl	12(%eax), %edi
	movl	16(%eax), %esi
	movl	48(%esp), %ebp          # 4-byte Reload
	leal	(%edi,%ebp), %eax
	movl	36(%esp), %ebx          # 4-byte Reload
	leal	5(%esi,%ebx), %edx
	cmpl	%eax, %edx
	jbe	.LBB12_37
# BB#18:                                # %_ZN10game_state3setEjj9FieldType.exit13
	leal	(%esi,%ebx), %eax
	leal	5(%edi,%ebp), %edx
	cmpl	%eax, %edx
	jbe	.LBB12_37
# BB#19:                                # %_ZN10game_state3setEjj9FieldType.exit13
	leal	-1(%edi,%ebp), %eax
	cmpl	$8, %eax
	ja	.LBB12_37
# BB#20:                                # %_ZN10game_state3setEjj9FieldType.exit13
	leal	-1(%esi,%ebx), %edx
	movl	%edx, 52(%esp)          # 4-byte Spill
	cmpl	$9, %edx
	jae	.LBB12_37
# BB#21:                                # %_ZN10game_state3setEjj9FieldType.exit19
	leal	(%eax,%eax,8), %eax
	addl	80(%esp), %eax
	movb	59(%esp), %dl           # 1-byte Reload
	movl	%esi, 28(%esp)          # 4-byte Spill
	movl	52(%esp), %esi          # 4-byte Reload
	movb	%dl, 1(%esi,%eax)
	movl	28(%esp), %esi          # 4-byte Reload
	addl	%edi, %ecx
	shrl	%ecx
	leal	(%ecx,%ebp), %eax
	movl	40(%esp), %edx          # 4-byte Reload
	addl	%esi, %edx
	shrl	%edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	leal	5(%edx,%ebx), %edx
	cmpl	%eax, %edx
	jbe	.LBB12_37
# BB#22:                                # %_ZN10game_state3setEjj9FieldType.exit19
	movl	40(%esp), %eax          # 4-byte Reload
	leal	(%eax,%ebx), %eax
	leal	5(%ecx,%ebp), %edx
	cmpl	%eax, %edx
	jbe	.LBB12_37
# BB#23:                                # %_ZN10game_state3setEjj9FieldType.exit19
	leal	-1(%ecx,%ebp), %eax
	cmpl	$8, %eax
	ja	.LBB12_37
# BB#24:                                # %_ZN10game_state3setEjj9FieldType.exit19
	movl	40(%esp), %edx          # 4-byte Reload
	leal	-1(%edx,%ebx), %edx
	cmpl	$9, %edx
	jae	.LBB12_37
# BB#25:                                # %_ZN10game_state3setEjj9FieldType.exit25
	leal	(%eax,%eax,8), %eax
	movl	80(%esp), %ebx
	movl	%ebx, %ebp
	addl	%ebp, %eax
	movb	59(%esp), %bl           # 1-byte Reload
	movb	%bl, 1(%edx,%eax)
	cmpb	$0, 35(%esp)            # 1-byte Folded Reload
	je	.LBB12_37
# BB#26:                                # %_ZN10game_state3setEjj9FieldType.exit31
	movl	24(%esp), %eax          # 4-byte Reload
	leal	(%eax,%eax,8), %eax
	addl	%ebp, %eax
	movl	%ebp, %edx
	movl	44(%esp), %ebx          # 4-byte Reload
	movb	$3, 1(%ebx,%eax)
	leal	5(%esi), %eax
	cmpl	%edi, %eax
	jbe	.LBB12_37
# BB#27:                                # %_ZN10game_state3setEjj9FieldType.exit31
	leal	5(%edi), %eax
	cmpl	%esi, %eax
	jbe	.LBB12_37
# BB#28:                                # %_ZN10game_state3setEjj9FieldType.exit31
	decl	%edi
	cmpl	$8, %edi
	ja	.LBB12_37
# BB#29:                                # %_ZN10game_state3setEjj9FieldType.exit31
	decl	%esi
	cmpl	$9, %esi
	jae	.LBB12_37
# BB#30:                                # %_ZN10game_state3setEjj9FieldType.exit37
	leal	(%edi,%edi,8), %eax
	addl	%edx, %eax
	movb	$3, 1(%esi,%eax)
	movl	40(%esp), %esi          # 4-byte Reload
	leal	5(%esi), %eax
	cmpl	%ecx, %eax
	jbe	.LBB12_37
# BB#31:                                # %_ZN10game_state3setEjj9FieldType.exit37
	leal	5(%ecx), %eax
	cmpl	%esi, %eax
	jbe	.LBB12_37
# BB#32:                                # %_ZN10game_state3setEjj9FieldType.exit37
	decl	%ecx
	cmpl	$8, %ecx
	ja	.LBB12_37
# BB#33:                                # %_ZN10game_state3setEjj9FieldType.exit37
	decl	%esi
	cmpl	$9, %esi
	jae	.LBB12_37
# BB#34:                                # %_ZN10game_state3setEjj9FieldType.exit43
	leal	(%ecx,%ecx,8), %eax
	addl	%eax, %edx
	movb	$3, 1(%esi,%edx)
.LBB12_35:
	movb	$1, %al
.LBB12_36:                              # %.thread
	movzbl	%al, %eax
	addl	$60, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.LBB12_37:                              # %_ZL15check_valid_posjj.exit.thread.i12
	movl	20(%esp), %ebx          # 4-byte Reload
	leal	.L__PRETTY_FUNCTION__._ZN10game_state3setEjj9FieldType@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.50@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$127, 8(%esp)
	calll	__assert_fail@PLT
.Lfunc_end12:
	.size	_Z10apply_moveP10game_statePK9game_move, .Lfunc_end12-_Z10apply_moveP10game_statePK9game_move

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushl	%ebp
.Ltmp70:
	.cfi_def_cfa_offset 8
	pushl	%ebx
.Ltmp71:
	.cfi_def_cfa_offset 12
	pushl	%edi
.Ltmp72:
	.cfi_def_cfa_offset 16
	pushl	%esi
.Ltmp73:
	.cfi_def_cfa_offset 20
	subl	$524, %esp              # imm = 0x20C
.Ltmp74:
	.cfi_def_cfa_offset 544
.Ltmp75:
	.cfi_offset %esi, -20
.Ltmp76:
	.cfi_offset %edi, -16
.Ltmp77:
	.cfi_offset %ebx, -12
.Ltmp78:
	.cfi_offset %ebp, -8
	calll	.L13$pb
.Ltmp79:
	.cfi_adjust_cfa_offset 4
.L13$pb:
	popl	%ebx
.Ltmp80:
	.cfi_adjust_cfa_offset -4
.Ltmp81:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp81-.L13$pb), %ebx
	movl	544(%esp), %ebp
	leal	.L.str.12@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
	leal	.L.str.11@GOTOFF(%ebx), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	leal	.L.str.13@GOTOFF(%ebx), %esi
	movl	optarg@GOT(%ebx), %edi
	jmp	.LBB13_1
.LBB13_18:                              #   in Loop: Header=BB13_1 Depth=1
	movl	(%edi), %eax
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	calll	strtoul@PLT
	shll	$20, %eax
	movl	%eax, _ZL9mem_limit@GOTOFF+4(%ebx)
	.align	16, 0x90
.LBB13_1:                               # %.backedge
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, 8(%esp)
	movl	548(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	calll	getopt@PLT
	cmpl	$99, %eax
	jle	.LBB13_2
# BB#9:                                 # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$114, %eax
	jg	.LBB13_14
# BB#10:                                # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$100, %eax
	je	.LBB13_74
# BB#11:                                # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$109, %eax
	jne	.LBB13_12
# BB#17:                                #   in Loop: Header=BB13_1 Depth=1
	movl	(%edi), %eax
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	calll	strtoul@PLT
	shll	$20, %eax
	movl	%eax, _ZL9mem_limit@GOTOFF(%ebx)
	jmp	.LBB13_1
	.align	16, 0x90
.LBB13_2:                               # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$76, %eax
	jle	.LBB13_3
# BB#6:                                 # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$77, %eax
	je	.LBB13_18
# BB#7:                                 # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$84, %eax
	jne	.LBB13_1
# BB#8:                                 #   in Loop: Header=BB13_1 Depth=1
	movl	(%edi), %eax
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	calll	strtoul@PLT
	movl	%eax, _ZL9cpu_limit@GOTOFF+4(%ebx)
	jmp	.LBB13_1
	.align	16, 0x90
.LBB13_14:                              # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$115, %eax
	je	.LBB13_19
# BB#15:                                # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$116, %eax
	jne	.LBB13_1
# BB#16:                                #   in Loop: Header=BB13_1 Depth=1
	movl	(%edi), %eax
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	calll	strtoul@PLT
	movl	%eax, _ZL9cpu_limit@GOTOFF(%ebx)
	jmp	.LBB13_1
.LBB13_3:                               # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$-1, %eax
	je	.LBB13_20
# BB#4:                                 # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$58, %eax
	je	.LBB13_13
# BB#5:                                 # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$63, %eax
	jne	.LBB13_1
	jmp	.LBB13_13
.LBB13_74:                              #   in Loop: Header=BB13_1 Depth=1
	movb	$1, _ZL5debug@GOTOFF(%ebx)
	jmp	.LBB13_1
.LBB13_19:                              #   in Loop: Header=BB13_1 Depth=1
	movl	(%edi), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	jmp	.LBB13_1
.LBB13_12:                              # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$104, %eax
	jne	.LBB13_1
	jmp	.LBB13_13
.LBB13_20:
	movl	optind@GOT(%ebx), %esi
	movl	(%esi), %eax
	addl	$2, %eax
	cmpl	%ebp, %eax
	jg	.LBB13_13
# BB#21:
	movl	$1, 344(%esp)
	leal	348(%esp), %eax
	movl	%eax, (%esp)
	calll	sigemptyset@PLT
	movl	$0, 480(%esp)
	movl	$0, 344(%esp)
	movl	$0, 476(%esp)
	leal	344(%esp), %edi
	movl	%edi, 4(%esp)
	movl	$0, 8(%esp)
	movl	$13, (%esp)
	calll	sigaction@PLT
	testl	%eax, %eax
	jne	.LBB13_75
# BB#22:
	movl	$0, 200(%esp)
	leal	204(%esp), %eax
	movl	%eax, (%esp)
	calll	sigemptyset@PLT
	movl	$0, 336(%esp)
	leal	_ZL13alarm_handleriP9siginfo_tPv@GOTOFF(%ebx), %eax
	movl	%eax, 200(%esp)
	movl	$268435460, 332(%esp)   # imm = 0x10000004
	leal	200(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$0, 8(%esp)
	movl	$14, (%esp)
	calll	sigaction@PLT
	testl	%eax, %eax
	movl	548(%esp), %ebp
	jne	.LBB13_75
# BB#23:
	movl	$0, 56(%esp)
	leal	60(%esp), %eax
	movl	%eax, (%esp)
	calll	sigemptyset@PLT
	movl	$0, 192(%esp)
	leal	_ZL13child_handleriP9siginfo_tPv@GOTOFF(%ebx), %eax
	movl	%eax, 56(%esp)
	movl	$268435460, 188(%esp)   # imm = 0x10000004
	leal	56(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$0, 8(%esp)
	movl	$17, (%esp)
	calll	sigaction@PLT
	testl	%eax, %eax
	jne	.LBB13_75
# BB#24:                                # %_ZL21setup_signal_handlersv.exit
	movl	(%esi), %eax
	movl	(%ebp,%eax,4), %ecx
	leal	_ZL6player@GOTOFF(%ebx), %edx
	calll	_ZL11fork_playerPcP6player
	testb	%al, %al
	je	.LBB13_76
# BB#25:
	movl	(%esi), %eax
	movl	4(%ebp,%eax,4), %ecx
	leal	_ZL6player@GOTOFF+16(%ebx), %edx
	calll	_ZL11fork_playerPcP6player
	testb	%al, %al
	je	.LBB13_76
# BB#26:
	movl	%edi, (%esp)
	movl	$82, 8(%esp)
	movl	$4, 4(%esp)
	calll	memset@PLT
	movl	52(%esp), %esi          # 4-byte Reload
	testl	%esi, %esi
	je	.LBB13_77
# BB#27:
	movl	%esi, (%esp)
	calll	strlen@PLT
	cmpl	$63, %eax
	jne	.LBB13_78
# BB#28:                                # %_Z16initialize_stateP10game_statePKc.exit
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	calll	_ZN10game_state5setupEPKc@PLT
	movl	%edi, (%esp)
	calll	_ZNK10game_state5printEv@PLT
	movzbl	344(%esp), %eax
	cmpl	$1, %eax
	setne	%al
	movzbl	%al, %esi
	leal	496(%esp), %ebp
	movl	$0, 24(%esp)            # 4-byte Folded Spill
.LBB13_29:                              # %.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_32 Depth 2
	movl	%edi, (%esp)
	calll	_Z14is_final_statePK10game_state@PLT
	testb	%al, %al
	jne	.LBB13_30
# BB#31:                                # %.lr.ph
                                        #   in Loop: Header=BB13_29 Depth=1
	movl	%esi, 52(%esp)          # 4-byte Spill
	movl	%esi, %eax
	orl	$1, %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	%esi, %eax
	shll	$4, %eax
	leal	_ZL6player@GOTOFF(%ebx,%eax), %edx
	movl	%edx, 48(%esp)          # 4-byte Spill
	leal	_ZL6player@GOTOFF+13(%ebx,%eax), %edx
	movl	%edx, 44(%esp)          # 4-byte Spill
	leal	_ZL6player@GOTOFF+12(%ebx,%eax), %edx
	movl	%edx, 36(%esp)          # 4-byte Spill
	leal	_ZL6player@GOTOFF+8(%ebx,%eax), %edx
	movl	%edx, 32(%esp)          # 4-byte Spill
	leal	_ZL6player@GOTOFF+4(%ebx,%eax), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	.align	16, 0x90
.LBB13_32:                              #   Parent Loop BB13_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$1, 40(%esp)            # 4-byte Folded Reload
	jne	.LBB13_79
# BB#33:                                #   in Loop: Header=BB13_32 Depth=2
	cmpl	$1, %esi
	je	.LBB13_36
# BB#34:                                #   in Loop: Header=BB13_32 Depth=2
	testl	%esi, %esi
	jne	.LBB13_37
# BB#35:                                #   in Loop: Header=BB13_32 Depth=2
	movb	$1, 344(%esp)
	jmp	.LBB13_38
	.align	16, 0x90
.LBB13_36:                              #   in Loop: Header=BB13_32 Depth=2
	movb	$2, 344(%esp)
	jmp	.LBB13_38
	.align	16, 0x90
.LBB13_37:                              #   in Loop: Header=BB13_32 Depth=2
	movb	$4, 344(%esp)
.LBB13_38:                              # %_ZN10game_state6playerEj.exit
                                        #   in Loop: Header=BB13_32 Depth=2
	movl	%ebp, (%esp)
	calll	time@PLT
	cmpl	$-1, 496(%esp)
	je	.LBB13_39
.LBB13_40:                              #   in Loop: Header=BB13_32 Depth=2
	movl	%ebp, (%esp)
	calll	localtime@PLT
	movl	%eax, %esi
	testl	%esi, %esi
	je	.LBB13_41
.LBB13_42:                              # %_ZL10getTimeStrPcj.exit
                                        #   in Loop: Header=BB13_32 Depth=2
	movl	%esi, 12(%esp)
	leal	.L.str.85@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	200(%esp), %eax
	movl	%eax, %esi
	movl	%esi, (%esp)
	movl	$64, 4(%esp)
	calll	strftime@PLT
	movl	52(%esp), %eax          # 4-byte Reload
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	leal	.L.str.15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
	leal	.L.str.16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	calll	fflush@PLT
	movl	%edi, %esi
	movl	%esi, 4(%esp)
	movl	$2, (%esp)
	calll	_Z15serialize_stateiPK10game_state@PLT
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	calll	fputc@PLT
	movl	44(%esp), %eax          # 4-byte Reload
	movb	$0, (%eax)
	movl	36(%esp), %eax          # 4-byte Reload
	movb	$0, (%eax)
	movl	48(%esp), %edi          # 4-byte Reload
	movl	%edi, _ZL14current_player@GOTOFF(%ebx)
	movl	_ZL9cpu_limit@GOTOFF(%ebx), %eax
	movl	$0, 496(%esp)
	movl	$0, 500(%esp)
	cmpl	$-1, %eax
	movl	$0, %ecx
	cmovel	%ecx, %eax
	movl	%eax, 504(%esp)
	movl	$0, 508(%esp)
	movl	%ebp, 4(%esp)
	movl	$0, 8(%esp)
	movl	$0, (%esp)
	calll	setitimer@PLT
	testl	%eax, %eax
	js	.LBB13_80
# BB#43:                                # %_ZL9arm_timerl.exit.i
                                        #   in Loop: Header=BB13_32 Depth=2
	movl	(%edi), %eax
	movl	%eax, (%esp)
	movl	$18, 4(%esp)
	calll	kill@PLT
	testl	%eax, %eax
	js	.LBB13_64
# BB#44:                                #   in Loop: Header=BB13_32 Depth=2
	movl	32(%esp), %eax          # 4-byte Reload
	movl	(%eax), %eax
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	calll	_Z15serialize_stateiPK10game_state@PLT
	movl	44(%esp), %eax          # 4-byte Reload
	cmpb	$0, (%eax)
	jne	.LBB13_63
# BB#45:                                #   in Loop: Header=BB13_32 Depth=2
	movl	%esi, %edi
	movl	28(%esp), %eax          # 4-byte Reload
	movl	(%eax), %eax
	movl	$0, 500(%esp)
	movl	$0, 496(%esp)
	movl	$0, 504(%esp)
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	movl	$10, 8(%esp)
	calll	read@PLT
	movl	%eax, %esi
	movl	%esi, 8(%esp)
	movl	%ebp, 4(%esp)
	leal	.L.str.5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
	testl	%esi, %esi
	je	.LBB13_46
# BB#47:                                #   in Loop: Header=BB13_32 Depth=2
	cmpl	$6, %esi
	je	.LBB13_50
# BB#48:                                #   in Loop: Header=BB13_32 Depth=2
	cmpl	$9, %esi
	jne	.LBB13_49
.LBB13_50:                              #   in Loop: Header=BB13_32 Depth=2
	movl	%ebp, (%esp)
	calll	strlen@PLT
	cmpl	$5, %eax
	movl	%edi, %esi
	je	.LBB13_53
# BB#51:                                #   in Loop: Header=BB13_32 Depth=2
	cmpl	$8, %eax
	jne	.LBB13_52
.LBB13_53:                              #   in Loop: Header=BB13_32 Depth=2
	movl	%ebp, 4(%esp)
	leal	56(%esp), %eax
	movl	%eax, (%esp)
	calll	_ZN9game_move5setupEPKc@PLT
	jmp	.LBB13_54
.LBB13_39:                              #   in Loop: Header=BB13_32 Depth=2
	leal	.L.str.83@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	perror@PLT
	jmp	.LBB13_40
.LBB13_41:                              #   in Loop: Header=BB13_32 Depth=2
	leal	.L.str.84@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	perror@PLT
	jmp	.LBB13_42
.LBB13_49:                              #   in Loop: Header=BB13_32 Depth=2
	movl	%esi, 4(%esp)
	leal	.L.str.6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
.LBB13_46:                              #   in Loop: Header=BB13_32 Depth=2
	xorl	%eax, %eax
	movl	%edi, %esi
	jmp	.LBB13_54
.LBB13_52:                              #   in Loop: Header=BB13_32 Depth=2
	movl	%eax, 4(%esp)
	leal	.L.str.7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
	xorl	%eax, %eax
	.align	16, 0x90
.LBB13_54:                              # %_Z16deserialize_moveiP9game_move.exit.i
                                        #   in Loop: Header=BB13_32 Depth=2
	movl	48(%esp), %edi          # 4-byte Reload
	movl	44(%esp), %ecx          # 4-byte Reload
	cmpb	$0, (%ecx)
	je	.LBB13_55
.LBB13_63:                              # %_ZL11player_moveP6playerPK10game_stateP9game_move.exit
                                        #   in Loop: Header=BB13_32 Depth=2
	leal	.L.str.88@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
.LBB13_64:                              # %_ZL11player_moveP6playerPK10game_stateP9game_move.exit.thread
                                        #   in Loop: Header=BB13_32 Depth=2
	movl	%edi, 48(%esp)          # 4-byte Spill
	movl	%esi, %edi
	movzbl	_ZL5debug@GOTOFF(%ebx), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB13_68
# BB#65:                                #   in Loop: Header=BB13_32 Depth=2
	movl	52(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%esp)
	leal	.L.str.17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
.LBB13_66:                              # %.thread
                                        #   in Loop: Header=BB13_32 Depth=2
	movl	%edi, (%esp)
	calll	_Z14is_final_statePK10game_state@PLT
	testb	%al, %al
	movl	52(%esp), %esi          # 4-byte Reload
	je	.LBB13_32
	jmp	.LBB13_67
.LBB13_55:                              #   in Loop: Header=BB13_32 Depth=2
	testb	%al, %al
	je	.LBB13_64
# BB#56:                                #   in Loop: Header=BB13_32 Depth=2
	movl	(%edi), %eax
	movl	%eax, (%esp)
	movl	$19, 4(%esp)
	calll	kill@PLT
	testl	%eax, %eax
	js	.LBB13_64
# BB#57:                                #   in Loop: Header=BB13_32 Depth=2
	movl	%edi, 48(%esp)          # 4-byte Spill
	movl	%esi, %edi
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 496(%esp)
	movl	%ebp, 4(%esp)
	movl	$0, 8(%esp)
	movl	$0, (%esp)
	calll	setitimer@PLT
	testl	%eax, %eax
	js	.LBB13_80
# BB#58:                                # %_ZL9arm_timerl.exit2.i
                                        #   in Loop: Header=BB13_32 Depth=2
	movl	$0, _ZL14current_player@GOTOFF(%ebx)
	movl	$0, 488(%esp)
	movl	$0, 484(%esp)
	movw	$0, 492(%esp)
	movl	60(%esp), %ecx
	movl	_ZZNK9game_move8toStringEPcE3row@GOT(%ebx), %eax
	movb	(%eax,%ecx), %cl
	movb	%cl, 484(%esp)
	movl	64(%esp), %edx
	movl	_ZZNK9game_move8toStringEPcE4diag@GOT(%ebx), %ecx
	movb	(%ecx,%edx), %dl
	movb	%dl, 485(%esp)
	movl	$2, %edx
	cmpl	$1, 56(%esp)
	jne	.LBB13_60
# BB#59:                                #   in Loop: Header=BB13_32 Depth=2
	movb	$45, 486(%esp)
	movl	68(%esp), %edx
	movb	(%eax,%edx), %dl
	movb	%dl, 487(%esp)
	movl	72(%esp), %edx
	movb	(%ecx,%edx), %dl
	movb	%dl, 488(%esp)
	movl	$5, %edx
.LBB13_60:                              #   in Loop: Header=BB13_32 Depth=2
	movb	$44, 484(%esp,%edx)
	movl	76(%esp), %esi
	movb	(%eax,%esi), %al
	movb	%al, 485(%esp,%edx)
	movl	80(%esp), %eax
	movb	(%ecx,%eax), %al
	movb	%al, 486(%esp,%edx)
	movb	$0, 487(%esp,%edx)
	leal	484(%esp), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.87@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
	leal	56(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	calll	_Z10apply_moveP10game_statePK9game_move@PLT
	testb	%al, %al
	jne	.LBB13_69
# BB#61:                                #   in Loop: Header=BB13_32 Depth=2
	movl	52(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%esp)
	leal	.L.str.19@GOTOFF(%ebx), %esi
	movl	%esi, (%esp)
	calll	_Z5printPKcz@PLT
	movb	_ZL5debug@GOTOFF(%ebx), %al
	andb	$1, %al
	jne	.LBB13_66
	jmp	.LBB13_62
.LBB13_69:                              #   in Loop: Header=BB13_29 Depth=1
	movl	52(%esp), %esi          # 4-byte Reload
	movl	%esi, 4(%esp)
	leal	.L.str.20@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
	movl	$1, %edx
	subl	%esi, %edx
	sete	%al
	movzbl	%al, %eax
	movl	24(%esp), %ecx          # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	cmpl	$101, %ecx
	movl	%edx, %esi
	jl	.LBB13_29
	jmp	.LBB13_70
.LBB13_67:
	movl	%esi, %edx
.LBB13_70:                              # %.loopexit
	movl	%edx, %ebp
	movl	stderr@GOT(%ebx), %esi
	movl	(%esi), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	calll	fputc@PLT
	leal	.Lstr.92@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	puts@PLT
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	calll	fflush@PLT
	movl	%edi, 4(%esp)
	movl	$1, (%esp)
	calll	_Z15serialize_stateiPK10game_state@PLT
	movl	(%esi), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	calll	fputc@PLT
	movl	(%esi), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	calll	fputc@PLT
	leal	.L.str.22@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
	movl	24(%esp), %ecx          # 4-byte Reload
	cmpl	$100, %ecx
	jg	.LBB13_72
# BB#71:
	movl	$1, %eax
	subl	%ebp, %eax
	movsbl	.L.str.23@GOTOFF(%ebx,%eax), %eax
	movl	%ecx, 8(%esp)
	leal	.L.str.24@GOTOFF(%ebx), %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	jmp	.LBB13_73
.LBB13_72:
	movl	%ecx, 4(%esp)
	leal	.L.str.25@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
.LBB13_73:                              # %.preheader
	calll	_Z5printPKcz@PLT
	movl	_ZL6player@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$15, 4(%esp)
	calll	kill@PLT
	movl	_ZL6player@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$18, 4(%esp)
	calll	kill@PLT
	movl	_ZL6player@GOTOFF(%ebx), %eax
	leal	200(%esp), %ebp
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	calll	waitpid@PLT
	movl	_ZL6player@GOTOFF+16(%ebx), %eax
	movl	%eax, (%esp)
	movl	$15, 4(%esp)
	calll	kill@PLT
	movl	_ZL6player@GOTOFF+16(%ebx), %eax
	movl	%eax, (%esp)
	movl	$18, 4(%esp)
	calll	kill@PLT
	movl	_ZL6player@GOTOFF+16(%ebx), %eax
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	calll	waitpid@PLT
	xorl	%eax, %eax
	addl	$524, %esp              # imm = 0x20C
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.LBB13_30:
	movl	%esi, %edx
	jmp	.LBB13_70
.LBB13_80:
	leal	.L.str.55@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
	calll	abort@PLT
.LBB13_79:
	leal	.L__PRETTY_FUNCTION__._ZN10game_state6playerEj@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.82@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$99, 8(%esp)
	calll	__assert_fail@PLT
.LBB13_68:
	movl	52(%esp), %ecx          # 4-byte Reload
	movl	%ecx, 8(%esp)
	addl	$3, %ecx
	leal	.L.str.18@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	calll	_ZL8exit_msg11exit_reasonPKcz
.LBB13_13:                              # %.loopexit8
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.51@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$1, 8(%esp)
	movl	$527, 4(%esp)           # imm = 0x20F
	calll	fwrite@PLT
	movl	$1, (%esp)
	calll	exit@PLT
.LBB13_75:
	calll	abort@PLT
.LBB13_76:
	leal	.L.str.14@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$5, (%esp)
	calll	_ZL8exit_msg11exit_reasonPKcz
.LBB13_77:
	leal	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$80, 8(%esp)
	calll	__assert_fail@PLT
.LBB13_78:
	leal	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$81, 8(%esp)
	calll	__assert_fail@PLT
.LBB13_62:
	movl	52(%esp), %eax          # 4-byte Reload
	movl	%eax, 8(%esp)
	incl	%eax
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	calll	_ZL8exit_msg11exit_reasonPKcz
.Lfunc_end13:
	.size	main, .Lfunc_end13-main
	.cfi_endproc

	.align	16, 0x90
	.type	_ZL11fork_playerPcP6player,@function
_ZL11fork_playerPcP6player:             # @_ZL11fork_playerPcP6player
	.cfi_startproc
# BB#0:
	pushl	%ebx
.Ltmp82:
	.cfi_def_cfa_offset 8
	pushl	%edi
.Ltmp83:
	.cfi_def_cfa_offset 12
	pushl	%esi
.Ltmp84:
	.cfi_def_cfa_offset 16
	subl	$32, %esp
.Ltmp85:
	.cfi_def_cfa_offset 48
.Ltmp86:
	.cfi_offset %esi, -16
.Ltmp87:
	.cfi_offset %edi, -12
.Ltmp88:
	.cfi_offset %ebx, -8
	movl	%edx, %edi
	movl	%ecx, %esi
	calll	.L14$pb
.Ltmp89:
	.cfi_adjust_cfa_offset 4
.L14$pb:
	popl	%ebx
.Ltmp90:
	.cfi_adjust_cfa_offset -4
.Ltmp91:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp91-.L14$pb), %ebx
	leal	24(%esp), %eax
	movl	%eax, (%esp)
	calll	pipe@PLT
	testl	%eax, %eax
	je	.LBB14_2
# BB#1:
	xorl	%eax, %eax
	jmp	.LBB14_9
.LBB14_2:
	leal	16(%esp), %eax
	movl	%eax, (%esp)
	calll	pipe@PLT
	testl	%eax, %eax
	je	.LBB14_4
# BB#3:
	xorl	%eax, %eax
	jmp	.LBB14_9
.LBB14_4:
	calll	fork@PLT
	movl	%eax, (%edi)
	movl	(%edi), %eax
	cmpl	$-1, %eax
	je	.LBB14_10
# BB#5:
	cmpl	$0, (%edi)
	je	.LBB14_11
# BB#6:
	movl	(%edi), %eax
	movl	%eax, (%esp)
	movl	$19, 4(%esp)
	calll	kill@PLT
	testl	%eax, %eax
	js	.LBB14_7
# BB#8:
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	calll	close@PLT
	movl	16(%esp), %eax
	movl	%eax, (%esp)
	calll	close@PLT
	movl	24(%esp), %eax
	movl	%eax, 4(%edi)
	movl	20(%esp), %eax
	movl	%eax, 8(%edi)
	movb	$1, %al
	jmp	.LBB14_9
.LBB14_7:
	xorl	%eax, %eax
.LBB14_9:
	movzbl	%al, %eax
	addl	$32, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	retl
.LBB14_10:
	calll	abort@PLT
.LBB14_11:
	movl	24(%esp), %eax
	movl	%eax, (%esp)
	calll	close@PLT
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	calll	close@PLT
	movl	16(%esp), %eax
	movl	%eax, (%esp)
	movl	$3, 4(%esp)
	calll	dup2@PLT
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	movl	$4, 4(%esp)
	calll	dup2@PLT
	movl	$2, (%esp)
	calll	close@PLT
	movl	$2, 4(%esp)
	movl	$1, (%esp)
	calll	dup2@PLT
	leal	_ZL9cpu_limit@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	calll	setrlimit@PLT
	leal	_ZL9mem_limit@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$9, (%esp)
	calll	setrlimit@PLT
	movl	%esi, 4(%esp)
	movl	%esi, (%esp)
	movl	$0, 8(%esp)
	calll	execl@PLT
	movl	%esi, 4(%esp)
	leal	.L.str.80@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	printf@PLT
	leal	.L.str.81@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	perror@PLT
	movl	$5, (%esp)
	calll	_exit@PLT
.Lfunc_end14:
	.size	_ZL11fork_playerPcP6player, .Lfunc_end14-_ZL11fork_playerPcP6player
	.cfi_endproc

	.align	16, 0x90
	.type	_ZL8exit_msg11exit_reasonPKcz,@function
_ZL8exit_msg11exit_reasonPKcz:          # @_ZL8exit_msg11exit_reasonPKcz
# BB#0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$28, %esp
	calll	.L15$pb
.L15$pb:
	popl	%ebx
.Ltmp92:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp92-.L15$pb), %ebx
	movl	48(%esp), %esi
	movl	52(%esp), %edi
	leal	56(%esp), %eax
	movl	%eax, 24(%esp)
	movl	stderr@GOT(%ebx), %ebp
	movl	(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	.L.str@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$1, 8(%esp)
	movl	$6, 4(%esp)
	calll	fwrite@PLT
	movl	(%ebp), %eax
	movl	24(%esp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	calll	vfprintf@PLT
	movl	%esi, (%esp)
	calll	exit@PLT
.Lfunc_end15:
	.size	_ZL8exit_msg11exit_reasonPKcz, .Lfunc_end15-_ZL8exit_msg11exit_reasonPKcz

	.section	.text._ZN10game_state3setEjjc,"axG",@progbits,_ZN10game_state3setEjjc,comdat
	.weak	_ZN10game_state3setEjjc
	.align	16, 0x90
	.type	_ZN10game_state3setEjjc,@function
_ZN10game_state3setEjjc:                # @_ZN10game_state3setEjjc
# BB#0:
	pushl	%ebx
	pushl	%esi
	subl	$20, %esp
	calll	.L16$pb
.L16$pb:
	popl	%ebx
.Ltmp93:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp93-.L16$pb), %ebx
	movzbl	44(%esp), %ecx
	movl	40(%esp), %eax
	movl	36(%esp), %edx
	movl	32(%esp), %esi
	cmpl	$46, %ecx
	je	.LBB16_13
# BB#1:
	movzbl	%cl, %ecx
	cmpl	$87, %ecx
	je	.LBB16_8
# BB#2:
	cmpl	$66, %ecx
	jne	.LBB16_18
# BB#3:
	leal	5(%eax), %ecx
	cmpl	%edx, %ecx
	jbe	.LBB16_24
# BB#4:
	leal	5(%edx), %ecx
	cmpl	%eax, %ecx
	jbe	.LBB16_24
# BB#5:
	decl	%edx
	cmpl	$8, %edx
	ja	.LBB16_24
# BB#6:
	decl	%eax
	cmpl	$9, %eax
	jae	.LBB16_24
# BB#7:                                 # %_ZN10game_state3setEjj9FieldType.exit
	leal	(%edx,%edx,8), %ecx
	addl	%ecx, %esi
	movb	$1, 1(%eax,%esi)
	jmp	.LBB16_23
.LBB16_13:
	leal	5(%eax), %ecx
	cmpl	%edx, %ecx
	jbe	.LBB16_24
# BB#14:
	leal	5(%edx), %ecx
	cmpl	%eax, %ecx
	jbe	.LBB16_24
# BB#15:
	decl	%edx
	cmpl	$8, %edx
	ja	.LBB16_24
# BB#16:
	decl	%eax
	cmpl	$9, %eax
	jae	.LBB16_24
# BB#17:                                # %_ZN10game_state3setEjj9FieldType.exit12
	leal	(%edx,%edx,8), %ecx
	addl	%ecx, %esi
	movb	$3, 1(%eax,%esi)
	jmp	.LBB16_23
.LBB16_8:
	leal	5(%eax), %ecx
	cmpl	%edx, %ecx
	jbe	.LBB16_24
# BB#9:
	leal	5(%edx), %ecx
	cmpl	%eax, %ecx
	jbe	.LBB16_24
# BB#10:
	decl	%edx
	cmpl	$8, %edx
	ja	.LBB16_24
# BB#11:
	decl	%eax
	cmpl	$9, %eax
	jae	.LBB16_24
# BB#12:                                # %_ZN10game_state3setEjj9FieldType.exit6
	leal	(%edx,%edx,8), %ecx
	addl	%ecx, %esi
	movb	$2, 1(%eax,%esi)
	jmp	.LBB16_23
.LBB16_18:
	leal	5(%eax), %ecx
	cmpl	%edx, %ecx
	jbe	.LBB16_24
# BB#19:
	leal	5(%edx), %ecx
	cmpl	%eax, %ecx
	jbe	.LBB16_24
# BB#20:
	decl	%edx
	cmpl	$8, %edx
	ja	.LBB16_24
# BB#21:
	decl	%eax
	cmpl	$9, %eax
	jae	.LBB16_24
# BB#22:                                # %_ZN10game_state3setEjj9FieldType.exit18
	leal	(%edx,%edx,8), %ecx
	addl	%ecx, %esi
	movb	$4, 1(%eax,%esi)
.LBB16_23:
	addl	$20, %esp
	popl	%esi
	popl	%ebx
	retl
.LBB16_24:                              # %_ZL15check_valid_posjj.exit.thread.i
	leal	.L__PRETTY_FUNCTION__._ZN10game_state3setEjj9FieldType@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.50@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$127, 8(%esp)
	calll	__assert_fail@PLT
.Lfunc_end16:
	.size	_ZN10game_state3setEjjc, .Lfunc_end16-_ZN10game_state3setEjjc

	.text
	.align	16, 0x90
	.type	_ZL13alarm_handleriP9siginfo_tPv,@function
_ZL13alarm_handleriP9siginfo_tPv:       # @_ZL13alarm_handleriP9siginfo_tPv
# BB#0:
	pushl	%ebx
	subl	$40, %esp
	calll	.L17$pb
.L17$pb:
	popl	%ebx
.Ltmp94:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp94-.L17$pb), %ebx
	cmpl	$14, 48(%esp)
	jne	.LBB17_7
# BB#1:
	movl	_ZL14current_player@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.LBB17_8
# BB#2:
	cmpb	$0, 12(%eax)
	je	.LBB17_3
# BB#5:
	movb	$1, 13(%eax)
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	$9, 4(%esp)
	calll	kill@PLT
	jmp	.LBB17_6
.LBB17_3:
	movb	$1, 12(%eax)
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	$24, 4(%esp)
	calll	kill@PLT
	movl	_ZL9cpu_limit@GOTOFF+4(%ebx), %eax
	subl	_ZL9cpu_limit@GOTOFF(%ebx), %eax
	movl	$0, 24(%esp)
	movl	$0, 28(%esp)
	xorl	%ecx, %ecx
	cmpl	$-1, %eax
	cmovnel	%eax, %ecx
	movl	%ecx, 32(%esp)
	movl	$0, 36(%esp)
	leal	24(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$0, 8(%esp)
	movl	$0, (%esp)
	calll	setitimer@PLT
	testl	%eax, %eax
	js	.LBB17_4
.LBB17_6:
	addl	$40, %esp
	popl	%ebx
	retl
.LBB17_7:
	leal	.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.53@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.52@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$81, 8(%esp)
	calll	__assert_fail@PLT
.LBB17_8:
	leal	.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.L.str.53@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.L.str.54@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$84, 8(%esp)
	calll	__assert_fail@PLT
.LBB17_4:
	leal	.L.str.55@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
	calll	abort@PLT
.Lfunc_end17:
	.size	_ZL13alarm_handleriP9siginfo_tPv, .Lfunc_end17-_ZL13alarm_handleriP9siginfo_tPv

	.align	16, 0x90
	.type	_ZL13child_handleriP9siginfo_tPv,@function
_ZL13child_handleriP9siginfo_tPv:       # @_ZL13child_handleriP9siginfo_tPv
	.cfi_startproc
# BB#0:
	pushl	%ebx
.Ltmp95:
	.cfi_def_cfa_offset 8
	pushl	%edi
.Ltmp96:
	.cfi_def_cfa_offset 12
	pushl	%esi
.Ltmp97:
	.cfi_def_cfa_offset 16
	subl	$32, %esp
.Ltmp98:
	.cfi_def_cfa_offset 48
.Ltmp99:
	.cfi_offset %esi, -16
.Ltmp100:
	.cfi_offset %edi, -12
.Ltmp101:
	.cfi_offset %ebx, -8
	calll	.L18$pb
.Ltmp102:
	.cfi_adjust_cfa_offset 4
.L18$pb:
	popl	%ebx
.Ltmp103:
	.cfi_adjust_cfa_offset -4
.Ltmp104:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp104-.L18$pb), %ebx
	movl	52(%esp), %esi
	movl	8(%esi), %eax
	addl	$-5, %eax
	cmpl	$2, %eax
	jb	.LBB18_12
# BB#1:
	movl	20(%esi), %eax
	cmpl	$15, %eax
	je	.LBB18_9
# BB#2:
	cmpl	$11, %eax
	je	.LBB18_4
# BB#3:
	cmpl	$9, %eax
	je	.LBB18_4
# BB#10:
	movl	%eax, 4(%esp)
	leal	.L.str.60@GOTOFF(%ebx), %eax
	jmp	.LBB18_11
.LBB18_9:
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	calll	fputc@PLT
	leal	.L.str.59@GOTOFF(%ebx), %eax
.LBB18_11:
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
.LBB18_12:
	addl	$32, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	retl
.LBB18_4:
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	calll	fputc@PLT
	movl	8(%esi), %edi
	movl	20(%esi), %eax
	leal	-1(%edi), %edx
	leal	.L.str.65@GOTOFF(%ebx), %ecx
	cmpl	$3, %edx
	movl	%ecx, %edx
	ja	.LBB18_6
# BB#5:                                 # %switch.lookup.i
	movl	.Lswitch.table.93@GOTOFF-4(%ebx,%edi,4), %edx
.LBB18_6:                               # %_ZL11si_code_stri.exit
	leal	-1(%eax), %esi
	cmpl	$16, %esi
	ja	.LBB18_8
# BB#7:                                 # %switch.lookup.i4
	movl	.Lswitch.table.94@GOTOFF-4(%ebx,%eax,4), %ecx
.LBB18_8:                               # %_ZL10signal_stri.exit
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.L.str.56@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
	leal	.L.str.57@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
	movl	_ZL6player@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$15, 4(%esp)
	calll	kill@PLT
	movl	_ZL6player@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	$18, 4(%esp)
	calll	kill@PLT
	movl	_ZL6player@GOTOFF(%ebx), %eax
	leal	28(%esp), %esi
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	calll	waitpid@PLT
	movl	_ZL6player@GOTOFF+16(%ebx), %eax
	movl	%eax, (%esp)
	movl	$15, 4(%esp)
	calll	kill@PLT
	movl	_ZL6player@GOTOFF+16(%ebx), %eax
	movl	%eax, (%esp)
	movl	$18, 4(%esp)
	calll	kill@PLT
	movl	_ZL6player@GOTOFF+16(%ebx), %eax
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	movl	$0, 8(%esp)
	calll	waitpid@PLT
	leal	.L.str.58@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	calll	_Z5printPKcz@PLT
	movl	$1, (%esp)
	calll	exit@PLT
.Lfunc_end18:
	.size	_ZL13child_handleriP9siginfo_tPv, .Lfunc_end18-_ZL13child_handleriP9siginfo_tPv
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	_GLOBAL__sub_I_mcp_S.cc,@function
_GLOBAL__sub_I_mcp_S.cc:                # @_GLOBAL__sub_I_mcp_S.cc
	.cfi_startproc
# BB#0:
	pushl	%ebx
.Ltmp105:
	.cfi_def_cfa_offset 8
	pushl	%esi
.Ltmp106:
	.cfi_def_cfa_offset 12
	subl	$20, %esp
.Ltmp107:
	.cfi_def_cfa_offset 32
.Ltmp108:
	.cfi_offset %esi, -12
.Ltmp109:
	.cfi_offset %ebx, -8
	calll	.L19$pb
.Ltmp110:
	.cfi_adjust_cfa_offset 4
.L19$pb:
	popl	%ebx
.Ltmp111:
	.cfi_adjust_cfa_offset -4
.Ltmp112:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp112-.L19$pb), %ebx
	leal	_ZStL8__ioinit@GOTOFF(%ebx), %esi
	movl	%esi, (%esp)
	calll	_ZNSt8ios_base4InitC1Ev@PLT
	movl	__dso_handle@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	_ZNSt8ios_base4InitD1Ev@GOT(%ebx), %eax
	movl	%eax, (%esp)
	calll	__cxa_atexit@PLT
	addl	$20, %esp
	popl	%esi
	popl	%ebx
	retl
.Lfunc_end19:
	.size	_GLOBAL__sub_I_mcp_S.cc, .Lfunc_end19-_GLOBAL__sub_I_mcp_S.cc
	.cfi_endproc

	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"<MCP> "
	.size	.L.str, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"cnt == 64"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"./abalone.cc"
	.size	.L.str.3, 13

	.type	.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state,@object # @__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state
.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state:
	.asciz	"bool deserialize_state(int, game_state *)"
	.size	.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state, 42

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"buf[63] == '\\0'"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Read %s, len %z\n"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Invalid length of move: %i\n"
	.size	.L.str.6, 28

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Unexpected EOF in move at %i\n"
	.size	.L.str.7, 30

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"init"
	.size	.L.str.8, 5

	.type	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc,@object # @__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc
.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc:
	.asciz	"void initialize_state(game_state *, const char *)"
	.size	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc, 50

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"strlen(init) == 63"
	.size	.L.str.9, 19

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"W: %d, B: %d\n"
	.size	.L.str.10, 14

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"B:BBBBBBBBBBB..BBB.............................WWW..WWWWWWWWWWW"
	.size	.L.str.11, 64

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Master Control Program\n"
	.size	.L.str.12, 24

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"dT:t:m:M:s:h"
	.size	.L.str.13, 13

	.type	_ZL5debug,@object       # @_ZL5debug
	.local	_ZL5debug
	.comm	_ZL5debug,1,1
	.type	_ZL9cpu_limit,@object   # @_ZL9cpu_limit
	.data
	.align	4
_ZL9cpu_limit:
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.size	_ZL9cpu_limit, 8

	.type	_ZL9mem_limit,@object   # @_ZL9mem_limit
	.align	4
_ZL9mem_limit:
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.size	_ZL9mem_limit, 8

	.type	_ZL6player,@object      # @_ZL6player
	.local	_ZL6player
	.comm	_ZL6player,32,4
	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"Unable to fork players.\n"
	.size	.L.str.14, 25

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"[%s] P%u's turn.\n"
	.size	.L.str.15, 18

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"State: "
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"No move from player %d.\n"
	.size	.L.str.17, 25

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"No move from player %u.\n"
	.size	.L.str.18, 25

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Invalid move from player %u.\n"
	.size	.L.str.19, 30

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"P%u moves.\n"
	.size	.L.str.20, 12

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"End of Line.\n"
	.size	.L.str.22, 14

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"BW"
	.size	.L.str.23, 3

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%c wins after %i turns.\n"
	.size	.L.str.24, 25

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"A draw after %i turns.\n"
	.size	.L.str.25, 24

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"str"
	.size	.L.str.26, 4

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"./board.h"
	.size	.L.str.27, 10

	.type	.L__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc,@object # @__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc
.L__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc:
	.asciz	"void game_state::toString(char *) const"
	.size	.L__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc, 40

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"i == 64"
	.size	.L.str.28, 8

	.type	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc,@object # @__PRETTY_FUNCTION__._ZN10game_state5setupEPKc
.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc:
	.asciz	"void game_state::setup(const char *)"
	.size	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc, 37

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"strlen(str) == 63"
	.size	.L.str.29, 18

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"str[1] == ':'"
	.size	.L.str.30, 14

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Unknown player type in '%s'\n"
	.size	.L.str.31, 29

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"i == 63"
	.size	.L.str.32, 8

	.type	_ZZNK9game_move8toStringEPcE3row,@object # @_ZZNK9game_move8toStringEPcE3row
	.section	.rodata._ZZNK9game_move8toStringEPcE3row,"aG",@progbits,_ZZNK9game_move8toStringEPcE3row,comdat
	.weak	_ZZNK9game_move8toStringEPcE3row
_ZZNK9game_move8toStringEPcE3row:
	.asciz	"-ABCDEFGHI"
	.size	_ZZNK9game_move8toStringEPcE3row, 11

	.type	_ZZNK9game_move8toStringEPcE4diag,@object # @_ZZNK9game_move8toStringEPcE4diag
	.section	.rodata._ZZNK9game_move8toStringEPcE4diag,"aG",@progbits,_ZZNK9game_move8toStringEPcE4diag,comdat
	.weak	_ZZNK9game_move8toStringEPcE4diag
_ZZNK9game_move8toStringEPcE4diag:
	.asciz	"-123456789"
	.size	_ZZNK9game_move8toStringEPcE4diag, 11

	.type	.L.str.36,@object       # @.str.36
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.36:
	.asciz	"Invalid char in move: %c\n"
	.size	.L.str.36, 26

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"ABCDEFGHI"
	.size	.L.str.38, 10

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	" "
	.size	.L.str.39, 2

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"  "
	.size	.L.str.40, 3

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"   "
	.size	.L.str.41, 4

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	" - "
	.size	.L.str.42, 4

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"    "
	.size	.L.str.43, 5

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"/ \\ "
	.size	.L.str.44, 5

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"\\ / "
	.size	.L.str.45, 5

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"               1   2   3   4   5"
	.size	.L.str.46, 33

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"\033[31;1mB\033[0m"
	.size	.L.str.47, 13

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"\033[32;1mW\033[0m"
	.size	.L.str.48, 13

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"o"
	.size	.L.str.49, 2

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"check_valid_pos(row, diagonal)"
	.size	.L.str.50, 31

	.type	.L__PRETTY_FUNCTION__._ZN10game_state3setEjj9FieldType,@object # @__PRETTY_FUNCTION__._ZN10game_state3setEjj9FieldType
.L__PRETTY_FUNCTION__._ZN10game_state3setEjj9FieldType:
	.asciz	"void game_state::set(idx_t, idx_t, FieldType)"
	.size	.L__PRETTY_FUNCTION__._ZN10game_state3setEjj9FieldType, 46

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Usage: mcp [-s state_string] [-t soft-player-time] [-m soft-player-mem]\n           [-T hard-player-time] [-M hard-player-mem]\n           [-d]\n           [-h]\n           player1 player2\n state_string - 63 character string representing an initial field state\n                (this is the string the MCP prints before every move.)\n player-time  - CPU time per turn in seconds\n player-mem   - Memory limit per player in megabytes\n -d           - turn on debugging, program won't exit on invalid move\n -h           - Show this help\n"
	.size	.L.str.51, 528

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"signum == SIGALRM"
	.size	.L.str.52, 18

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"./mcp-shared.cc"
	.size	.L.str.53, 16

	.type	.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv,@object # @__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv
.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv:
	.asciz	"void alarm_handler(int, siginfo_t *, void *)"
	.size	.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv, 45

	.type	_ZL14current_player,@object # @_ZL14current_player
	.local	_ZL14current_player
	.comm	_ZL14current_player,4,4
	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"p"
	.size	.L.str.54, 2

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Failed to set timer.\n"
	.size	.L.str.55, 22

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Child signal: %d (%s,%s)\n"
	.size	.L.str.56, 26

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"killing the other one\n"
	.size	.L.str.57, 23

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"exiting\n"
	.size	.L.str.58, 9

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"\033[32mCHILD terminated successfully\033[0m\n"
	.size	.L.str.59, 40

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Child signal: %i!\n"
	.size	.L.str.60, 19

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"exited"
	.size	.L.str.61, 7

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"killed"
	.size	.L.str.62, 7

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"coredumped"
	.size	.L.str.63, 11

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"trapped"
	.size	.L.str.64, 8

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"unknown"
	.size	.L.str.65, 8

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"SIGHUP"
	.size	.L.str.66, 7

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"SIGINT"
	.size	.L.str.67, 7

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"SIGILL"
	.size	.L.str.68, 7

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"SIGABRT"
	.size	.L.str.69, 8

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"SIGSEGV"
	.size	.L.str.70, 8

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"SIGFPE"
	.size	.L.str.71, 7

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"SIGPIPE"
	.size	.L.str.72, 8

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"SIGKILL"
	.size	.L.str.73, 8

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"SIGTERM"
	.size	.L.str.74, 8

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"SIGALRM"
	.size	.L.str.75, 8

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"SIGUSR1"
	.size	.L.str.76, 8

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"SIGUSR2"
	.size	.L.str.77, 8

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"SIGBUS"
	.size	.L.str.78, 7

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"SIGCHLD"
	.size	.L.str.79, 8

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"EXECL '%s' FAILED\n"
	.size	.L.str.80, 19

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"execl"
	.size	.L.str.81, 6

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"( p == 0) or (p == 1)"
	.size	.L.str.82, 22

	.type	.L__PRETTY_FUNCTION__._ZN10game_state6playerEj,@object # @__PRETTY_FUNCTION__._ZN10game_state6playerEj
.L__PRETTY_FUNCTION__._ZN10game_state6playerEj:
	.asciz	"void game_state::player(idx_t)"
	.size	.L__PRETTY_FUNCTION__._ZN10game_state6playerEj, 31

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"time()"
	.size	.L.str.83, 7

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"localtime()"
	.size	.L.str.84, 12

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"%H:%M:%S"
	.size	.L.str.85, 9

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Move is: %s\n"
	.size	.L.str.87, 13

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"Player timeout!\n"
	.size	.L.str.88, 17

	.section	.init_array,"aw",@init_array
	.align	4
	.long	_GLOBAL__sub_I_mcp_S.cc
	.type	.Lstr,@object           # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"from invalid"
	.size	.Lstr, 13

	.type	.Lstr.89,@object        # @str.89
.Lstr.89:
	.asciz	"from2 invalid"
	.size	.Lstr.89, 14

	.type	.Lstr.90,@object        # @str.90
.Lstr.90:
	.asciz	"to invalid"
	.size	.Lstr.90, 11

	.type	.Lstr.91,@object        # @str.91
.Lstr.91:
	.asciz	"missing comma"
	.size	.Lstr.91, 14

	.type	.Lstr.92,@object        # @str.92
.Lstr.92:
	.asciz	"Final state:"
	.size	.Lstr.92, 13

	.type	.Lswitch.table,@object  # @switch.table
	.section	.data.rel.ro,"aw",@progbits
	.align	4
.Lswitch.table:
	.long	.L.str.47
	.long	.L.str.48
	.long	.L.str.49
	.long	.L.str.39
	.size	.Lswitch.table, 16

	.type	.Lswitch.table.93,@object # @switch.table.93
	.align	4
.Lswitch.table.93:
	.long	.L.str.61
	.long	.L.str.62
	.long	.L.str.63
	.long	.L.str.64
	.size	.Lswitch.table.93, 16

	.type	.Lswitch.table.94,@object # @switch.table.94
	.align	16
.Lswitch.table.94:
	.long	.L.str.66
	.long	.L.str.67
	.long	.L.str.65
	.long	.L.str.68
	.long	.L.str.65
	.long	.L.str.69
	.long	.L.str.78
	.long	.L.str.71
	.long	.L.str.73
	.long	.L.str.76
	.long	.L.str.70
	.long	.L.str.77
	.long	.L.str.72
	.long	.L.str.75
	.long	.L.str.74
	.long	.L.str.65
	.long	.L.str.79
	.size	.Lswitch.table.94, 68


	.ident	"clang version 3.8.1-17 (tags/RELEASE_381/final)"
	.section	".note.GNU-stack","",@progbits
#endif
#ifdef __x86_64__
	.text
	.file	"mcp-S.cc"
	.globl	_Z5printPKcz
	.align	16, 0x90
	.type	_Z5printPKcz,@function
_Z5printPKcz:                           # @_Z5printPKcz
	.cfi_startproc
# BB#0:
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	subq	$200, %rsp
.Ltmp2:
	.cfi_def_cfa_offset 224
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	testb	%al, %al
	je	.LBB0_2
# BB#1:
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB0_2:
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rsi, 8(%rsp)
	leaq	(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	224(%rsp), %rax
	movq	%rax, 184(%rsp)
	movl	$48, 180(%rsp)
	movl	$8, 176(%rsp)
	movq	stderr@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rcx
	leaq	.L.str(%rip), %rdi
	movl	$6, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movq	(%rbx), %rdi
	leaq	176(%rsp), %rdx
	movq	%r14, %rsi
	callq	vfprintf@PLT
	addq	$200, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	_Z5printPKcz, .Lfunc_end0-_Z5printPKcz
	.cfi_endproc

	.globl	_Z8print_nlv
	.align	16, 0x90
	.type	_Z8print_nlv,@function
_Z8print_nlv:                           # @_Z8print_nlv
	.cfi_startproc
# BB#0:
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	$10, %edi
	jmp	fputc@PLT               # TAILCALL
.Lfunc_end1:
	.size	_Z8print_nlv, .Lfunc_end1-_Z8print_nlv
	.cfi_endproc

	.globl	_Z15serialize_stateiPK10game_state
	.align	16, 0x90
	.type	_Z15serialize_stateiPK10game_state,@function
_Z15serialize_stateiPK10game_state:     # @_Z15serialize_stateiPK10game_state
	.cfi_startproc
# BB#0:
	pushq	%r15
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp7:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp8:
	.cfi_def_cfa_offset 40
	subq	$72, %rsp
.Ltmp9:
	.cfi_def_cfa_offset 112
.Ltmp10:
	.cfi_offset %rbx, -40
.Ltmp11:
	.cfi_offset %r12, -32
.Ltmp12:
	.cfi_offset %r14, -24
.Ltmp13:
	.cfi_offset %r15, -16
	movzbl	(%rsi), %ecx
	movb	$66, %al
	cmpl	$1, %ecx
	je	.LBB2_2
# BB#1:                                 # %select.false
	movb	$87, %al
.LBB2_2:                                # %select.end
	movb	%al, (%rsp)
	movb	$58, 1(%rsp)
	movl	$2, %ecx
	movl	$1, %r15d
	movl	$1, %r8d
	.align	16, 0x90
.LBB2_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_6 Depth 2
	leal	-4(%r15), %eax
	cmpq	$6, %r15
	cmovbl	%r8d, %eax
	movl	%eax, %r12d
	cmpl	$9, %eax
	ja	.LBB2_11
# BB#4:                                 #   in Loop: Header=BB2_3 Depth=1
	leaq	5(%r15), %r9
	cmpq	%r9, %r12
	jae	.LBB2_11
# BB#5:                                 # %.lr.ph.split.us.preheader.i
                                        #   in Loop: Header=BB2_3 Depth=1
	leaq	-1(%r15), %r10
	movslq	%ecx, %rax
	leaq	(%rsp,%rax), %r11
	movl	%eax, %r14d
	movq	$-1, %rbx
	.align	16, 0x90
.LBB2_6:                                # %.lr.ph.split.us.i
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%r12,%rbx), %rax
	leal	6(%rax), %edx
	movl	$24, %ecx
	cmpq	%r15, %rdx
	jbe	.LBB2_9
# BB#7:                                 # %.lr.ph.split.us.i
                                        #   in Loop: Header=BB2_6 Depth=2
	cmpl	$8, %eax
	ja	.LBB2_9
# BB#8:                                 #   in Loop: Header=BB2_6 Depth=2
	movl	%eax, %eax
	leaq	(%r10,%r10,8), %rcx
	addq	%rsi, %rcx
	movb	1(%rax,%rcx), %al
	decb	%al
	movzbl	%al, %ecx
	shll	$3, %ecx
.LBB2_9:                                # %_ZNK10game_state4getCEjj.exit.us.i
                                        #   in Loop: Header=BB2_6 Depth=2
	movl	$539907906, %eax        # imm = 0x202E5742
	shrl	%cl, %eax
	movb	%al, 1(%r11,%rbx)
	leaq	2(%r12,%rbx), %rax
	incq	%rbx
	leal	1(%r14,%rbx), %ecx
	cmpq	$9, %rax
	ja	.LBB2_11
# BB#10:                                # %_ZNK10game_state4getCEjj.exit.us.i
                                        #   in Loop: Header=BB2_6 Depth=2
	cmpq	%r9, %rax
	jb	.LBB2_6
.LBB2_11:                               # %.critedge.i
                                        #   in Loop: Header=BB2_3 Depth=1
	incq	%r15
	cmpq	$10, %r15
	jne	.LBB2_3
# BB#12:
	movslq	%ecx, %rax
	movb	$0, (%rsp,%rax)
	cmpl	$63, %eax
	jne	.LBB2_14
# BB#13:                                # %_ZNK10game_state8toStringEPc.exit
	leaq	(%rsp), %rsi
	movl	$64, %edx
	callq	write@PLT
	movl	$64, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB2_14:
	leaq	.L.str.28(%rip), %rdi
	leaq	.L.str.27(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc(%rip), %rcx
	movl	$176, %edx
	callq	__assert_fail@PLT
.Lfunc_end2:
	.size	_Z15serialize_stateiPK10game_state, .Lfunc_end2-_Z15serialize_stateiPK10game_state
	.cfi_endproc

	.globl	_Z17deserialize_stateiP10game_state
	.align	16, 0x90
	.type	_Z17deserialize_stateiP10game_state,@function
_Z17deserialize_stateiP10game_state:    # @_Z17deserialize_stateiP10game_state
	.cfi_startproc
# BB#0:
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 16
	subq	$64, %rsp
.Ltmp15:
	.cfi_def_cfa_offset 80
.Ltmp16:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	movaps	%xmm0, 16(%rsp)
	movaps	%xmm0, (%rsp)
	leaq	(%rsp), %rsi
	movl	$64, %edx
	callq	read@PLT
	cmpq	$64, %rax
	jne	.LBB3_3
# BB#1:
	cmpb	$0, 63(%rsp)
	jne	.LBB3_4
# BB#2:
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_ZN10game_state5setupEPKc@PLT
	movb	$1, %al
	addq	$64, %rsp
	popq	%rbx
	retq
.LBB3_3:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.3(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state(%rip), %rcx
	movl	$40, %edx
	callq	__assert_fail@PLT
.LBB3_4:
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.3(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state(%rip), %rcx
	movl	$41, %edx
	callq	__assert_fail@PLT
.Lfunc_end3:
	.size	_Z17deserialize_stateiP10game_state, .Lfunc_end3-_Z17deserialize_stateiP10game_state
	.cfi_endproc

	.section	.text._ZN10game_state5setupEPKc,"axG",@progbits,_ZN10game_state5setupEPKc,comdat
	.weak	_ZN10game_state5setupEPKc
	.align	16, 0x90
	.type	_ZN10game_state5setupEPKc,@function
_ZN10game_state5setupEPKc:              # @_ZN10game_state5setupEPKc
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp18:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp20:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp21:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp23:
	.cfi_def_cfa_offset 64
.Ltmp24:
	.cfi_offset %rbx, -56
.Ltmp25:
	.cfi_offset %r12, -48
.Ltmp26:
	.cfi_offset %r13, -40
.Ltmp27:
	.cfi_offset %r14, -32
.Ltmp28:
	.cfi_offset %r15, -24
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	testq	%r14, %r14
	je	.LBB4_17
# BB#1:
	movq	%r14, %rdi
	callq	strlen@PLT
	cmpq	$63, %rax
	jne	.LBB4_18
# BB#2:
	movzbl	1(%r14), %eax
	cmpl	$58, %eax
	jne	.LBB4_19
# BB#3:
	movsbl	(%r14), %eax
	cmpl	$87, %eax
	je	.LBB4_15
# BB#4:
	cmpl	$66, %eax
	jne	.LBB4_16
# BB#5:
	movb	$1, (%r15)
	jmp	.LBB4_6
.LBB4_15:
	movb	$2, (%r15)
.LBB4_6:                                # %.preheader
	movl	$2, %ebx
	movl	$1, %r12d
	.align	16, 0x90
.LBB4_7:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_10 Depth 2
	leal	-4(%r12), %eax
	cmpl	$6, %r12d
	movl	$1, %ebp
	cmovael	%eax, %ebp
	cmpl	$9, %ebp
	ja	.LBB4_12
# BB#8:                                 # %.preheader
                                        #   in Loop: Header=BB4_7 Depth=1
	leal	5(%r12), %r13d
	cmpl	%r13d, %ebp
	jae	.LBB4_12
# BB#9:                                 # %.lr.ph.preheader
                                        #   in Loop: Header=BB4_7 Depth=1
	movslq	%ebx, %rbx
	.align	16, 0x90
.LBB4_10:                               # %.lr.ph
                                        #   Parent Loop BB4_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%r14,%rbx), %ecx
	movq	%r15, %rdi
	movl	%r12d, %esi
	movl	%ebp, %edx
	callq	_ZN10game_state3setEjjc@PLT
	incl	%ebp
	incq	%rbx
	cmpl	$9, %ebp
	ja	.LBB4_12
# BB#11:                                # %.lr.ph
                                        #   in Loop: Header=BB4_10 Depth=2
	cmpl	%r13d, %ebp
	jb	.LBB4_10
.LBB4_12:                               # %.critedge
                                        #   in Loop: Header=BB4_7 Depth=1
	incl	%r12d
	cmpl	$10, %r12d
	jne	.LBB4_7
# BB#13:
	cmpl	$63, %ebx
	jne	.LBB4_20
# BB#14:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_17:
	leaq	.L.str.26(%rip), %rdi
	leaq	.L.str.27(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc(%rip), %rcx
	movl	$182, %edx
	callq	__assert_fail@PLT
.LBB4_18:
	leaq	.L.str.29(%rip), %rdi
	leaq	.L.str.27(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc(%rip), %rcx
	movl	$183, %edx
	callq	__assert_fail@PLT
.LBB4_19:
	leaq	.L.str.30(%rip), %rdi
	leaq	.L.str.27(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc(%rip), %rcx
	movl	$184, %edx
	callq	__assert_fail@PLT
.LBB4_16:
	leaq	.L.str.31(%rip), %rdi
	xorl	%eax, %eax
	movq	%r14, %rsi
	callq	printf@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB4_20:
	leaq	.L.str.32(%rip), %rdi
	leaq	.L.str.27(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc(%rip), %rcx
	movl	$206, %edx
	callq	__assert_fail@PLT
.Lfunc_end4:
	.size	_ZN10game_state5setupEPKc, .Lfunc_end4-_ZN10game_state5setupEPKc
	.cfi_endproc

	.text
	.globl	_Z14serialize_moveiPK9game_move
	.align	16, 0x90
	.type	_Z14serialize_moveiPK9game_move,@function
_Z14serialize_moveiPK9game_move:        # @_Z14serialize_moveiPK9game_move
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp32:
	.cfi_def_cfa_offset 48
.Ltmp33:
	.cfi_offset %rbx, -24
.Ltmp34:
	.cfi_offset %rbp, -16
	movl	%edi, %ebp
	movl	4(%rsi), %ecx
	movq	_ZZNK9game_move8toStringEPcE3row@GOTPCREL(%rip), %rax
	movb	(%rax,%rcx), %cl
	movb	%cl, 14(%rsp)
	movl	8(%rsi), %edx
	movq	_ZZNK9game_move8toStringEPcE4diag@GOTPCREL(%rip), %rcx
	movb	(%rcx,%rdx), %dl
	movb	%dl, 15(%rsp)
	movl	$2, %edx
	cmpl	$1, (%rsi)
	jne	.LBB5_2
# BB#1:
	movb	$45, 16(%rsp)
	movl	12(%rsi), %edx
	movb	(%rax,%rdx), %dl
	movb	%dl, 17(%rsp)
	movl	16(%rsi), %edx
	movb	(%rcx,%rdx), %dl
	movb	%dl, 18(%rsp)
	movl	$5, %edx
.LBB5_2:                                # %_ZNK9game_move8toStringEPc.exit
	movl	%edx, %edx
	movb	$44, 14(%rsp,%rdx)
	movl	20(%rsi), %edi
	movb	(%rax,%rdi), %al
	movb	%al, 15(%rsp,%rdx)
	movl	24(%rsi), %eax
	movb	(%rcx,%rax), %al
	movb	%al, 16(%rsp,%rdx)
	movb	$0, 17(%rsp,%rdx)
	leaq	14(%rsp), %rbx
	movq	%rbx, %rdi
	callq	strlen@PLT
	leaq	1(%rax), %rdx
	movl	%ebp, %edi
	movq	%rbx, %rsi
	callq	write@PLT
	movb	$1, %al
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	_Z14serialize_moveiPK9game_move, .Lfunc_end5-_Z14serialize_moveiPK9game_move
	.cfi_endproc

	.globl	_Z16deserialize_moveiP9game_move
	.align	16, 0x90
	.type	_Z16deserialize_moveiP9game_move,@function
_Z16deserialize_moveiP9game_move:       # @_Z16deserialize_moveiP9game_move
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp36:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp37:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp39:
	.cfi_def_cfa_offset 64
.Ltmp40:
	.cfi_offset %rbx, -40
.Ltmp41:
	.cfi_offset %r14, -32
.Ltmp42:
	.cfi_offset %r15, -24
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movl	$0, 16(%rsp)
	movq	$0, 8(%rsp)
	leaq	8(%rsp), %r15
	movl	$10, %edx
	movq	%r15, %rsi
	callq	read@PLT
	movq	%rax, %rbx
	leaq	.L.str.5(%rip), %rdi
	xorl	%ebp, %ebp
	xorl	%eax, %eax
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	_Z5printPKcz@PLT
	testq	%rbx, %rbx
	je	.LBB6_8
# BB#1:
	cmpq	$6, %rbx
	je	.LBB6_4
# BB#2:
	cmpq	$9, %rbx
	jne	.LBB6_3
.LBB6_4:
	leaq	8(%rsp), %rdi
	callq	strlen@PLT
	movq	%rax, %rcx
	cmpq	$5, %rcx
	je	.LBB6_7
# BB#5:
	cmpq	$8, %rcx
	jne	.LBB6_6
.LBB6_7:
	leaq	8(%rsp), %rsi
	movq	%r14, %rdi
	callq	_ZN9game_move5setupEPKc@PLT
	movb	%al, %bpl
	jmp	.LBB6_8
.LBB6_3:
	leaq	.L.str.6(%rip), %rdi
	xorl	%ebp, %ebp
	xorl	%eax, %eax
	movq	%rbx, %rsi
	callq	_Z5printPKcz@PLT
	jmp	.LBB6_8
.LBB6_6:
	leaq	.L.str.7(%rip), %rdi
	xorl	%ebp, %ebp
	xorl	%eax, %eax
	movq	%rcx, %rsi
	callq	_Z5printPKcz@PLT
.LBB6_8:
	movb	%bpl, %al
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	_Z16deserialize_moveiP9game_move, .Lfunc_end6-_Z16deserialize_moveiP9game_move
	.cfi_endproc

	.section	.text._ZN9game_move5setupEPKc,"axG",@progbits,_ZN9game_move5setupEPKc,comdat
	.weak	_ZN9game_move5setupEPKc
	.align	16, 0x90
	.type	_ZN9game_move5setupEPKc,@function
_ZN9game_move5setupEPKc:                # @_ZN9game_move5setupEPKc
	.cfi_startproc
# BB#0:
	pushq	%rbx
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbx, -16
	movzbl	(%rsi), %eax
	andl	$159, %eax
	movl	%eax, 4(%rdi)
	movsbl	1(%rsi), %ecx
	leal	-48(%rcx), %edx
	movl	%edx, 8(%rdi)
	leal	-43(%rcx), %ebx
	cmpl	%eax, %ebx
	jbe	.LBB7_4
# BB#1:
	leal	5(%rax), %ebx
	cmpl	%edx, %ebx
	jbe	.LBB7_4
# BB#2:
	addl	$-49, %ecx
	cmpl	$8, %ecx
	ja	.LBB7_4
# BB#3:
	decl	%eax
	cmpl	$9, %eax
	jae	.LBB7_4
# BB#5:
	movsbl	2(%rsi), %ecx
	cmpl	$45, %ecx
	je	.LBB7_14
# BB#6:
	movzbl	%cl, %eax
	cmpl	$44, %eax
	jne	.LBB7_21
# BB#7:
	movl	$0, (%rdi)
	movl	$3, %eax
	jmp	.LBB7_8
.LBB7_4:                                # %_ZL15check_valid_posjj.exit11.thread
	leaq	.Lstr(%rip), %rdi
	jmp	.LBB7_13
.LBB7_14:
	movl	$1, (%rdi)
	movzbl	3(%rsi), %eax
	andl	$159, %eax
	movl	%eax, 12(%rdi)
	movsbl	4(%rsi), %ecx
	leal	-48(%rcx), %edx
	movl	%edx, 16(%rdi)
	leal	-43(%rcx), %ebx
	cmpl	%eax, %ebx
	jbe	.LBB7_18
# BB#15:
	leal	5(%rax), %ebx
	cmpl	%edx, %ebx
	jbe	.LBB7_18
# BB#16:
	addl	$-49, %ecx
	cmpl	$8, %ecx
	ja	.LBB7_18
# BB#17:
	decl	%eax
	cmpl	$9, %eax
	jae	.LBB7_18
# BB#19:
	movzbl	5(%rsi), %ecx
	movl	$6, %eax
	cmpl	$44, %ecx
	jne	.LBB7_20
.LBB7_8:
	movl	%eax, %ecx
	movzbl	(%rsi,%rcx), %eax
	andl	$159, %eax
	movl	%eax, 20(%rdi)
	movsbl	1(%rsi,%rcx), %ecx
	leal	-48(%rcx), %edx
	movl	%edx, 24(%rdi)
	leal	-43(%rcx), %esi
	cmpl	%eax, %esi
	jbe	.LBB7_12
# BB#9:
	leal	5(%rax), %esi
	cmpl	%edx, %esi
	jbe	.LBB7_12
# BB#10:
	addl	$-49, %ecx
	cmpl	$8, %ecx
	ja	.LBB7_12
# BB#11:
	decl	%eax
	movb	$1, %bl
	cmpl	$9, %eax
	jb	.LBB7_22
.LBB7_12:                               # %_ZL15check_valid_posjj.exit.thread
	leaq	.Lstr.90(%rip), %rdi
	jmp	.LBB7_13
.LBB7_21:
	leaq	.L.str.36(%rip), %rdi
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	movl	%ecx, %esi
	callq	printf@PLT
	jmp	.LBB7_22
.LBB7_18:                               # %_ZL15check_valid_posjj.exit7.thread
	leaq	.Lstr.89(%rip), %rdi
	jmp	.LBB7_13
.LBB7_20:
	leaq	.Lstr.91(%rip), %rdi
.LBB7_13:
	callq	puts@PLT
	xorl	%ebx, %ebx
.LBB7_22:
	movb	%bl, %al
	popq	%rbx
	retq
.Lfunc_end7:
	.size	_ZN9game_move5setupEPKc, .Lfunc_end7-_ZN9game_move5setupEPKc
	.cfi_endproc

	.text
	.globl	_Z16initialize_stateP10game_statePKc
	.align	16, 0x90
	.type	_Z16initialize_stateP10game_statePKc,@function
_Z16initialize_stateP10game_statePKc:   # @_Z16initialize_stateP10game_statePKc
	.cfi_startproc
# BB#0:
	pushq	%r14
.Ltmp46:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp48:
	.cfi_def_cfa_offset 32
.Ltmp49:
	.cfi_offset %rbx, -24
.Ltmp50:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%rbx, %rbx
	je	.LBB8_3
# BB#1:
	movq	%rbx, %rdi
	callq	strlen@PLT
	cmpq	$63, %rax
	jne	.LBB8_4
# BB#2:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_ZN10game_state5setupEPKc@PLT
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	_ZNK10game_state5printEv@PLT # TAILCALL
.LBB8_3:
	leaq	.L.str.8(%rip), %rdi
	leaq	.L.str.3(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc(%rip), %rcx
	movl	$80, %edx
	callq	__assert_fail@PLT
.LBB8_4:
	leaq	.L.str.9(%rip), %rdi
	leaq	.L.str.3(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc(%rip), %rcx
	movl	$81, %edx
	callq	__assert_fail@PLT
.Lfunc_end8:
	.size	_Z16initialize_stateP10game_statePKc, .Lfunc_end8-_Z16initialize_stateP10game_statePKc
	.cfi_endproc

	.section	.text._ZNK10game_state5printEv,"axG",@progbits,_ZNK10game_state5printEv,comdat
	.weak	_ZNK10game_state5printEv
	.align	16, 0x90
	.type	_ZNK10game_state5printEv,@function
_ZNK10game_state5printEv:               # @_ZNK10game_state5printEv
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp52:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp53:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp54:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp55:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp56:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp57:
	.cfi_def_cfa_offset 128
.Ltmp58:
	.cfi_offset %rbx, -56
.Ltmp59:
	.cfi_offset %r12, -48
.Ltmp60:
	.cfi_offset %r13, -40
.Ltmp61:
	.cfi_offset %r14, -32
.Ltmp62:
	.cfi_offset %r15, -24
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movl	$9, %r15d
	movq	_ZSt4cout@GOTPCREL(%rip), %r12
	leaq	.L.str.40(%rip), %rbx
	.align	16, 0x90
.LBB9_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_3 Depth 2
                                        #     Child Loop BB9_16 Depth 2
                                        #     Child Loop BB9_42 Depth 2
                                        #     Child Loop BB9_35 Depth 2
                                        #     Child Loop BB9_31 Depth 2
	leaq	-1(%r15), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	cltq
	leaq	.L.str.38(%rip), %rcx
	movb	(%rax,%rcx), %al
	movb	%al, 71(%rsp)
	movl	$1, %edx
	movq	%r12, %rdi
	leaq	71(%rsp), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$1, %edx
	movq	%rax, %rdi
	leaq	.L.str.39(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$5, %eax
	subl	%r15d, %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movslq	%ecx, %r14
	leal	1(%r14), %r13d
	movl	$9, %ecx
	subl	%r14d, %ecx
	cmpq	$5, %r15
	movl	$1, %eax
	cmovlel	%eax, %r13d
	movl	$9, %eax
	cmovgel	%eax, %ecx
	movl	%ecx, 64(%rsp)          # 4-byte Spill
	testl	%r14d, %r14d
	jle	.LBB9_4
# BB#2:                                 # %.lr.ph.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%r14, %rbp
	.align	16, 0x90
.LBB9_3:                                # %.lr.ph
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$2, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	decq	%rbp
	jne	.LBB9_3
.LBB9_4:                                # %._crit_edge
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$3, %edx
	movq	%r12, %rdi
	leaq	.L.str.41(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	5(%r15), %rdx
	movq	%r13, %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	%eax, %r13d
	leal	5(%rax), %ecx
	movb	$4, %al
	cmpq	%r15, %rcx
	jbe	.LBB9_5
# BB#11:                                # %._crit_edge
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%r12, %rbx
	cmpq	%r13, %rdx
	jbe	.LBB9_12
# BB#13:                                # %._crit_edge
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	%r15, 56(%rsp)          # 8-byte Spill
	movq	24(%rsp), %rcx          # 8-byte Reload
	leal	-1(%rcx), %ecx
	cmpl	$8, %ecx
	ja	.LBB9_15
# BB#14:                                #   in Loop: Header=BB9_1 Depth=1
	movl	%ecx, %eax
	movq	40(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rcx,8), %rcx
	addq	32(%rsp), %rcx          # 8-byte Folded Reload
	movb	1(%rax,%rcx), %al
	jmp	.LBB9_15
	.align	16, 0x90
.LBB9_5:                                #   in Loop: Header=BB9_1 Depth=1
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	%r12, %rbx
	movq	%r15, 56(%rsp)          # 8-byte Spill
	jmp	.LBB9_15
.LBB9_12:                               #   in Loop: Header=BB9_1 Depth=1
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	%r15, 56(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB9_15:                               # %_ZNK10game_state3getEjj.exit
                                        #   in Loop: Header=BB9_1 Depth=1
	decb	%al
	movsbq	%al, %rax
	leaq	.Lswitch.table(%rip), %rcx
	movq	(%rcx,%rax,8), %rbp
	movq	%rbp, %rdi
	callq	strlen@PLT
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	24(%rsp), %rcx          # 8-byte Reload
	leal	1(%rcx), %eax
	cmpl	64(%rsp), %eax          # 4-byte Folded Reload
	movl	%ecx, %r15d
	ja	.LBB9_21
	.align	16, 0x90
.LBB9_16:                               # %.lr.ph26.split.us
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r15d, %r12d
	movl	$3, %edx
	movq	%rbx, %rdi
	leaq	.L.str.42(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leal	1(%r12), %r15d
	leal	6(%r12), %ecx
	movb	$4, %al
	cmpq	56(%rsp), %rcx          # 8-byte Folded Reload
	jbe	.LBB9_20
# BB#17:                                # %.lr.ph26.split.us
                                        #   in Loop: Header=BB9_16 Depth=2
	cmpq	%r15, 48(%rsp)          # 8-byte Folded Reload
	jbe	.LBB9_20
# BB#18:                                # %.lr.ph26.split.us
                                        #   in Loop: Header=BB9_16 Depth=2
	cmpl	$8, %r12d
	ja	.LBB9_20
# BB#19:                                #   in Loop: Header=BB9_16 Depth=2
	movl	%r12d, %eax
	movq	40(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rcx,8), %rcx
	addq	32(%rsp), %rcx          # 8-byte Folded Reload
	movb	1(%rax,%rcx), %al
.LBB9_20:                               # %_ZNK10game_state3getEjj.exit9.us
                                        #   in Loop: Header=BB9_16 Depth=2
	decb	%al
	movsbq	%al, %rax
	leaq	.Lswitch.table(%rip), %rcx
	movq	(%rcx,%rax,8), %rbp
	movq	%rbp, %rdi
	callq	strlen@PLT
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	addl	$2, %r12d
	cmpl	64(%rsp), %r12d         # 4-byte Folded Reload
	jbe	.LBB9_16
.LBB9_21:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	56(%rsp), %rbp          # 8-byte Reload
	cmpq	$4, %rbp
	movq	%rbx, %r12
	jg	.LBB9_23
# BB#22:                                #   in Loop: Header=BB9_1 Depth=1
	movl	$3, %edx
	movq	%r12, %rdi
	leaq	.L.str.41(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$10, %esi
	subq	%r14, %rsi
	movq	%r12, %rdi
	callq	_ZNSo9_M_insertIlEERSoT_@PLT
.LBB9_23:                               #   in Loop: Header=BB9_1 Depth=1
	movq	(%r12), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %r15
	testq	%r15, %r15
	je	.LBB9_41
# BB#24:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit19
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpb	$0, 56(%r15)
	je	.LBB9_26
# BB#25:                                #   in Loop: Header=BB9_1 Depth=1
	movb	67(%r15), %al
	jmp	.LBB9_27
	.align	16, 0x90
.LBB9_26:                               #   in Loop: Header=BB9_1 Depth=1
	movq	%r15, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r15), %rax
	movl	$10, %esi
	movq	%r15, %rdi
	callq	*48(%rax)
.LBB9_27:                               # %_ZNKSt5ctypeIcE5widenEc.exit16
                                        #   in Loop: Header=BB9_1 Depth=1
	movsbl	%al, %esi
	movq	%r12, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	movl	$4, %edx
	movq	%r12, %rdi
	leaq	.L.str.43(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	leaq	.L.str.40(%rip), %r15
	jle	.LBB9_28
	.align	16, 0x90
.LBB9_42:                               # %.lr.ph28
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$2, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	decq	%r14
	jne	.LBB9_42
.LBB9_28:                               # %._crit_edge29
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpq	$5, %rbp
	jle	.LBB9_32
# BB#29:                                #   in Loop: Header=BB9_1 Depth=1
	movq	%rbp, %r14
	movl	64(%rsp), %eax          # 4-byte Reload
	movl	%eax, %ebp
	movq	24(%rsp), %rcx          # 8-byte Reload
	cmpl	%eax, %ecx
	leaq	.L.str.44(%rip), %rbx
	ja	.LBB9_36
# BB#30:                                # %.lr.ph35.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	decq	%r13
	.align	16, 0x90
.LBB9_31:                               # %.lr.ph35
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$4, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	incq	%r13
	cmpq	%rbp, %r13
	jl	.LBB9_31
	jmp	.LBB9_36
	.align	16, 0x90
.LBB9_32:                               #   in Loop: Header=BB9_1 Depth=1
	cmpq	$2, %rbp
	movq	%rbp, %r14
	leaq	.L.str.45(%rip), %rbx
	jl	.LBB9_36
# BB#33:                                #   in Loop: Header=BB9_1 Depth=1
	movl	$2, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	24(%rsp), %rax          # 8-byte Reload
	cmpl	64(%rsp), %eax          # 4-byte Folded Reload
	jae	.LBB9_36
# BB#34:                                # %.lr.ph32.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	64(%rsp), %ebp          # 4-byte Reload
	subq	%r13, %rbp
	.align	16, 0x90
.LBB9_35:                               # %.lr.ph32
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$4, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	decq	%rbp
	jne	.LBB9_35
	.align	16, 0x90
.LBB9_36:                               # %.loopexit
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	(%r12), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbp
	testq	%rbp, %rbp
	je	.LBB9_43
# BB#37:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit20
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpb	$0, 56(%rbp)
	je	.LBB9_39
# BB#38:                                #   in Loop: Header=BB9_1 Depth=1
	movq	%r15, %rbx
	movb	67(%rbp), %al
	jmp	.LBB9_40
	.align	16, 0x90
.LBB9_39:                               #   in Loop: Header=BB9_1 Depth=1
	movq	%r15, %rbx
	movq	%rbp, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbp), %rax
	movl	$10, %esi
	movq	%rbp, %rdi
	callq	*48(%rax)
.LBB9_40:                               # %_ZNKSt5ctypeIcE5widenEc.exit18
                                        #   in Loop: Header=BB9_1 Depth=1
	movsbl	%al, %esi
	movq	%r12, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	cmpq	$1, %r14
	movq	40(%rsp), %r15          # 8-byte Reload
	jg	.LBB9_1
# BB#6:
	leaq	.L.str.46(%rip), %rsi
	movl	$32, %edx
	movq	%r12, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%r12), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB9_41
# BB#7:                                 # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit
	cmpb	$0, 56(%rbx)
	je	.LBB9_9
# BB#8:
	movb	67(%rbx), %al
	jmp	.LBB9_10
.LBB9_9:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB9_10:                               # %_ZNKSt5ctypeIcE5widenEc.exit
	movsbl	%al, %esi
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_43:
	callq	_ZSt16__throw_bad_castv@PLT
.LBB9_41:
	callq	_ZSt16__throw_bad_castv@PLT
.Lfunc_end9:
	.size	_ZNK10game_state5printEv, .Lfunc_end9-_ZNK10game_state5printEv
	.cfi_endproc

	.text
	.globl	_Z14is_final_statePK10game_state
	.align	16, 0x90
	.type	_Z14is_final_statePK10game_state,@function
_Z14is_final_statePK10game_state:       # @_Z14is_final_statePK10game_state
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp65:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp66:
	.cfi_def_cfa_offset 32
.Ltmp67:
	.cfi_offset %rbx, -24
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	xorl	%esi, %esi
	movl	$9, %eax
	.align	16, 0x90
.LBB10_1:                               # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-8(%rbx,%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%esi, %ecx
	movzbl	-7(%rbx,%rax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	-6(%rbx,%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	-5(%rbx,%rax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	-4(%rbx,%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	-3(%rbx,%rax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	-2(%rbx,%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	-1(%rbx,%rax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	(%rbx,%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %esi
	addl	%edx, %esi
	addq	$9, %rax
	cmpq	$90, %rax
	jne	.LBB10_1
# BB#2:                                 # %.preheader.i44.preheader
	xorl	%edx, %edx
	movl	$9, %eax
	.align	16, 0x90
.LBB10_3:                               # %.preheader.i44
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-8(%rbx,%rax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	-7(%rbx,%rax), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	-6(%rbx,%rax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	-5(%rbx,%rax), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	-4(%rbx,%rax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	-3(%rbx,%rax), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	-2(%rbx,%rax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	-1(%rbx,%rax), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edi
	addl	%ecx, %edi
	movzbl	(%rbx,%rax), %ecx
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %edx
	addl	%edi, %edx
	addq	$9, %rax
	cmpq	$90, %rax
	jne	.LBB10_3
# BB#4:                                 # %_ZNK10game_state5countE9FieldType.exit45
	leaq	.L.str.10(%rip), %rdi
	xorl	%ebp, %ebp
	xorl	%eax, %eax
	callq	_Z5printPKcz@PLT
	movl	$9, %eax
	.align	16, 0x90
.LBB10_5:                               # %.preheader.i29
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-8(%rbx,%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%ebp, %ecx
	movzbl	-7(%rbx,%rax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	-6(%rbx,%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	-5(%rbx,%rax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	-4(%rbx,%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	-3(%rbx,%rax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	-2(%rbx,%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movzbl	-1(%rbx,%rax), %edx
	cmpl	$2, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	movzbl	(%rbx,%rax), %ecx
	cmpl	$2, %ecx
	sete	%cl
	movzbl	%cl, %ebp
	addl	%edx, %ebp
	addq	$9, %rax
	cmpq	$90, %rax
	jne	.LBB10_5
# BB#6:                                 # %_ZNK10game_state5countE9FieldType.exit30
	movb	$1, %al
	movl	$9, %ecx
	cmpl	$9, %ebp
	jb	.LBB10_10
# BB#7:
	xorl	%eax, %eax
	.align	16, 0x90
.LBB10_8:                               # %.preheader.i14
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-8(%rbx,%rcx), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%eax, %edx
	movzbl	-7(%rbx,%rcx), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%edx, %eax
	movzbl	-6(%rbx,%rcx), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%eax, %edx
	movzbl	-5(%rbx,%rcx), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%edx, %eax
	movzbl	-4(%rbx,%rcx), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%eax, %edx
	movzbl	-3(%rbx,%rcx), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%edx, %eax
	movzbl	-2(%rbx,%rcx), %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	addl	%eax, %edx
	movzbl	-1(%rbx,%rcx), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %esi
	addl	%edx, %esi
	movzbl	(%rbx,%rcx), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%esi, %eax
	addq	$9, %rcx
	cmpq	$90, %rcx
	jne	.LBB10_8
# BB#9:                                 # %_ZNK10game_state5countE9FieldType.exit15
	cmpl	$9, %eax
	setb	%al
.LBB10_10:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end10:
	.size	_Z14is_final_statePK10game_state, .Lfunc_end10-_Z14is_final_statePK10game_state
	.cfi_endproc

	.globl	_Z10move_validPK10game_statePK9game_move
	.align	16, 0x90
	.type	_Z10move_validPK10game_statePK9game_move,@function
_Z10move_validPK10game_statePK9game_move: # @_Z10move_validPK10game_statePK9game_move
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp70:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp71:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp72:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp73:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp74:
	.cfi_def_cfa_offset 56
.Ltmp75:
	.cfi_offset %rbx, -56
.Ltmp76:
	.cfi_offset %r12, -48
.Ltmp77:
	.cfi_offset %r13, -40
.Ltmp78:
	.cfi_offset %r14, -32
.Ltmp79:
	.cfi_offset %r15, -24
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	movl	20(%rsi), %ebp
	movl	4(%rsi), %r10d
	movl	%ebp, %r11d
	subl	%r10d, %r11d
	leal	1(%r11), %ecx
	xorl	%eax, %eax
	cmpl	$2, %ecx
	ja	.LBB11_78
# BB#1:
	movl	8(%rsi), %r9d
	movl	24(%rsi), %r8d
	movl	%r8d, %edi
	subl	%r9d, %edi
	leal	1(%rdi), %ecx
	cmpl	$2, %ecx
	ja	.LBB11_78
# BB#2:
	movl	%ebp, %r14d
	subl	%r10d, %r14d
	setne	%bl
	movl	%r8d, %r15d
	subl	%r9d, %r15d
	setne	%dl
	cmpl	%edi, %r11d
	sete	%r12b
	movb	%bl, %cl
	orb	%dl, %cl
	xorl	%eax, %eax
	movzbl	%cl, %ecx
	cmpl	$1, %ecx
	jne	.LBB11_78
# BB#3:
	andb	%dl, %bl
	xorb	$1, %bl
	orb	%bl, %r12b
	movq	%rdi, %r12
	je	.LBB11_78
# BB#4:
	movl	(%rsi), %eax
	testl	%eax, %eax
	je	.LBB11_46
# BB#5:
	cmpl	$1, %eax
	jne	.LBB11_77
# BB#6:
	movl	12(%rsi), %eax
	movl	%eax, %edx
	subl	%r10d, %edx
	movl	%edx, %ecx
	negl	%ecx
	cmovll	%edx, %ecx
	cmpl	$2, %ecx
	jg	.LBB11_77
# BB#7:
	movl	16(%rsi), %r14d
	movl	%r14d, %esi
	subl	%r9d, %esi
	movl	%esi, %ecx
	negl	%ecx
	cmovll	%esi, %ecx
	cmpl	$2, %ecx
	jg	.LBB11_77
# BB#8:
	cmpl	%r10d, %eax
	sete	%bl
	cmpl	%r9d, %r14d
	sete	%cl
	cmpl	%esi, %edx
	je	.LBB11_10
# BB#9:
	orb	%cl, %bl
	je	.LBB11_77
.LBB11_10:
	cmpl	%r10d, %eax
	jne	.LBB11_12
# BB#11:
	cmpl	%r9d, %r14d
	je	.LBB11_13
.LBB11_12:
	imull	%r11d, %esi
	imull	%r12d, %edx
	cmpl	%edx, %esi
	je	.LBB11_77
.LBB11_13:
	leal	5(%r8), %ecx
	cmpl	%ebp, %ecx
	jbe	.LBB11_77
# BB#14:
	leal	5(%rbp), %ecx
	cmpl	%r8d, %ecx
	jbe	.LBB11_77
# BB#15:
	decl	%ebp
	cmpl	$8, %ebp
	ja	.LBB11_77
# BB#16:
	decl	%r8d
	cmpl	$8, %r8d
	ja	.LBB11_77
# BB#17:                                # %_ZNK10game_state3getEjj.exit
	movl	%r8d, %ecx
	movl	%ebp, %edx
	leaq	(%rdx,%rdx,8), %rdx
	addq	%r13, %rdx
	movzbl	1(%rcx,%rdx), %ecx
	cmpl	$3, %ecx
	jne	.LBB11_77
# BB#18:
	leal	(%rax,%r11), %ecx
	leal	5(%r14,%r12), %edx
	cmpl	%ecx, %edx
	jbe	.LBB11_77
# BB#19:
	leal	(%r14,%r12), %ecx
	leal	5(%rax,%r11), %edx
	cmpl	%ecx, %edx
	jbe	.LBB11_77
# BB#20:
	leal	-1(%rax,%r11), %edx
	cmpl	$8, %edx
	ja	.LBB11_77
# BB#21:
	leal	-1(%r14,%r12), %ecx
	cmpl	$8, %ecx
	ja	.LBB11_77
# BB#22:                                # %_ZNK10game_state3getEjj.exit86
	movl	%ecx, %ecx
	movl	%edx, %edx
	leaq	(%rdx,%rdx,8), %rdx
	addq	%r13, %rdx
	movzbl	1(%rcx,%rdx), %ecx
	cmpl	$3, %ecx
	jne	.LBB11_77
# BB#23:
	leal	(%rax,%r10), %edx
	shrl	%edx
	leal	(%rdx,%r11), %ecx
	leal	(%r14,%r9), %esi
	shrl	%esi
	leal	5(%rsi,%r12), %edi
	cmpl	%ecx, %edi
	jbe	.LBB11_77
# BB#24:
	movl	%r12d, %ecx
	addl	%esi, %ecx
	leal	5(%rdx,%r11), %edi
	cmpl	%ecx, %edi
	jbe	.LBB11_77
# BB#25:
	leal	-1(%rdx,%r11), %edi
	cmpl	$8, %edi
	ja	.LBB11_77
# BB#26:
	leal	-1(%rsi,%r12), %ecx
	cmpl	$8, %ecx
	ja	.LBB11_77
# BB#27:                                # %_ZNK10game_state3getEjj.exit80
	movl	%ecx, %ecx
	movl	%edi, %edi
	leaq	(%rdi,%rdi,8), %rdi
	addq	%r13, %rdi
	movzbl	1(%rcx,%rdi), %ecx
	cmpl	$3, %ecx
	jne	.LBB11_77
# BB#28:
	leal	5(%r9), %ecx
	movb	$4, %bl
	cmpl	%r10d, %ecx
	jbe	.LBB11_33
# BB#29:
	leal	5(%r10), %ecx
	cmpl	%r9d, %ecx
	jbe	.LBB11_33
# BB#30:
	decl	%r10d
	cmpl	$8, %r10d
	ja	.LBB11_33
# BB#31:
	decl	%r9d
	cmpl	$8, %r9d
	ja	.LBB11_33
# BB#32:
	movl	%r9d, %ecx
	movl	%r10d, %edi
	leaq	(%rdi,%rdi,8), %rdi
	addq	%r13, %rdi
	movb	1(%rcx,%rdi), %bl
.LBB11_33:                              # %_ZNK10game_state3getEjj.exit74
	movzbl	(%r13), %ecx
	movzbl	%bl, %ebx
	cmpl	%ecx, %ebx
	jne	.LBB11_77
# BB#34:
	leal	5(%r14), %ecx
	movb	$4, %dil
	cmpl	%eax, %ecx
	jbe	.LBB11_39
# BB#35:
	leal	5(%rax), %ecx
	cmpl	%r14d, %ecx
	jbe	.LBB11_39
# BB#36:
	decl	%eax
	cmpl	$8, %eax
	ja	.LBB11_39
# BB#37:
	decl	%r14d
	cmpl	$8, %r14d
	ja	.LBB11_39
# BB#38:
	movl	%r14d, %ecx
	movl	%eax, %eax
	leaq	(%rax,%rax,8), %rax
	addq	%r13, %rax
	movb	1(%rcx,%rax), %dil
.LBB11_39:                              # %_ZNK10game_state3getEjj.exit68
	movzbl	%dil, %eax
	cmpl	%ebx, %eax
	jne	.LBB11_77
# BB#40:
	movq	%r13, %rdi
	leal	5(%rsi), %ecx
	movb	$4, %al
	cmpl	%edx, %ecx
	jbe	.LBB11_45
# BB#41:
	leal	5(%rdx), %ecx
	cmpl	%esi, %ecx
	jbe	.LBB11_45
# BB#42:
	decl	%edx
	cmpl	$8, %edx
	ja	.LBB11_45
# BB#43:
	decl	%esi
	cmpl	$8, %esi
	ja	.LBB11_45
# BB#44:
	movl	%esi, %eax
	movl	%edx, %ecx
	leaq	(%rcx,%rcx,8), %rcx
	addq	%rcx, %rdi
	movb	1(%rax,%rdi), %al
.LBB11_45:                              # %_ZNK10game_state3getEjj.exit62
	movzbl	%al, %ecx
	movb	$1, %al
	cmpl	%ebx, %ecx
	jne	.LBB11_77
	jmp	.LBB11_78
.LBB11_46:
	leal	-1(%r10), %eax
	leal	-1(%r9), %esi
	leal	5(%r9), %edx
	movb	$4, %cl
	cmpl	%r10d, %edx
	jbe	.LBB11_51
# BB#47:
	addl	$5, %r10d
	cmpl	%r9d, %r10d
	jbe	.LBB11_51
# BB#48:
	cmpl	$8, %eax
	ja	.LBB11_51
# BB#49:
	cmpl	$8, %esi
	ja	.LBB11_51
# BB#50:
	movl	%esi, %ecx
	movl	%eax, %edx
	leaq	(%rdx,%rdx,8), %rdx
	addq	%r13, %rdx
	movb	1(%rcx,%rdx), %cl
.LBB11_51:                              # %_ZNK10game_state3getEjj.exit56
	movzbl	(%r13), %edx
	movzbl	%cl, %r9d
	cmpl	%edx, %r9d
	jne	.LBB11_77
# BB#52:                                # %.preheader.preheader
	xorl	%r8d, %r8d
	jmp	.LBB11_53
	.align	16, 0x90
.LBB11_56:                              #   in Loop: Header=BB11_53 Depth=1
	incl	%r8d
	addl	%r14d, %eax
	addl	%r15d, %esi
.LBB11_53:                              # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	leal	1(%rax), %ebp
	leal	1(%rsi), %ebx
	cmpl	$9, %eax
	sbbb	%cl, %cl
	cmpl	$9, %esi
	sbbb	%dl, %dl
	andb	%cl, %dl
	leal	6(%rax), %ecx
	cmpl	%ecx, %ebx
	sbbb	%cl, %cl
	andb	%dl, %cl
	leal	6(%rsi), %edx
	cmpl	%edx, %ebp
	sbbb	%dl, %dl
	andb	%cl, %dl
	andb	$1, %dl
	movb	$4, %cl
	movzbl	%dl, %edi
	cmpl	$1, %edi
	jne	.LBB11_55
# BB#54:                                #   in Loop: Header=BB11_53 Depth=1
	movl	%esi, %ecx
	movl	%eax, %edi
	leaq	(%rdi,%rdi,8), %rdi
	addq	%r13, %rdi
	movb	1(%rcx,%rdi), %cl
.LBB11_55:                              # %_ZNK10game_state3getEjj.exit50
                                        #   in Loop: Header=BB11_53 Depth=1
	movzbl	%cl, %ecx
	cmpl	%r9d, %ecx
	je	.LBB11_56
# BB#57:
	testl	%r8d, %r8d
	je	.LBB11_77
# BB#58:
	cmpl	$3, %r8d
	jg	.LBB11_77
# BB#59:
	movq	%r13, -8(%rsp)          # 8-byte Spill
	cmpl	$1, %r9d
	sete	%r9b
	testb	%dl, %dl
	je	.LBB11_60
# BB#61:                                # %_ZNK10game_state3getEjj.exit44.preheader
	movq	%r12, %rdx
	incb	%r9b
	leal	-1(%rbx), %r13d
	leal	-1(%rbp), %r12d
	movzbl	%r9b, %ecx
	movl	%ecx, -16(%rsp)         # 4-byte Spill
	movl	%esi, %r9d
	movl	%eax, %r10d
	movb	$1, %al
	movl	%eax, -12(%rsp)         # 4-byte Spill
.LBB11_62:                              # %_ZNK10game_state3getEjj.exit44
                                        # =>This Inner Loop Header: Depth=1
	movl	%r9d, %eax
	movl	%r10d, %ecx
	leaq	(%rcx,%rcx,8), %rcx
	addq	-8(%rsp), %rcx          # 8-byte Folded Reload
	movzbl	1(%rax,%rcx), %eax
	cmpl	-16(%rsp), %eax         # 4-byte Folded Reload
	jne	.LBB11_63
# BB#64:                                #   in Loop: Header=BB11_62 Depth=1
	decl	%r8d
	leal	(%r14,%r12), %eax
	leal	(%r15,%r13), %esi
	leal	6(%r15,%r13), %ecx
	leal	1(%r14,%r12), %edi
	movl	$0, -12(%rsp)           # 4-byte Folded Spill
	cmpl	%edi, %ecx
	jbe	.LBB11_65
# BB#66:                                #   in Loop: Header=BB11_62 Depth=1
	leal	1(%r15,%r13), %ecx
	leal	6(%r14,%r12), %edi
	cmpl	%ecx, %edi
	jbe	.LBB11_67
# BB#68:                                #   in Loop: Header=BB11_62 Depth=1
	cmpl	$8, %eax
	ja	.LBB11_69
# BB#70:                                #   in Loop: Header=BB11_62 Depth=1
	leal	-1(%rbp,%r11), %r10d
	movl	%ebp, %ecx
	addl	%r11d, %ecx
	leal	-1(%rbx,%rdx), %r9d
	movl	%ebx, %edi
	addl	%edx, %edi
	cmpl	$9, %esi
	movl	%eax, %r12d
	movl	%esi, %r13d
	movl	%edi, %ebx
	movl	%ecx, %ebp
	movl	$0, %ecx
	jb	.LBB11_62
	jmp	.LBB11_71
.LBB11_60:
	movb	$1, %cl
	movl	%ecx, -12(%rsp)         # 4-byte Spill
	xorl	%ecx, %ecx
	jmp	.LBB11_71
.LBB11_63:
	movb	$1, %cl
	movl	%r9d, %esi
	movl	%r10d, %eax
	jmp	.LBB11_71
.LBB11_65:
	xorl	%ecx, %ecx
	jmp	.LBB11_71
.LBB11_67:
	xorl	%ecx, %ecx
	jmp	.LBB11_71
.LBB11_69:
	xorl	%ecx, %ecx
.LBB11_71:                              # %_ZNK10game_state3getEjj.exit44.thread
	testl	%r8d, %r8d
	movq	-8(%rsp), %rdi          # 8-byte Reload
	jle	.LBB11_77
# BB#72:
	testb	%cl, %cl
	je	.LBB11_73
# BB#74:                                # %_ZNK10game_state3getEjj.exit38
	movl	%esi, %ecx
	movl	%eax, %eax
	leaq	(%rax,%rax,8), %rax
	addq	%rax, %rdi
	movzbl	1(%rcx,%rdi), %ecx
	movb	$1, %al
	cmpl	$3, %ecx
	je	.LBB11_78
# BB#75:
	movzbl	%cl, %eax
	cmpl	$4, %eax
	setne	%al
	jmp	.LBB11_76
.LBB11_73:
	xorl	%eax, %eax
.LBB11_76:                              # %_ZNK10game_state3getEjj.exit32
	movl	-12(%rsp), %ecx         # 4-byte Reload
	orb	%al, %cl
	movb	$1, %al
	testb	$1, %cl
	je	.LBB11_78
.LBB11_77:                              # %.thread91
	xorl	%eax, %eax
.LBB11_78:
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	_Z10move_validPK10game_statePK9game_move, .Lfunc_end11-_Z10move_validPK10game_statePK9game_move
	.cfi_endproc

	.globl	_Z10apply_moveP10game_statePK9game_move
	.align	16, 0x90
	.type	_Z10apply_moveP10game_statePK9game_move,@function
_Z10apply_moveP10game_statePK9game_move: # @_Z10apply_moveP10game_statePK9game_move
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp82:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp83:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp84:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp85:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp86:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp87:
	.cfi_def_cfa_offset 64
.Ltmp88:
	.cfi_offset %rbx, -56
.Ltmp89:
	.cfi_offset %r12, -48
.Ltmp90:
	.cfi_offset %r13, -40
.Ltmp91:
	.cfi_offset %r14, -32
.Ltmp92:
	.cfi_offset %r15, -24
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	_Z10move_validPK10game_statePK9game_move@PLT
	testb	%al, %al
	je	.LBB12_1
# BB#2:
	movl	20(%rbx), %r15d
	movl	(%rbx), %edi
	movl	4(%rbx), %ecx
	movl	%r15d, %r13d
	subl	%ecx, %r13d
	movl	24(%rbx), %esi
	movl	8(%rbx), %ebp
	movl	%esi, %r12d
	subl	%ebp, %r12d
	movb	$1, %al
	cmpl	$1, %edi
	je	.LBB12_11
# BB#3:
	testl	%edi, %edi
	jne	.LBB12_35
# BB#4:                                 # %.preheader.preheader
	decl	%ecx
	addl	$5, %ebp
	movb	$3, %bl
	.align	16, 0x90
.LBB12_5:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	leal	1(%rcx), %edx
	cmpl	%edx, %ebp
	jbe	.LBB12_35
# BB#6:                                 # %.preheader
                                        #   in Loop: Header=BB12_5 Depth=1
	leal	6(%rcx), %edx
	leal	-5(%rbp), %esi
	cmpl	%esi, %edx
	jbe	.LBB12_35
# BB#7:                                 # %.preheader
                                        #   in Loop: Header=BB12_5 Depth=1
	cmpl	$8, %ecx
	ja	.LBB12_35
# BB#8:                                 # %.preheader
                                        #   in Loop: Header=BB12_5 Depth=1
	leal	-6(%rbp), %edx
	cmpl	$8, %edx
	ja	.LBB12_35
# BB#9:                                 # %_ZNK10game_state3getEjj.exit50
                                        #   in Loop: Header=BB12_5 Depth=1
	movl	%edx, %edi
	movl	%ecx, %edx
	leaq	(%rdx,%rdx,8), %rdx
	addq	%r14, %rdx
	movzbl	1(%rdi,%rdx), %esi
	cmpl	$4, %esi
	je	.LBB12_35
# BB#10:                                #   in Loop: Header=BB12_5 Depth=1
	leaq	1(%rdi,%rdx), %rdx
	movb	%bl, (%rdx)
	addl	%r13d, %ecx
	addl	%r12d, %ebp
	movzbl	%sil, %edx
	cmpl	$3, %edx
	movb	%sil, %bl
	jne	.LBB12_5
	jmp	.LBB12_35
.LBB12_1:
	xorl	%eax, %eax
	jmp	.LBB12_35
.LBB12_11:
	leal	-1(%rcx), %r8d
	cmpl	$9, %r8d
	sbbb	%dil, %dil
	leal	-1(%rbp), %r9d
	cmpl	$9, %r9d
	sbbb	%dl, %dl
	andb	%dil, %dl
	leal	5(%rcx), %edi
	cmpl	%edi, %ebp
	sbbb	%r11b, %r11b
	leal	5(%rbp), %edi
	cmpl	%edi, %ecx
	sbbb	%r10b, %r10b
	andb	%r11b, %r10b
	andb	%dl, %r10b
	andb	$1, %r10b
	movb	$4, %r11b
	movzbl	%r10b, %edx
	cmpl	$1, %edx
	jne	.LBB12_13
# BB#12:
	movl	%r9d, %edx
	movl	%r8d, %edi
	leaq	(%rdi,%rdi,8), %rdi
	addq	%r14, %rdi
	movb	1(%rdx,%rdi), %r11b
.LBB12_13:                              # %_ZNK10game_state3getEjj.exit
	leal	5(%rsi), %edx
	cmpl	%r15d, %edx
	jbe	.LBB12_36
# BB#14:                                # %_ZNK10game_state3getEjj.exit
	leal	5(%r15), %edx
	cmpl	%esi, %edx
	jbe	.LBB12_36
# BB#15:                                # %_ZNK10game_state3getEjj.exit
	decl	%r15d
	cmpl	$8, %r15d
	ja	.LBB12_36
# BB#16:                                # %_ZNK10game_state3getEjj.exit
	decl	%esi
	cmpl	$9, %esi
	jae	.LBB12_36
# BB#17:                                # %_ZN10game_state3setEjj9FieldType.exit13
	movl	%esi, %edx
	movl	%r15d, %esi
	leaq	(%rsi,%rsi,8), %rsi
	addq	%r14, %rsi
	movb	%r11b, 1(%rdx,%rsi)
	movl	12(%rbx), %r15d
	movl	16(%rbx), %ebx
	leal	(%r15,%r13), %edx
	leal	5(%rbx,%r12), %esi
	cmpl	%edx, %esi
	jbe	.LBB12_36
# BB#18:                                # %_ZN10game_state3setEjj9FieldType.exit13
	leal	(%rbx,%r12), %edx
	leal	5(%r15,%r13), %esi
	cmpl	%edx, %esi
	jbe	.LBB12_36
# BB#19:                                # %_ZN10game_state3setEjj9FieldType.exit13
	leal	-1(%r15,%r13), %esi
	cmpl	$8, %esi
	ja	.LBB12_36
# BB#20:                                # %_ZN10game_state3setEjj9FieldType.exit13
	leal	-1(%rbx,%r12), %edx
	cmpl	$9, %edx
	jae	.LBB12_36
# BB#21:                                # %_ZN10game_state3setEjj9FieldType.exit19
	movl	%edx, %edx
	movl	%esi, %esi
	leaq	(%rsi,%rsi,8), %rsi
	addq	%r14, %rsi
	movb	%r11b, 1(%rdx,%rsi)
	addl	%r15d, %ecx
	shrl	%ecx
	leal	(%rcx,%r13), %edx
	addl	%ebx, %ebp
	shrl	%ebp
	leal	5(%rbp,%r12), %esi
	cmpl	%edx, %esi
	jbe	.LBB12_36
# BB#22:                                # %_ZN10game_state3setEjj9FieldType.exit19
	movl	%r12d, %edx
	addl	%ebp, %edx
	leal	5(%rcx,%r13), %esi
	cmpl	%edx, %esi
	jbe	.LBB12_36
# BB#23:                                # %_ZN10game_state3setEjj9FieldType.exit19
	leal	-1(%rcx,%r13), %esi
	cmpl	$8, %esi
	ja	.LBB12_36
# BB#24:                                # %_ZN10game_state3setEjj9FieldType.exit19
	leal	-1(%rbp,%r12), %edx
	cmpl	$9, %edx
	jae	.LBB12_36
# BB#25:                                # %_ZN10game_state3setEjj9FieldType.exit25
	movl	%edx, %edx
	movl	%esi, %esi
	leaq	(%rsi,%rsi,8), %rsi
	addq	%r14, %rsi
	movb	%r11b, 1(%rdx,%rsi)
	testb	%r10b, %r10b
	je	.LBB12_36
# BB#26:                                # %_ZN10game_state3setEjj9FieldType.exit31
	movl	%r9d, %edx
	movl	%r8d, %esi
	leaq	(%rsi,%rsi,8), %rsi
	addq	%r14, %rsi
	movb	$3, 1(%rdx,%rsi)
	leal	5(%rbx), %edx
	cmpl	%r15d, %edx
	jbe	.LBB12_36
# BB#27:                                # %_ZN10game_state3setEjj9FieldType.exit31
	leal	5(%r15), %edx
	cmpl	%ebx, %edx
	jbe	.LBB12_36
# BB#28:                                # %_ZN10game_state3setEjj9FieldType.exit31
	decl	%r15d
	cmpl	$8, %r15d
	ja	.LBB12_36
# BB#29:                                # %_ZN10game_state3setEjj9FieldType.exit31
	decl	%ebx
	cmpl	$9, %ebx
	jae	.LBB12_36
# BB#30:                                # %_ZN10game_state3setEjj9FieldType.exit37
	movl	%ebx, %edx
	movl	%r15d, %esi
	leaq	(%rsi,%rsi,8), %rsi
	addq	%r14, %rsi
	movb	$3, 1(%rdx,%rsi)
	leal	5(%rbp), %edx
	cmpl	%ecx, %edx
	jbe	.LBB12_36
# BB#31:                                # %_ZN10game_state3setEjj9FieldType.exit37
	leal	5(%rcx), %edx
	cmpl	%ebp, %edx
	jbe	.LBB12_36
# BB#32:                                # %_ZN10game_state3setEjj9FieldType.exit37
	decl	%ecx
	cmpl	$8, %ecx
	ja	.LBB12_36
# BB#33:                                # %_ZN10game_state3setEjj9FieldType.exit37
	decl	%ebp
	cmpl	$9, %ebp
	jae	.LBB12_36
# BB#34:                                # %_ZN10game_state3setEjj9FieldType.exit43
	movl	%ebp, %edx
	movl	%ecx, %ecx
	leaq	(%rcx,%rcx,8), %rcx
	addq	%rcx, %r14
	movb	$3, 1(%rdx,%r14)
.LBB12_35:                              # %.thread
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB12_36:                              # %_ZL15check_valid_posjj.exit.thread.i12
	leaq	.L.str.50(%rip), %rdi
	leaq	.L.str.27(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN10game_state3setEjj9FieldType(%rip), %rcx
	movl	$127, %edx
	callq	__assert_fail@PLT
.Lfunc_end12:
	.size	_Z10apply_moveP10game_statePK9game_move, .Lfunc_end12-_Z10apply_moveP10game_statePK9game_move
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI13_0:
	.zero	16
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp95:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp96:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp97:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp98:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp99:
	.cfi_def_cfa_offset 56
	subq	$648, %rsp              # imm = 0x288
.Ltmp100:
	.cfi_def_cfa_offset 704
.Ltmp101:
	.cfi_offset %rbx, -56
.Ltmp102:
	.cfi_offset %r12, -48
.Ltmp103:
	.cfi_offset %r13, -40
.Ltmp104:
	.cfi_offset %r14, -32
.Ltmp105:
	.cfi_offset %r15, -24
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movl	%edi, %ebx
	leaq	.L.str.12(%rip), %rdi
	xorl	%eax, %eax
	callq	_Z5printPKcz@PLT
	leaq	.L.str.11(%rip), %r14
	leaq	.L.str.13(%rip), %r15
	movq	optarg@GOTPCREL(%rip), %r12
	jmp	.LBB13_1
.LBB13_18:                              #   in Loop: Header=BB13_1 Depth=1
	movq	(%r12), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	strtoul@PLT
	shlq	$20, %rax
	movq	%rax, _ZL9mem_limit+8(%rip)
	.align	16, 0x90
.LBB13_1:                               # %.backedge
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %edi
	movq	%rbp, %rsi
	movq	%r15, %rdx
	callq	getopt@PLT
	cmpl	$99, %eax
	jle	.LBB13_2
# BB#9:                                 # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$114, %eax
	jg	.LBB13_14
# BB#10:                                # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$100, %eax
	je	.LBB13_73
# BB#11:                                # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$109, %eax
	jne	.LBB13_12
# BB#17:                                #   in Loop: Header=BB13_1 Depth=1
	movq	(%r12), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	strtoul@PLT
	shlq	$20, %rax
	movq	%rax, _ZL9mem_limit(%rip)
	jmp	.LBB13_1
	.align	16, 0x90
.LBB13_2:                               # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$76, %eax
	jle	.LBB13_3
# BB#6:                                 # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$77, %eax
	je	.LBB13_18
# BB#7:                                 # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$84, %eax
	jne	.LBB13_1
# BB#8:                                 #   in Loop: Header=BB13_1 Depth=1
	movq	(%r12), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	strtoul@PLT
	movq	%rax, _ZL9cpu_limit+8(%rip)
	jmp	.LBB13_1
	.align	16, 0x90
.LBB13_14:                              # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$115, %eax
	je	.LBB13_19
# BB#15:                                # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$116, %eax
	jne	.LBB13_1
# BB#16:                                #   in Loop: Header=BB13_1 Depth=1
	movq	(%r12), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	strtoul@PLT
	movq	%rax, _ZL9cpu_limit(%rip)
	jmp	.LBB13_1
.LBB13_3:                               # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$-1, %eax
	je	.LBB13_20
# BB#4:                                 # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$58, %eax
	je	.LBB13_13
# BB#5:                                 # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$63, %eax
	jne	.LBB13_1
	jmp	.LBB13_13
.LBB13_73:                              #   in Loop: Header=BB13_1 Depth=1
	movb	$1, _ZL5debug(%rip)
	jmp	.LBB13_1
.LBB13_19:                              #   in Loop: Header=BB13_1 Depth=1
	movq	(%r12), %r14
	jmp	.LBB13_1
.LBB13_12:                              # %.backedge
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$104, %eax
	jne	.LBB13_1
	jmp	.LBB13_13
.LBB13_20:
	movq	optind@GOTPCREL(%rip), %r15
	movl	(%r15), %eax
	addl	$2, %eax
	cmpl	%ebx, %eax
	jg	.LBB13_13
# BB#21:
	movq	$1, 480(%rsp)
	leaq	488(%rsp), %rdi
	callq	sigemptyset@PLT
	movq	$0, 624(%rsp)
	movq	$0, 480(%rsp)
	movl	$0, 616(%rsp)
	leaq	480(%rsp), %rsi
	movl	$13, %edi
	xorl	%edx, %edx
	callq	sigaction@PLT
	testl	%eax, %eax
	jne	.LBB13_74
# BB#22:
	movq	$0, 320(%rsp)
	leaq	328(%rsp), %rdi
	callq	sigemptyset@PLT
	movq	$0, 464(%rsp)
	leaq	_ZL13alarm_handleriP9siginfo_tPv(%rip), %rax
	movq	%rax, 320(%rsp)
	movl	$268435460, 456(%rsp)   # imm = 0x10000004
	leaq	320(%rsp), %rsi
	movl	$14, %edi
	xorl	%edx, %edx
	callq	sigaction@PLT
	testl	%eax, %eax
	jne	.LBB13_74
# BB#23:
	movq	$0, 160(%rsp)
	leaq	168(%rsp), %rdi
	callq	sigemptyset@PLT
	movq	$0, 304(%rsp)
	leaq	_ZL13child_handleriP9siginfo_tPv(%rip), %rax
	movq	%rax, 160(%rsp)
	movl	$268435460, 296(%rsp)   # imm = 0x10000004
	leaq	160(%rsp), %rsi
	movl	$17, %edi
	xorl	%edx, %edx
	callq	sigaction@PLT
	testl	%eax, %eax
	jne	.LBB13_74
# BB#24:                                # %_ZL21setup_signal_handlersv.exit
	movslq	(%r15), %rax
	movq	(%rbp,%rax,8), %rdi
	leaq	_ZL6player(%rip), %rbx
	movq	%rbx, %rsi
	callq	_ZL11fork_playerPcP6player
	testb	%al, %al
	je	.LBB13_75
# BB#25:
	movslq	(%r15), %rax
	movq	8(%rbp,%rax,8), %rdi
	leaq	_ZL6player+16(%rip), %rsi
	callq	_ZL11fork_playerPcP6player
	testb	%al, %al
	je	.LBB13_75
# BB#26:
	movabsq	$289360691352306692, %rax # imm = 0x404040404040404
	movq	%rax, 552(%rsp)
	movq	%rax, 544(%rsp)
	movq	%rax, 536(%rsp)
	movq	%rax, 528(%rsp)
	movq	%rax, 520(%rsp)
	movq	%rax, 512(%rsp)
	movq	%rax, 504(%rsp)
	movq	%rax, 496(%rsp)
	movq	%rax, 488(%rsp)
	movq	%rax, 480(%rsp)
	movw	$1028, 560(%rsp)        # imm = 0x404
	testq	%r14, %r14
	je	.LBB13_76
# BB#27:
	movq	%r14, %rdi
	callq	strlen@PLT
	cmpq	$63, %rax
	jne	.LBB13_77
# BB#28:                                # %_Z16initialize_stateP10game_statePKc.exit
	leaq	480(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	_ZN10game_state5setupEPKc@PLT
	movq	%rbp, %rdi
	callq	_ZNK10game_state5printEv@PLT
	movzbl	480(%rsp), %eax
	cmpl	$1, %eax
	setne	%al
	movzbl	%al, %r14d
	xorl	%r15d, %r15d
.LBB13_29:                              # %.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_32 Depth 2
	movq	%r14, 120(%rsp)         # 8-byte Spill
	movq	%rbp, %rdi
	callq	_Z14is_final_statePK10game_state@PLT
	testb	%al, %al
	jne	.LBB13_30
# BB#31:                                # %.lr.ph
                                        #   in Loop: Header=BB13_29 Depth=1
	movl	%r15d, 68(%rsp)         # 4-byte Spill
	movl	%r14d, %eax
	orl	$1, %eax
	movl	%eax, 108(%rsp)         # 4-byte Spill
	movl	%r14d, %eax
	shlq	$4, %rax
	leaq	(%rbx,%rax), %r13
	movq	%r13, 80(%rsp)          # 8-byte Spill
	leaq	13(%rax,%rbx), %rcx
	movq	%rcx, 112(%rsp)         # 8-byte Spill
	leaq	12(%rax,%rbx), %rcx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	leaq	8(%rax,%rbx), %rcx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	leaq	4(%rax,%rbx), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	%rbp, %r12
	leaq	160(%rsp), %r15
	.align	16, 0x90
.LBB13_32:                              #   Parent Loop BB13_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$1, 108(%rsp)           # 4-byte Folded Reload
	jne	.LBB13_78
# BB#33:                                #   in Loop: Header=BB13_32 Depth=2
	cmpl	$1, %r14d
	je	.LBB13_36
# BB#34:                                #   in Loop: Header=BB13_32 Depth=2
	testl	%r14d, %r14d
	jne	.LBB13_37
# BB#35:                                #   in Loop: Header=BB13_32 Depth=2
	movb	$1, 480(%rsp)
	jmp	.LBB13_38
	.align	16, 0x90
.LBB13_36:                              #   in Loop: Header=BB13_32 Depth=2
	movb	$2, 480(%rsp)
	jmp	.LBB13_38
	.align	16, 0x90
.LBB13_37:                              #   in Loop: Header=BB13_32 Depth=2
	movb	$4, 480(%rsp)
.LBB13_38:                              # %_ZN10game_state6playerEj.exit
                                        #   in Loop: Header=BB13_32 Depth=2
	movq	%r13, %r14
	movq	%r15, %rdi
	callq	time@PLT
	cmpq	$-1, 160(%rsp)
	je	.LBB13_39
.LBB13_40:                              #   in Loop: Header=BB13_32 Depth=2
	movq	%r15, %rdi
	callq	localtime@PLT
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB13_41
.LBB13_42:                              # %_ZL10getTimeStrPcm.exit
                                        #   in Loop: Header=BB13_32 Depth=2
	movl	$64, %esi
	leaq	320(%rsp), %rbp
	movq	%rbp, %rdi
	leaq	.L.str.85(%rip), %rdx
	movq	%rbx, %rcx
	callq	strftime@PLT
	xorl	%eax, %eax
	leaq	.L.str.15(%rip), %rdi
	movq	%rbp, %rsi
	movq	120(%rsp), %rdx         # 8-byte Reload
	callq	_Z5printPKcz@PLT
	xorl	%eax, %eax
	leaq	.L.str.16(%rip), %rdi
	callq	_Z5printPKcz@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
	movl	$2, %edi
	movq	%r12, %rsi
	callq	_Z15serialize_stateiPK10game_state@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	$10, %edi
	callq	fputc@PLT
	movq	112(%rsp), %rax         # 8-byte Reload
	movb	$0, (%rax)
	movq	96(%rsp), %rax          # 8-byte Reload
	movb	$0, (%rax)
	movq	%r14, %r13
	movq	%r13, _ZL14current_player(%rip)
	movq	_ZL9cpu_limit(%rip), %rax
	cmpq	$-1, %rax
	movl	$0, %ecx
	cmoveq	%rcx, %rax
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 160(%rsp)
	movq	%rax, 176(%rsp)
	movq	$0, 184(%rsp)
	xorl	%edi, %edi
	xorl	%edx, %edx
	movq	%r15, %rsi
	movq	%r15, %rbx
	callq	setitimer@PLT
	testl	%eax, %eax
	js	.LBB13_79
# BB#43:                                # %_ZL9arm_timerl.exit.i
                                        #   in Loop: Header=BB13_32 Depth=2
	movl	(%r13), %edi
	movl	$18, %esi
	callq	kill@PLT
	testl	%eax, %eax
	js	.LBB13_63
# BB#44:                                #   in Loop: Header=BB13_32 Depth=2
	movq	88(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %edi
	movq	%r12, %rsi
	callq	_Z15serialize_stateiPK10game_state@PLT
	movq	112(%rsp), %rax         # 8-byte Reload
	cmpb	$0, (%rax)
	jne	.LBB13_62
# BB#45:                                #   in Loop: Header=BB13_32 Depth=2
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %edi
	movl	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movl	$10, %edx
	movq	%rbx, %rsi
	callq	read@PLT
	movq	%rax, %r13
	xorl	%r15d, %r15d
	xorl	%eax, %eax
	leaq	.L.str.5(%rip), %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	_Z5printPKcz@PLT
	testq	%r13, %r13
	je	.LBB13_53
# BB#46:                                #   in Loop: Header=BB13_32 Depth=2
	cmpq	$6, %r13
	je	.LBB13_49
# BB#47:                                #   in Loop: Header=BB13_32 Depth=2
	cmpq	$9, %r13
	jne	.LBB13_48
.LBB13_49:                              #   in Loop: Header=BB13_32 Depth=2
	movq	%rbx, %rdi
	callq	strlen@PLT
	movq	%rax, %rcx
	cmpq	$5, %rcx
	je	.LBB13_52
# BB#50:                                #   in Loop: Header=BB13_32 Depth=2
	cmpq	$8, %rcx
	jne	.LBB13_51
.LBB13_52:                              #   in Loop: Header=BB13_32 Depth=2
	leaq	128(%rsp), %rdi
	movq	%rbx, %rsi
	callq	_ZN9game_move5setupEPKc@PLT
	movb	%al, %r15b
	jmp	.LBB13_53
.LBB13_39:                              #   in Loop: Header=BB13_32 Depth=2
	leaq	.L.str.83(%rip), %rdi
	callq	perror@PLT
	jmp	.LBB13_40
.LBB13_41:                              #   in Loop: Header=BB13_32 Depth=2
	leaq	.L.str.84(%rip), %rdi
	callq	perror@PLT
	jmp	.LBB13_42
.LBB13_48:                              #   in Loop: Header=BB13_32 Depth=2
	xorl	%r15d, %r15d
	xorl	%eax, %eax
	leaq	.L.str.6(%rip), %rdi
	movq	%r13, %rsi
	callq	_Z5printPKcz@PLT
	jmp	.LBB13_53
.LBB13_51:                              #   in Loop: Header=BB13_32 Depth=2
	xorl	%r15d, %r15d
	xorl	%eax, %eax
	leaq	.L.str.7(%rip), %rdi
	movq	%rcx, %rsi
	callq	_Z5printPKcz@PLT
	.align	16, 0x90
.LBB13_53:                              # %_Z16deserialize_moveiP9game_move.exit.i
                                        #   in Loop: Header=BB13_32 Depth=2
	movq	112(%rsp), %rax         # 8-byte Reload
	cmpb	$0, (%rax)
	movq	80(%rsp), %r13          # 8-byte Reload
	je	.LBB13_54
.LBB13_62:                              # %_ZL11player_moveP6playerPK10game_stateP9game_move.exit
                                        #   in Loop: Header=BB13_32 Depth=2
	xorl	%eax, %eax
	leaq	.L.str.88(%rip), %rdi
	callq	_Z5printPKcz@PLT
.LBB13_63:                              # %_ZL11player_moveP6playerPK10game_stateP9game_move.exit.thread
                                        #   in Loop: Header=BB13_32 Depth=2
	movzbl	_ZL5debug(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB13_67
# BB#64:                                #   in Loop: Header=BB13_32 Depth=2
	xorl	%eax, %eax
	leaq	.L.str.17(%rip), %rdi
	movq	120(%rsp), %r14         # 8-byte Reload
	movl	%r14d, %esi
	callq	_Z5printPKcz@PLT
	movq	%rbx, %r15
.LBB13_65:                              # %.thread
                                        #   in Loop: Header=BB13_32 Depth=2
	movq	%r12, %rdi
	callq	_Z14is_final_statePK10game_state@PLT
	testb	%al, %al
	je	.LBB13_32
	jmp	.LBB13_66
.LBB13_54:                              #   in Loop: Header=BB13_32 Depth=2
	testb	%r15b, %r15b
	je	.LBB13_63
# BB#55:                                #   in Loop: Header=BB13_32 Depth=2
	movl	(%r13), %edi
	movl	$19, %esi
	callq	kill@PLT
	testl	%eax, %eax
	js	.LBB13_63
# BB#56:                                #   in Loop: Header=BB13_32 Depth=2
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 176(%rsp)
	movaps	%xmm0, 160(%rsp)
	xorl	%edi, %edi
	xorl	%edx, %edx
	movq	%rbx, %r15
	movq	%r15, %rsi
	callq	setitimer@PLT
	testl	%eax, %eax
	js	.LBB13_79
# BB#57:                                # %_ZL9arm_timerl.exit2.i
                                        #   in Loop: Header=BB13_32 Depth=2
	movq	$0, _ZL14current_player(%rip)
	movw	$0, 640(%rsp)
	movq	$0, 632(%rsp)
	movl	132(%rsp), %eax
	movq	_ZZNK9game_move8toStringEPcE3row@GOTPCREL(%rip), %rdx
	movb	(%rdx,%rax), %al
	movb	%al, 632(%rsp)
	movl	136(%rsp), %eax
	movq	_ZZNK9game_move8toStringEPcE4diag@GOTPCREL(%rip), %rsi
	movb	(%rsi,%rax), %al
	movb	%al, 633(%rsp)
	movl	$2, %eax
	cmpl	$1, 128(%rsp)
	movq	120(%rsp), %r14         # 8-byte Reload
	jne	.LBB13_59
# BB#58:                                #   in Loop: Header=BB13_32 Depth=2
	movb	$45, 634(%rsp)
	movl	140(%rsp), %eax
	movb	(%rdx,%rax), %al
	movb	%al, 635(%rsp)
	movl	144(%rsp), %eax
	movb	(%rsi,%rax), %al
	movb	%al, 636(%rsp)
	movl	$5, %eax
.LBB13_59:                              #   in Loop: Header=BB13_32 Depth=2
	movl	%eax, %eax
	movb	$44, 632(%rsp,%rax)
	movl	148(%rsp), %ecx
	movb	(%rdx,%rcx), %cl
	movb	%cl, 633(%rsp,%rax)
	movl	152(%rsp), %ecx
	movb	(%rsi,%rcx), %cl
	movb	%cl, 634(%rsp,%rax)
	movb	$0, 635(%rsp,%rax)
	xorl	%eax, %eax
	leaq	.L.str.87(%rip), %rdi
	leaq	632(%rsp), %rsi
	callq	_Z5printPKcz@PLT
	movq	%r12, %rdi
	leaq	128(%rsp), %rsi
	callq	_Z10apply_moveP10game_statePK9game_move@PLT
	testb	%al, %al
	jne	.LBB13_68
# BB#60:                                #   in Loop: Header=BB13_32 Depth=2
	xorl	%eax, %eax
	leaq	.L.str.19(%rip), %rdi
	movl	%r14d, %esi
	callq	_Z5printPKcz@PLT
	movb	_ZL5debug(%rip), %al
	andb	$1, %al
	jne	.LBB13_65
	jmp	.LBB13_61
.LBB13_68:                              #   in Loop: Header=BB13_29 Depth=1
	xorl	%eax, %eax
	leaq	.L.str.20(%rip), %rdi
	movl	%r14d, %esi
	callq	_Z5printPKcz@PLT
	movl	$1, %r13d
	subl	%r14d, %r13d
	sete	%al
	movzbl	%al, %eax
	movq	%r12, %rbp
	movl	68(%rsp), %r15d         # 4-byte Reload
	addl	%eax, %r15d
	cmpl	$101, %r15d
	movl	%r13d, %r14d
	leaq	_ZL6player(%rip), %rbx
	jl	.LBB13_29
	jmp	.LBB13_69
.LBB13_66:
	movl	%r14d, %r13d
	movl	68(%rsp), %r15d         # 4-byte Reload
.LBB13_69:                              # %.loopexit
	movq	stderr@GOTPCREL(%rip), %rax
	movq	%rax, %rbx
	movq	(%rbx), %rsi
	movl	$10, %edi
	callq	fputc@PLT
	leaq	.Lstr.92(%rip), %rdi
	callq	puts@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
	movl	$1, %ebp
	leaq	480(%rsp), %rsi
	movl	$1, %edi
	callq	_Z15serialize_stateiPK10game_state@PLT
	movq	(%rbx), %rsi
	movl	$10, %edi
	callq	fputc@PLT
	movq	(%rbx), %rsi
	movl	$10, %edi
	callq	fputc@PLT
	leaq	.L.str.22(%rip), %rdi
	xorl	%eax, %eax
	callq	_Z5printPKcz@PLT
	cmpl	$100, %r15d
	jg	.LBB13_71
# BB#70:
	subl	%r13d, %ebp
	leaq	.L.str.23(%rip), %rax
	movsbl	(%rbp,%rax), %esi
	leaq	.L.str.24(%rip), %rdi
	xorl	%eax, %eax
	movl	%r15d, %edx
	callq	_Z5printPKcz@PLT
	jmp	.LBB13_72
.LBB13_71:
	leaq	.L.str.25(%rip), %rdi
	xorl	%eax, %eax
	movl	%r15d, %esi
	callq	_Z5printPKcz@PLT
.LBB13_72:                              # %.preheader
	movl	_ZL6player(%rip), %edi
	movl	$15, %esi
	callq	kill@PLT
	movl	_ZL6player(%rip), %edi
	movl	$18, %esi
	callq	kill@PLT
	movl	_ZL6player(%rip), %edi
	leaq	320(%rsp), %rbx
	xorl	%edx, %edx
	movq	%rbx, %rsi
	callq	waitpid@PLT
	movl	_ZL6player+16(%rip), %edi
	movl	$15, %esi
	callq	kill@PLT
	movl	_ZL6player+16(%rip), %edi
	movl	$18, %esi
	callq	kill@PLT
	movl	_ZL6player+16(%rip), %edi
	xorl	%edx, %edx
	movq	%rbx, %rsi
	callq	waitpid@PLT
	xorl	%eax, %eax
	addq	$648, %rsp              # imm = 0x288
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB13_30:
	movl	%r14d, %r13d
	jmp	.LBB13_69
.LBB13_79:
	leaq	.L.str.55(%rip), %rdi
	xorl	%eax, %eax
	callq	_Z5printPKcz@PLT
	callq	abort@PLT
.LBB13_78:
	leaq	.L.str.82(%rip), %rdi
	leaq	.L.str.27(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN10game_state6playerEj(%rip), %rcx
	movl	$99, %edx
	callq	__assert_fail@PLT
.LBB13_67:
	movq	120(%rsp), %rdx         # 8-byte Reload
	leal	3(%rdx), %edi
	leaq	.L.str.18(%rip), %rsi
	xorl	%eax, %eax
	callq	_ZL8exit_msg11exit_reasonPKcz
.LBB13_13:                              # %.loopexit8
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	.L.str.51(%rip), %rdi
	movl	$527, %esi              # imm = 0x20F
	movl	$1, %edx
	callq	fwrite@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB13_74:
	callq	abort@PLT
.LBB13_75:
	leaq	.L.str.14(%rip), %rsi
	movl	$5, %edi
	xorl	%eax, %eax
	callq	_ZL8exit_msg11exit_reasonPKcz
.LBB13_76:
	leaq	.L.str.8(%rip), %rdi
	leaq	.L.str.3(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc(%rip), %rcx
	movl	$80, %edx
	callq	__assert_fail@PLT
.LBB13_77:
	leaq	.L.str.9(%rip), %rdi
	leaq	.L.str.3(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc(%rip), %rcx
	movl	$81, %edx
	callq	__assert_fail@PLT
.LBB13_61:
	leal	1(%r14), %edi
	leaq	.L.str.19(%rip), %rsi
	xorl	%eax, %eax
	movl	%r14d, %edx
	callq	_ZL8exit_msg11exit_reasonPKcz
.Lfunc_end13:
	.size	main, .Lfunc_end13-main
	.cfi_endproc

	.align	16, 0x90
	.type	_ZL11fork_playerPcP6player,@function
_ZL11fork_playerPcP6player:             # @_ZL11fork_playerPcP6player
	.cfi_startproc
# BB#0:
	pushq	%r14
.Ltmp107:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp108:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp109:
	.cfi_def_cfa_offset 48
.Ltmp110:
	.cfi_offset %rbx, -24
.Ltmp111:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	16(%rsp), %rdi
	callq	pipe@PLT
	testl	%eax, %eax
	je	.LBB14_2
# BB#1:
	xorl	%eax, %eax
	jmp	.LBB14_9
.LBB14_2:
	leaq	8(%rsp), %rdi
	callq	pipe@PLT
	testl	%eax, %eax
	je	.LBB14_4
# BB#3:
	xorl	%eax, %eax
	jmp	.LBB14_9
.LBB14_4:
	callq	fork@PLT
	movl	%eax, (%rbx)
	movl	(%rbx), %eax
	cmpl	$-1, %eax
	je	.LBB14_10
# BB#5:
	cmpl	$0, (%rbx)
	je	.LBB14_11
# BB#6:
	movl	(%rbx), %edi
	movl	$19, %esi
	callq	kill@PLT
	testl	%eax, %eax
	js	.LBB14_7
# BB#8:
	movl	20(%rsp), %edi
	callq	close@PLT
	movl	8(%rsp), %edi
	callq	close@PLT
	movl	16(%rsp), %eax
	movl	%eax, 4(%rbx)
	movl	12(%rsp), %eax
	movl	%eax, 8(%rbx)
	movb	$1, %al
	jmp	.LBB14_9
.LBB14_7:
	xorl	%eax, %eax
.LBB14_9:
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB14_10:
	callq	abort@PLT
.LBB14_11:
	movl	16(%rsp), %edi
	callq	close@PLT
	movl	12(%rsp), %edi
	callq	close@PLT
	movl	8(%rsp), %edi
	movl	$3, %esi
	callq	dup2@PLT
	movl	20(%rsp), %edi
	movl	$4, %esi
	callq	dup2@PLT
	movl	$2, %edi
	callq	close@PLT
	movl	$1, %edi
	movl	$2, %esi
	callq	dup2@PLT
	leaq	_ZL9cpu_limit(%rip), %rsi
	xorl	%edi, %edi
	callq	setrlimit@PLT
	leaq	_ZL9mem_limit(%rip), %rsi
	movl	$9, %edi
	callq	setrlimit@PLT
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%r14, %rsi
	callq	execl@PLT
	leaq	.L.str.80(%rip), %rdi
	xorl	%eax, %eax
	movq	%r14, %rsi
	callq	printf@PLT
	leaq	.L.str.81(%rip), %rdi
	callq	perror@PLT
	movl	$5, %edi
	callq	_exit@PLT
.Lfunc_end14:
	.size	_ZL11fork_playerPcP6player, .Lfunc_end14-_ZL11fork_playerPcP6player
	.cfi_endproc

	.align	16, 0x90
	.type	_ZL8exit_msg11exit_reasonPKcz,@function
_ZL8exit_msg11exit_reasonPKcz:          # @_ZL8exit_msg11exit_reasonPKcz
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp112:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp113:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp114:
	.cfi_def_cfa_offset 32
	subq	$208, %rsp
.Ltmp115:
	.cfi_def_cfa_offset 240
.Ltmp116:
	.cfi_offset %rbx, -32
.Ltmp117:
	.cfi_offset %r14, -24
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movl	%edi, %r14d
	testb	%al, %al
	je	.LBB15_2
# BB#1:
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB15_2:
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	leaq	(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	240(%rsp), %rax
	movq	%rax, 184(%rsp)
	movl	$48, 180(%rsp)
	movl	$16, 176(%rsp)
	movq	stderr@GOTPCREL(%rip), %rbp
	movq	(%rbp), %rcx
	leaq	.L.str(%rip), %rdi
	movl	$6, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movq	(%rbp), %rdi
	leaq	176(%rsp), %rdx
	movq	%rbx, %rsi
	callq	vfprintf@PLT
	movl	%r14d, %edi
	callq	exit@PLT
.Lfunc_end15:
	.size	_ZL8exit_msg11exit_reasonPKcz, .Lfunc_end15-_ZL8exit_msg11exit_reasonPKcz
	.cfi_endproc

	.section	.text._ZN10game_state3setEjjc,"axG",@progbits,_ZN10game_state3setEjjc,comdat
	.weak	_ZN10game_state3setEjjc
	.align	16, 0x90
	.type	_ZN10game_state3setEjjc,@function
_ZN10game_state3setEjjc:                # @_ZN10game_state3setEjjc
	.cfi_startproc
# BB#0:
	pushq	%rax
.Ltmp119:
	.cfi_def_cfa_offset 16
	movzbl	%cl, %eax
	cmpl	$46, %eax
	je	.LBB16_13
# BB#1:
	cmpl	$87, %eax
	je	.LBB16_8
# BB#2:
	cmpl	$66, %eax
	jne	.LBB16_18
# BB#3:
	leal	5(%rdx), %eax
	cmpl	%esi, %eax
	jbe	.LBB16_24
# BB#4:
	leal	5(%rsi), %eax
	cmpl	%edx, %eax
	jbe	.LBB16_24
# BB#5:
	decl	%esi
	cmpl	$8, %esi
	ja	.LBB16_24
# BB#6:
	decl	%edx
	cmpl	$9, %edx
	jae	.LBB16_24
# BB#7:                                 # %_ZN10game_state3setEjj9FieldType.exit
	movl	%edx, %eax
	movl	%esi, %ecx
	leaq	(%rcx,%rcx,8), %rcx
	addq	%rcx, %rdi
	movb	$1, 1(%rax,%rdi)
	popq	%rax
	retq
.LBB16_13:
	leal	5(%rdx), %eax
	cmpl	%esi, %eax
	jbe	.LBB16_24
# BB#14:
	leal	5(%rsi), %eax
	cmpl	%edx, %eax
	jbe	.LBB16_24
# BB#15:
	decl	%esi
	cmpl	$8, %esi
	ja	.LBB16_24
# BB#16:
	decl	%edx
	cmpl	$9, %edx
	jae	.LBB16_24
# BB#17:                                # %_ZN10game_state3setEjj9FieldType.exit12
	movl	%edx, %eax
	movl	%esi, %ecx
	leaq	(%rcx,%rcx,8), %rcx
	addq	%rcx, %rdi
	movb	$3, 1(%rax,%rdi)
	popq	%rax
	retq
.LBB16_8:
	leal	5(%rdx), %eax
	cmpl	%esi, %eax
	jbe	.LBB16_24
# BB#9:
	leal	5(%rsi), %eax
	cmpl	%edx, %eax
	jbe	.LBB16_24
# BB#10:
	decl	%esi
	cmpl	$8, %esi
	ja	.LBB16_24
# BB#11:
	decl	%edx
	cmpl	$9, %edx
	jae	.LBB16_24
# BB#12:                                # %_ZN10game_state3setEjj9FieldType.exit6
	movl	%edx, %eax
	movl	%esi, %ecx
	leaq	(%rcx,%rcx,8), %rcx
	addq	%rcx, %rdi
	movb	$2, 1(%rax,%rdi)
	popq	%rax
	retq
.LBB16_18:
	leal	5(%rdx), %eax
	cmpl	%esi, %eax
	jbe	.LBB16_24
# BB#19:
	leal	5(%rsi), %eax
	cmpl	%edx, %eax
	jbe	.LBB16_24
# BB#20:
	decl	%esi
	cmpl	$8, %esi
	ja	.LBB16_24
# BB#21:
	decl	%edx
	cmpl	$9, %edx
	jae	.LBB16_24
# BB#22:                                # %_ZN10game_state3setEjj9FieldType.exit18
	movl	%edx, %eax
	movl	%esi, %ecx
	leaq	(%rcx,%rcx,8), %rcx
	addq	%rcx, %rdi
	movb	$4, 1(%rax,%rdi)
	popq	%rax
	retq
.LBB16_24:                              # %_ZL15check_valid_posjj.exit.thread.i
	leaq	.L.str.50(%rip), %rdi
	leaq	.L.str.27(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN10game_state3setEjj9FieldType(%rip), %rcx
	movl	$127, %edx
	callq	__assert_fail@PLT
.Lfunc_end16:
	.size	_ZN10game_state3setEjjc, .Lfunc_end16-_ZN10game_state3setEjjc
	.cfi_endproc

	.text
	.align	16, 0x90
	.type	_ZL13alarm_handleriP9siginfo_tPv,@function
_ZL13alarm_handleriP9siginfo_tPv:       # @_ZL13alarm_handleriP9siginfo_tPv
	.cfi_startproc
# BB#0:
	subq	$40, %rsp
.Ltmp120:
	.cfi_def_cfa_offset 48
	cmpl	$14, %edi
	jne	.LBB17_7
# BB#1:
	movq	_ZL14current_player(%rip), %rax
	testq	%rax, %rax
	je	.LBB17_8
# BB#2:
	cmpb	$0, 12(%rax)
	je	.LBB17_3
# BB#5:
	movb	$1, 13(%rax)
	movl	(%rax), %edi
	movl	$9, %esi
	addq	$40, %rsp
	jmp	kill@PLT                # TAILCALL
.LBB17_3:
	movb	$1, 12(%rax)
	movl	(%rax), %edi
	movl	$24, %esi
	callq	kill@PLT
	movq	_ZL9cpu_limit+8(%rip), %rax
	subq	_ZL9cpu_limit(%rip), %rax
	xorl	%ecx, %ecx
	cmpq	$-1, %rax
	cmoveq	%rcx, %rax
	xorps	%xmm0, %xmm0
	movaps	%xmm0, (%rsp)
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	leaq	(%rsp), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	callq	setitimer@PLT
	testl	%eax, %eax
	js	.LBB17_4
# BB#6:
	addq	$40, %rsp
	retq
.LBB17_7:
	leaq	.L.str.52(%rip), %rdi
	leaq	.L.str.53(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv(%rip), %rcx
	movl	$81, %edx
	callq	__assert_fail@PLT
.LBB17_8:
	leaq	.L.str.54(%rip), %rdi
	leaq	.L.str.53(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv(%rip), %rcx
	movl	$84, %edx
	callq	__assert_fail@PLT
.LBB17_4:
	leaq	.L.str.55(%rip), %rdi
	xorl	%eax, %eax
	callq	_Z5printPKcz@PLT
	callq	abort@PLT
.Lfunc_end17:
	.size	_ZL13alarm_handleriP9siginfo_tPv, .Lfunc_end17-_ZL13alarm_handleriP9siginfo_tPv
	.cfi_endproc

	.align	16, 0x90
	.type	_ZL13child_handleriP9siginfo_tPv,@function
_ZL13child_handleriP9siginfo_tPv:       # @_ZL13child_handleriP9siginfo_tPv
	.cfi_startproc
# BB#0:
	pushq	%rbx
.Ltmp121:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp122:
	.cfi_def_cfa_offset 32
.Ltmp123:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movl	8(%rbx), %eax
	addl	$-5, %eax
	cmpl	$2, %eax
	jae	.LBB18_1
# BB#11:
	addq	$16, %rsp
	popq	%rbx
	retq
.LBB18_1:
	movl	24(%rbx), %esi
	cmpl	$15, %esi
	je	.LBB18_9
# BB#2:
	cmpl	$11, %esi
	je	.LBB18_4
# BB#3:
	cmpl	$9, %esi
	je	.LBB18_4
# BB#10:
	leaq	.L.str.60(%rip), %rdi
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbx
	jmp	_Z5printPKcz@PLT        # TAILCALL
.LBB18_9:
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	$10, %edi
	callq	fputc@PLT
	leaq	.L.str.59(%rip), %rdi
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbx
	jmp	_Z5printPKcz@PLT        # TAILCALL
.LBB18_4:
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	$10, %edi
	callq	fputc@PLT
	movl	8(%rbx), %eax
	movl	24(%rbx), %esi
	decl	%eax
	leaq	.L.str.65(%rip), %rcx
	cmpl	$3, %eax
	movq	%rcx, %rdx
	ja	.LBB18_6
# BB#5:                                 # %switch.lookup.i
	cltq
	leaq	.Lswitch.table.93(%rip), %rdx
	movq	(%rdx,%rax,8), %rdx
.LBB18_6:                               # %_ZL11si_code_stri.exit
	leal	-1(%rsi), %eax
	cmpl	$16, %eax
	ja	.LBB18_8
# BB#7:                                 # %switch.lookup.i4
	cltq
	leaq	.Lswitch.table.94(%rip), %rcx
	movq	(%rcx,%rax,8), %rcx
.LBB18_8:                               # %_ZL10signal_stri.exit
	leaq	.L.str.56(%rip), %rdi
	xorl	%eax, %eax
	callq	_Z5printPKcz@PLT
	leaq	.L.str.57(%rip), %rdi
	xorl	%eax, %eax
	callq	_Z5printPKcz@PLT
	movl	_ZL6player(%rip), %edi
	movl	$15, %esi
	callq	kill@PLT
	movl	_ZL6player(%rip), %edi
	movl	$18, %esi
	callq	kill@PLT
	movl	_ZL6player(%rip), %edi
	leaq	12(%rsp), %rbx
	xorl	%edx, %edx
	movq	%rbx, %rsi
	callq	waitpid@PLT
	movl	_ZL6player+16(%rip), %edi
	movl	$15, %esi
	callq	kill@PLT
	movl	_ZL6player+16(%rip), %edi
	movl	$18, %esi
	callq	kill@PLT
	movl	_ZL6player+16(%rip), %edi
	xorl	%edx, %edx
	movq	%rbx, %rsi
	callq	waitpid@PLT
	leaq	.L.str.58(%rip), %rdi
	xorl	%eax, %eax
	callq	_Z5printPKcz@PLT
	movl	$1, %edi
	callq	exit@PLT
.Lfunc_end18:
	.size	_ZL13child_handleriP9siginfo_tPv, .Lfunc_end18-_ZL13child_handleriP9siginfo_tPv
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	_GLOBAL__sub_I_mcp_S.cc,@function
_GLOBAL__sub_I_mcp_S.cc:                # @_GLOBAL__sub_I_mcp_S.cc
	.cfi_startproc
# BB#0:
	pushq	%rbx
.Ltmp124:
	.cfi_def_cfa_offset 16
.Ltmp125:
	.cfi_offset %rbx, -16
	leaq	_ZStL8__ioinit(%rip), %rbx
	movq	%rbx, %rdi
	callq	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	movq	__dso_handle@GOTPCREL(%rip), %rdx
	movq	%rbx, %rsi
	popq	%rbx
	jmp	__cxa_atexit@PLT        # TAILCALL
.Lfunc_end19:
	.size	_GLOBAL__sub_I_mcp_S.cc, .Lfunc_end19-_GLOBAL__sub_I_mcp_S.cc
	.cfi_endproc

	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"<MCP> "
	.size	.L.str, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"cnt == 64"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"./abalone.cc"
	.size	.L.str.3, 13

	.type	.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state,@object # @__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state
.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state:
	.asciz	"bool deserialize_state(int, game_state *)"
	.size	.L__PRETTY_FUNCTION__._Z17deserialize_stateiP10game_state, 42

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"buf[63] == '\\0'"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Read %s, len %z\n"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Invalid length of move: %i\n"
	.size	.L.str.6, 28

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Unexpected EOF in move at %i\n"
	.size	.L.str.7, 30

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"init"
	.size	.L.str.8, 5

	.type	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc,@object # @__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc
.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc:
	.asciz	"void initialize_state(game_state *, const char *)"
	.size	.L__PRETTY_FUNCTION__._Z16initialize_stateP10game_statePKc, 50

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"strlen(init) == 63"
	.size	.L.str.9, 19

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"W: %d, B: %d\n"
	.size	.L.str.10, 14

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"B:BBBBBBBBBBB..BBB.............................WWW..WWWWWWWWWWW"
	.size	.L.str.11, 64

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Master Control Program\n"
	.size	.L.str.12, 24

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"dT:t:m:M:s:h"
	.size	.L.str.13, 13

	.type	_ZL5debug,@object       # @_ZL5debug
	.local	_ZL5debug
	.comm	_ZL5debug,1,1
	.type	_ZL9cpu_limit,@object   # @_ZL9cpu_limit
	.data
	.align	8
_ZL9cpu_limit:
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.size	_ZL9cpu_limit, 16

	.type	_ZL9mem_limit,@object   # @_ZL9mem_limit
	.align	8
_ZL9mem_limit:
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.size	_ZL9mem_limit, 16

	.type	_ZL6player,@object      # @_ZL6player
	.local	_ZL6player
	.comm	_ZL6player,32,16
	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"Unable to fork players.\n"
	.size	.L.str.14, 25

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"[%s] P%u's turn.\n"
	.size	.L.str.15, 18

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"State: "
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"No move from player %d.\n"
	.size	.L.str.17, 25

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"No move from player %u.\n"
	.size	.L.str.18, 25

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Invalid move from player %u.\n"
	.size	.L.str.19, 30

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"P%u moves.\n"
	.size	.L.str.20, 12

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"End of Line.\n"
	.size	.L.str.22, 14

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"BW"
	.size	.L.str.23, 3

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%c wins after %i turns.\n"
	.size	.L.str.24, 25

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"A draw after %i turns.\n"
	.size	.L.str.25, 24

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"str"
	.size	.L.str.26, 4

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"./board.h"
	.size	.L.str.27, 10

	.type	.L__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc,@object # @__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc
.L__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc:
	.asciz	"void game_state::toString(char *) const"
	.size	.L__PRETTY_FUNCTION__._ZNK10game_state8toStringEPc, 40

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"i == 64"
	.size	.L.str.28, 8

	.type	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc,@object # @__PRETTY_FUNCTION__._ZN10game_state5setupEPKc
.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc:
	.asciz	"void game_state::setup(const char *)"
	.size	.L__PRETTY_FUNCTION__._ZN10game_state5setupEPKc, 37

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"strlen(str) == 63"
	.size	.L.str.29, 18

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"str[1] == ':'"
	.size	.L.str.30, 14

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Unknown player type in '%s'\n"
	.size	.L.str.31, 29

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"i == 63"
	.size	.L.str.32, 8

	.type	_ZZNK9game_move8toStringEPcE3row,@object # @_ZZNK9game_move8toStringEPcE3row
	.section	.rodata._ZZNK9game_move8toStringEPcE3row,"aG",@progbits,_ZZNK9game_move8toStringEPcE3row,comdat
	.weak	_ZZNK9game_move8toStringEPcE3row
_ZZNK9game_move8toStringEPcE3row:
	.asciz	"-ABCDEFGHI"
	.size	_ZZNK9game_move8toStringEPcE3row, 11

	.type	_ZZNK9game_move8toStringEPcE4diag,@object # @_ZZNK9game_move8toStringEPcE4diag
	.section	.rodata._ZZNK9game_move8toStringEPcE4diag,"aG",@progbits,_ZZNK9game_move8toStringEPcE4diag,comdat
	.weak	_ZZNK9game_move8toStringEPcE4diag
_ZZNK9game_move8toStringEPcE4diag:
	.asciz	"-123456789"
	.size	_ZZNK9game_move8toStringEPcE4diag, 11

	.type	.L.str.36,@object       # @.str.36
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.36:
	.asciz	"Invalid char in move: %c\n"
	.size	.L.str.36, 26

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"ABCDEFGHI"
	.size	.L.str.38, 10

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	" "
	.size	.L.str.39, 2

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"  "
	.size	.L.str.40, 3

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"   "
	.size	.L.str.41, 4

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	" - "
	.size	.L.str.42, 4

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"    "
	.size	.L.str.43, 5

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"/ \\ "
	.size	.L.str.44, 5

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"\\ / "
	.size	.L.str.45, 5

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"               1   2   3   4   5"
	.size	.L.str.46, 33

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"\033[31;1mB\033[0m"
	.size	.L.str.47, 13

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"\033[32;1mW\033[0m"
	.size	.L.str.48, 13

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"o"
	.size	.L.str.49, 2

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"check_valid_pos(row, diagonal)"
	.size	.L.str.50, 31

	.type	.L__PRETTY_FUNCTION__._ZN10game_state3setEjj9FieldType,@object # @__PRETTY_FUNCTION__._ZN10game_state3setEjj9FieldType
.L__PRETTY_FUNCTION__._ZN10game_state3setEjj9FieldType:
	.asciz	"void game_state::set(idx_t, idx_t, FieldType)"
	.size	.L__PRETTY_FUNCTION__._ZN10game_state3setEjj9FieldType, 46

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Usage: mcp [-s state_string] [-t soft-player-time] [-m soft-player-mem]\n           [-T hard-player-time] [-M hard-player-mem]\n           [-d]\n           [-h]\n           player1 player2\n state_string - 63 character string representing an initial field state\n                (this is the string the MCP prints before every move.)\n player-time  - CPU time per turn in seconds\n player-mem   - Memory limit per player in megabytes\n -d           - turn on debugging, program won't exit on invalid move\n -h           - Show this help\n"
	.size	.L.str.51, 528

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"signum == SIGALRM"
	.size	.L.str.52, 18

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"./mcp-shared.cc"
	.size	.L.str.53, 16

	.type	.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv,@object # @__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv
.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv:
	.asciz	"void alarm_handler(int, siginfo_t *, void *)"
	.size	.L__PRETTY_FUNCTION__._ZL13alarm_handleriP9siginfo_tPv, 45

	.type	_ZL14current_player,@object # @_ZL14current_player
	.local	_ZL14current_player
	.comm	_ZL14current_player,8,8
	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"p"
	.size	.L.str.54, 2

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Failed to set timer.\n"
	.size	.L.str.55, 22

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Child signal: %d (%s,%s)\n"
	.size	.L.str.56, 26

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"killing the other one\n"
	.size	.L.str.57, 23

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"exiting\n"
	.size	.L.str.58, 9

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"\033[32mCHILD terminated successfully\033[0m\n"
	.size	.L.str.59, 40

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Child signal: %i!\n"
	.size	.L.str.60, 19

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"exited"
	.size	.L.str.61, 7

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"killed"
	.size	.L.str.62, 7

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"coredumped"
	.size	.L.str.63, 11

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"trapped"
	.size	.L.str.64, 8

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"unknown"
	.size	.L.str.65, 8

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"SIGHUP"
	.size	.L.str.66, 7

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"SIGINT"
	.size	.L.str.67, 7

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"SIGILL"
	.size	.L.str.68, 7

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"SIGABRT"
	.size	.L.str.69, 8

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"SIGSEGV"
	.size	.L.str.70, 8

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"SIGFPE"
	.size	.L.str.71, 7

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"SIGPIPE"
	.size	.L.str.72, 8

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"SIGKILL"
	.size	.L.str.73, 8

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"SIGTERM"
	.size	.L.str.74, 8

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"SIGALRM"
	.size	.L.str.75, 8

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"SIGUSR1"
	.size	.L.str.76, 8

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"SIGUSR2"
	.size	.L.str.77, 8

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"SIGBUS"
	.size	.L.str.78, 7

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"SIGCHLD"
	.size	.L.str.79, 8

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"EXECL '%s' FAILED\n"
	.size	.L.str.80, 19

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"execl"
	.size	.L.str.81, 6

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"( p == 0) or (p == 1)"
	.size	.L.str.82, 22

	.type	.L__PRETTY_FUNCTION__._ZN10game_state6playerEj,@object # @__PRETTY_FUNCTION__._ZN10game_state6playerEj
.L__PRETTY_FUNCTION__._ZN10game_state6playerEj:
	.asciz	"void game_state::player(idx_t)"
	.size	.L__PRETTY_FUNCTION__._ZN10game_state6playerEj, 31

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"time()"
	.size	.L.str.83, 7

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"localtime()"
	.size	.L.str.84, 12

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"%H:%M:%S"
	.size	.L.str.85, 9

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Move is: %s\n"
	.size	.L.str.87, 13

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"Player timeout!\n"
	.size	.L.str.88, 17

	.section	.init_array,"aw",@init_array
	.align	8
	.quad	_GLOBAL__sub_I_mcp_S.cc
	.type	.Lstr,@object           # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"from invalid"
	.size	.Lstr, 13

	.type	.Lstr.89,@object        # @str.89
.Lstr.89:
	.asciz	"from2 invalid"
	.size	.Lstr.89, 14

	.type	.Lstr.90,@object        # @str.90
.Lstr.90:
	.asciz	"to invalid"
	.size	.Lstr.90, 11

	.type	.Lstr.91,@object        # @str.91
.Lstr.91:
	.asciz	"missing comma"
	.size	.Lstr.91, 14

	.type	.Lstr.92,@object        # @str.92
.Lstr.92:
	.asciz	"Final state:"
	.size	.Lstr.92, 13

	.type	.Lswitch.table,@object  # @switch.table
	.section	.data.rel.ro,"aw",@progbits
	.align	16
.Lswitch.table:
	.quad	.L.str.47
	.quad	.L.str.48
	.quad	.L.str.49
	.quad	.L.str.39
	.size	.Lswitch.table, 32

	.type	.Lswitch.table.93,@object # @switch.table.93
	.align	16
.Lswitch.table.93:
	.quad	.L.str.61
	.quad	.L.str.62
	.quad	.L.str.63
	.quad	.L.str.64
	.size	.Lswitch.table.93, 32

	.type	.Lswitch.table.94,@object # @switch.table.94
	.align	16
.Lswitch.table.94:
	.quad	.L.str.66
	.quad	.L.str.67
	.quad	.L.str.65
	.quad	.L.str.68
	.quad	.L.str.65
	.quad	.L.str.69
	.quad	.L.str.78
	.quad	.L.str.71
	.quad	.L.str.73
	.quad	.L.str.76
	.quad	.L.str.70
	.quad	.L.str.77
	.quad	.L.str.72
	.quad	.L.str.75
	.quad	.L.str.74
	.quad	.L.str.65
	.quad	.L.str.79
	.size	.Lswitch.table.94, 136


	.ident	"clang version 3.8.1-17 (tags/RELEASE_381/final)"
	.section	".note.GNU-stack","",@progbits
#endif
#endif
