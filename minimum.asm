# minimum.asm program
# CS 64, Z.Matni, zmatni@ucsb.edu
# Gama Aristondo

.data

	# TODO: Complete these declarations / initializations

	Enter: .asciiz "Enter the next number:\n"
	Min: .asciiz "Minimum: "
    Newline: .asciiz "\n"

#Text Area (i.e. instructions)
.text

main:

    li $v0, 4
    la $a0, Enter
    syscall

    li $v0, 5
    syscall

    # First number loaded in
    move $t0, $v0

    li $v0, 4
    la $a0, Newline
    syscall

    li $v0, 4
    la $a0, Enter
    syscall

    li $v0, 5
    syscall

    # Second number loaded in
    move $t1, $v0

    li $v0, 4
    la $a0, Newline
    syscall

    li $v0, 4
    la $a0, Enter
    syscall

    li $v0, 5
    syscall

    # Third number loaded in
    move $t2, $v0

    # Begin the comparing process
    slt $t3, $t0, $t1
    bne $t3, $zero, second_less

first_less:

    slt $t3, $t0, $t2
    bne $t3, $zero, third_answer

first_answer:
    
    move $t4, $t0
    j print_answer

second_less:
    
    slt $t3, $t1, $t2
    bne $t3, $zero, third_answer

second_answer:

    move $t4, $t1
    j print_answer

third_answer:

    move $t4, $t2
    j print_answer

print_answer:
    
    li $v0, 4
    la $a0, Min
    syscall

    li $v0, 1
    move $a0, $t4
    syscall

exit:
    li $v0, 10
    syscall
