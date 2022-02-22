.equ SRF_BASE_HI, 0xBF88
.equ TRISE, 0x6100
.equ TRISB, 0x6040
.equ LATE,  0x6120	
.equ PORTB, 0x6050

.data
.text
.globl main

main:
	lui 	$t1, SRF_BASE_HI

	lw	$t2, TRISE($t1)
	andi	$t2, $t2,0xFFFE
	sw	$t2, TRISE($t1)

	lw	$t2, TRISB($t1)	
	ori	$t2, $t2,0x0001
	sw	$t2, TRISB($t1)

lable:
	lw	$t2, PORTB($t1)	
	sw	$t2, LATE($t1)

j lable
