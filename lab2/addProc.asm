# test procedure
       .text                   # assembler dir to identify code
                               # can only include instructions or .word

       .globl __start          #

__start:

       addi $a0,$0,1           # load 1 into $a0
       addi $a1,$0,2           # load 2 into $a1
       addi $a2,$0,3           # load 3 into $a2
       addi $a3,$0,4           # load 4 into $a3

       jal add4_2                # call the procedure

       add $a0,$0,$v0          # display the result
       li $v0, 1
       syscall
       la $a0,newl
       li $v0, 4
       syscall

       li $v0, 10
       syscall


add4:	# procedure to add 4 numbers
       
	   move $t0, $s0
	   
	   add $s0,$a0,$a1         # add two of the numbers
       add $t1,$a2,$a3         # add the other two
       add $v0,$s0,$t1         # add the partial sums
       jr $ra				   # return

	   move $s0, $t0

add4_2:
	  
<<<<<<< HEAD
	   addi $sp, $sp, -4
	   sw $s0, 0($sp)
	  
	   add $s0,$a0,$a1
       add $t1,$a2,$a3
       add $v0,$s0,$t1
=======
	 addi $sp, $sp, -4
	 sw $s0, 0($sp)

	 add $s0,$a0,$a1         # add two of the numbers
     add $t1,$a2,$a3         # add the other two
     add $v0,$s0,$t1         # add the partial sums

	 lw $s0, 0($sp)
	 addi $sp, $sp, 4
>>>>>>> FETCH_HEAD

	 jr $ra

.data
newl:   .asciiz "\n"

## end of file
