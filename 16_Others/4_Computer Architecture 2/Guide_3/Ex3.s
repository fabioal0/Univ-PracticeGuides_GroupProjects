.equ SFR_BASE_HI, 0xBF88
.equ TRISE, 0x6100
.equ TRISB, 0x6040
.equ PORTB, 0x6050
.equ LATE, 0x6120

.data
.text
.globl main

main:
	lui	$t0, SFR_BASE_HI

	lw	$t1, TRISB($t0)
	ori	$t1, $t1, 0x000F
	sw	$t1, TRISB($t0)
	
	lw	$t1, TRISE($t0)
	andi	$t1, $t1, 0xFFF0
	sw	$t1, TRISE($t0)

loop:
	lw	$t1, PORTB($t0)
	andi	$t2, $t1, 0xFFF6
	not     $t1, $t1
	andi	$t1, $t1, 0x0009
	or	$t1, $t1, $t2
	sw	$t1, LATE($t0)
	
	j loop
