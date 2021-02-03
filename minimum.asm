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
    la $a0, Enter
    syscall

    li $v0, 5
    syscall

    # Second number loaded in
    move $t1, $v0

    li $v0, 4
    la $a0, Enter
    syscall

    li $v0, 5
    syscall

    # Third number loaded in
    move $t2, $v0

    # Begin the comparing process
    blt $t0, $t1, second
    j third

second:

    blt $t0, $t2, first_answer
    j third_answer

third:

    blt $t1, $t2, second_answer
    j third_answer

first_answer:

    li $v0, 4
    la $a0, Min
    syscall

    move $a0, $t0
    li $v0, 1
    syscall
    j exit

second_answer:

    li $v0, 4
    la $a0, Min
    syscall

    move $a0, $t1
    li $v0, 1
    syscall
    j exit

third_answer:

    li $v0, 4
    la $a0, Min
    syscall

    move $a0, $t2
    li $v0, 1
    syscall

exit:

    li $v0, 4
    la $a0, Newline
    syscall
    li $v0, 10
    syscall
