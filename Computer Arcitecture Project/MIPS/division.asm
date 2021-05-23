	.text
main:
	addi	$a0, $zero, 8
	addi	$a1, $zero, 2
	jal	mydiv

	li	$v0, 10			# calls exit command (code 10)
	syscall				# end of program
			
## Divides two numbers, storing integer result on $t0 and rest on $t1
# $a0	Number we will divide
# $a1	Number we will divide for	
mydiv:
	addu	$t7, $zero $zero	# i = 0
		
mydiv_test:
	slt	$t6, $a0, $a1		# if ( a < b )
	bne	$t6, $zero, mydiv_end	# then get out of here
	sub	$a0, $a0, $a1		# else, a = a - b
	addi	$t7, $t7, 1		# and   i = i + 1
	j	mydiv_test		# let's test again

mydiv_end:
	addu	$t0, $zero, $t7		# result = i
	addu	$t1, $zero, $a0		# rest   = a
	jr	$ra						