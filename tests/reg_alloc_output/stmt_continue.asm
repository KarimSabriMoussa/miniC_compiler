.data
.align 2

.text
# entry point main function 
.globl main
main:
# initialising frame pointer as the value of the stack
addu $fp,$sp,$zero
# moving sp by a word
addiu $sp,$sp,-4
# moving sp by the size of the local variables
addiu $sp,$sp,0
label_2_loop:
li v0,1
# check if condition is true, branch to end if false
beq v0,$zero,label_3_endLabel
b label_2_loop
# branch to start of loop to check condition
b label_2_loop
label_3_endLabel:
label_1_return:
# exiting the program
li $v0,10
syscall

