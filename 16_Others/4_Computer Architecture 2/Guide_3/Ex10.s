.equ	SFR_BASE_HI,0xBF88
.equ	TRISE,0x6100
.equ	TRISB,0x6040
.equ	PORTB,0x6050
.equ	LATE,0x6120
.equ	ReadCoreTimer,11
.equ	ResetCoreTimer,12

.data
.text
.globl main

main:	li	$s0,0x0000
	lui	$s1,SFR_BASE_HI

	lw	$t0,TRISE($s1)
	andi	$t0,$t0,0xFFF0
	sw	$t0,TRISE($s1)

	lw	$t0,TRISB($s1)
	ori	$t0,$t0,0x000F
	sw	$t0,TRISB($s1)

	addi	$sp,$sp,-4
	sw	$ra,0($sp)

loop:	lw	$t0,PORTB($s1)
	andi	$s2,$t0,0x0004

	lw	$t0,LATE($s1)
	andi	$t0,$t0,0xFFF0
	or	$t0,$t0,$s0
	sw	$t0,LATE($s1)
	
	li	$a0,667
	jal	delay

	not	$t1,$s0
	beqz	$s2,right

	andi	$t1,$t1,0x0008
	srl	$t1,$t1,3
	andi	$t2,$s0,0x0007
	sll	$t2,$t2,1
	or	$s0,$t2,$t1
	j	loop

right:	andi	$t1,$t1,0x0001
	sll	$t1,$t1,3
	andi	$t2,$s0,0x000F
	srl	$t2,$t2,1
	or	$s0,$t1,$t2

	j	loop
	
	lw	$ra,0($sp)
	addi	$sp,$sp,4
	jr	$ra

delay:	move	$t0,$a0
	
for:	beqz	$t0,end
	li	$v0,ResetCoreTimer
	syscall

while:	li	$v0,ReadCoreTimer
	syscall
	ble	$v0,20000,while
	sub	$t0,$t0,1	
	j	for

end:	jr	$ra
