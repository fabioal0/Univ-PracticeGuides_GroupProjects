.equ SFR_BASE_HI, 0xBF88
.equ TRISE, 0x6100
.equ LATE, 0x6120
.equ TRISB,0x6040
.equ PORTB,0x6050
.equ readCoreTimer,11
.equ resetCoreTimer,12

.data
.text
.globl main

main: 	lui	$s0,SFR_BASE_HI
	li	$s1,0x0001

	lw	$t0,TRISE($s0)
	andi	$t0,0xFFF0
	sw	$t0,TRISE($s0)

	lw	$t0,TRISB($s0)
	ori	$t0,0x000F
	sw	$t0,TRISB($s0)

	addi	$sp,$sp,-4
	sw	$ra,0($sp)

loop:	lw	$t0,PORTB($s0)
	andi	$s2,$t0,0x0002
	
	lw	$t0,LATE($s0)
	andi	$t0,$t0,0xFFF0
	or	$t0,$t0,$s1
	sw	$t0,LATE($s0)

	li	$a0,333
	jal	delay
	
	beqz	$s2,dir
	beq	$s1,0x0008,loop
	sll	$s1,$s1,1
	j loop

dir:	beq	$s1,0x0001,loop
	srl	$s1,$s1,1
	j	loop
	
	lw	$ra,0($sp)
	addi	$sp,$sp,4
	jr	$ra

delay:	move	$t0,$a0

for:	bgtz	$t0,end
	li	$v0,resetCoreTimer
	syscall

while:	li	$v0,readCoreTimer
	syscall
	blt	$v0,20000,while

	sub	$t0,$t0,1
	j	for

end:	jr	$ra

	
