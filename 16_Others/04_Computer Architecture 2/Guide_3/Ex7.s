.equ SFR_BASE_HI, 0xBF88
.equ TRISE, 0x6100
.equ TRISB, 0x6040
.equ LATE, 0x6120
.equ PORTB, 0x6050
.equ ReadCoreTimer, 11
.equ ResetCoreTimer, 12

.data
.text
.globl main

main:	li	$s2,0
	lui	$s0,SFR_BASE_HI

	lw	$t0,TRISE($s0)
	andi	$t0,$t0,0xFFF0
	sw	$t0,TRISE($s0)

	lw	$t0,TRISB($s0)
	ori	$t0,$t0,0x0008
	sw	$t0,TRISB($s0)

	addi	$sp,$sp,-4
	sw	$ra,0($sp)

loop:	lw	$t0,PORTB($s0)
	andi	$s1,$t0,0x0008	
	lw	$t0,LATE($s0)
	andi	$t0,$t0,0xFFF0	
	or	$t0,$t0,$s2
	sw	$t0,LATE($s0)
	li	$a0,500
	jal	delay
	beqz	$s1,decres
	beq	$s2,15,loop
	addi	$s2,$s2,1
	j	loop
decres:	beqz	$s2,loop
	sub	$s2,$s2,1
	j	loop
	
	lw	$ra,0($sp)
	addi	$sp,$sp,4
	jr	$ra

delay:	move	$t0,$a0

for:	blez	$t0,end
	li	$v0,ResetCoreTimer
	syscall

while:	li	$v0,ReadCoreTimer
	syscall
	ble	$v0,20000,while
	sub	$t0,$t0,1
	j	for

end:	jr	$ra	
	
