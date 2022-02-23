.equ	SFR_BASE_HI, 0xBF88
.equ	TRISE,	0x6100	
.equ	LATE,	0x6120
.equ	ResetCoreTimer,12
.equ	ReadCoreTimer,11

.data
.text
.globl main

main:	lui	$t0, SFR_BASE_HI
	lw	$t1, TRISE($t0)
	andi	$t1, $t1,0xFFFE
	sw	$t1, TRISE($t0)
	li	$s1,0

loop:	sw	$s1,LATE($t0)
	addi	$sp,$sp,-4
	sw	$ra,0($sp)
	li	$a0,500
	jal	delay
	lw	$ra,0($sp)
	addi	$sp,$sp,4
	xor	$s1,$s1,1
	j	loop
	jr	$ra

delay:	move	$t1,$a0

loop1:	blez	$t1,end
	li	$v0,ResetCoreTimer
	syscall

while:	li	$v0,ReadCoreTimer
	syscall
	blt	$v0,20000,while			
	
	sub	$t1,$t1,1
	j	loop1

end:	jr	$ra
