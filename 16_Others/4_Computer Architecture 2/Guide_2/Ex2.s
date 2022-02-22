.equ	READ_CORE_TIMER,11
.equ	RESET_CORE_TIMER,12
.equ	MS,20000
.equ    PUT_CHAR,3
.equ    PRINT_INT,6

.data
.text
.globl main

  
main:  li      $t0,0 
while: li      $a0,1000
       jal     delay
       li      $a0,' '              # 
       li      $v0,PUT_CHAR         # 
       syscall                      #  putChar(' '); 
       addi    $t0,$t0,1            # 
       move    $a0,$t0              # 
       li      $a1,10               # 
       li      $v0,PRINT_INT        # 
       syscall                      #  printInt(++counter, 10); 
       j       while                # } 
       jr      $ra                  # 


delay:		move	$t1,$a0

for:		bltz	$t1,endfor		
		li	$v0,RESET_CORE_TIMER
		syscall

while1:		bge	$v0,MS,endwhile
		li	$v0,READ_CORE_TIMER
		syscall
		j	while1	

endwhile:	sub	$t1,$t1,1
		j for	

endfor:		jr	$ra
