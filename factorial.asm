# Factorial.asm program
# CS 64, Z.Matni, zmatni@ucsb.edu
# Gama Aristondo

# Assembly (NON-RECURSIVE) version of:
#   int n, fn=1;
#   cout << "Enter a number:\n";
#   cin >> n;
#   for (int x = 2; x <= n; x++) {
#       fn = fn * x;
#   }
#   cout << "Factorial of " << x << " is:\n" << fn << "\n";
#
.data

	Enter: .asciiz "Enter a number:\n"
    Factorial: .asciiz "Factorial of "
    Answer: .asciiz " is:\n"
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
    li $t1, 1
    beq $t0, $zero, answer
    li $t2, 2

factorial:

    beq $t1, $t0, answer
    mult $t1
    j factorial

answer:

    li $v0, 4
    la $a0, Factorial
    syscall

    li $v0, 1
    move $a0, $t0
    syscall

    li $v0, 4
    la $a0, Answer
    syscall

    li $v0, 1
    move $a0, $t1
    syscall

    li $v0, 4
    la $a0, Newline
    syscall

exit:

	li $v0, 10
    syscall
