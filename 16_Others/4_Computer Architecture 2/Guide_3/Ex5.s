.equ ReadCoreTimer,11
.equ ResetCoreTimer,12
.equ SFR_BASE_HI, 0xBF88
.equ TRISE, 0x6100
.equ TRISB, 0x6040
.equ PORTB, 0x6050
.equ LATE, 0x6120

.data
.text
.globl main

main:	li 	$s0,0
	lui	$s1,SFR_BASE_HI				## guarda em s?
	lw	$t0,TRISE($s1)
	andi	$t0,$t0,0xfff0
	sw	$t0,TRISE($s1)
	addi	$sp,$sp,-4
	sw 	$ra,0($sp)				## por ss na stack?

loop:	lw      $t0,LATE($s1)
        andi    $t0,$t0,0xfff0
        or      $t0,$t0,$s0
        sw      $t0,LATE($s1)
	li	$a0,1000
	jal	delay
	addi	$s0,$s0,1
	bne	$s0,16,loop	
	li	$s0,0
	j	loop

	lw	$ra,0($sp)
	sub	$sp,$sp,4
	jr	$ra

delay:	move	$t1,$a0

for:	blez	$t1,end
	li	$v0,ResetCoreTimer
	syscall

while:	li	$v0,ReadCoreTimer
	syscall
	blt	$v0,20000,while
	sub	$t1,$t1,1
	j	for

end:	jr	$ra
