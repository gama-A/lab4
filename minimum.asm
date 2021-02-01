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

    move $t0, $v0

    li $v0, 4
    la $a0, Newline
    syscall

    li $v0, 4
    la $a0, Enter
    syscall

    li $v0, 5
    syscall

    move $t1, $v0

    li $v0, 4
    la $a0, Newline
    syscall

    li $v0, 4
    la $a0, Enter
    syscall

    li $v0, 5
    syscall

    move $t2, $v0

exit:
    li $v0, 10
    syscall
