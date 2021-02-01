# Factorial.asm program
# CS 64, Z.Matni, zmatni@ucsb.edu
#

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

#Text Area (i.e. instructions)
.text
main:

	# TODO: Write your code here

exit:
	li $v0, 10
    syscall
