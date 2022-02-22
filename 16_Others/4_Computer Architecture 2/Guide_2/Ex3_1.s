.equ    READ_CORE_TIMER,11
.equ    RESET_CORE_TIMER,12
.equ    MS,20000
.equ    PUT_CHAR,3
.equ    PRINT_INT,6

.data
.text
.globl main


main:  lui     $t0,0xBF88 
while: li 	$t4,16
	sub	$t4,$t4,$t2
	mul	$t4,$t4,64
	move      $a0,$t4
       jal     delay 
       li      $a0,'_'              # 
       li      $v0,PUT_CHAR         # 
       syscall                      #  putChar(' '); 
       lw      $t2,0x6050($t0)      # 
	andi	$t3,$t2,0x000F
	and	$t2,$t3,$t2
	move    $a0,$t2             # 
       li      $a1,0x00040002       # 
       li      $v0,PRINT_INT        # 
       syscall                      #  printInt(++counter, 10); 
       j       while                # } 
       jr      $ra                  # 


delay:          move    $t1,$a0

for:            bltz    $t1,endfor
                li      $v0,RESET_CORE_TIMER
                syscall

while1:         bge     $v0,MS,endwhile
                li      $v0,READ_CORE_TIMER
                syscall
                j       while1

endwhile:       sub     $t1,$t1,1
                j for

endfor:         jr      $ra                                                               
