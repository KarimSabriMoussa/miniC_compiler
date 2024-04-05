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
addiu $sp,$sp,-4
# get address of variable
# get address of the variable
addiu v0,$fp,-8
# get value to assign
li v1,1
# assign value to variable address
sw v1,0(v0)
# get address of the variable
# get address of the variable
addiu v2,$fp,-8
lw v3,0(v2)
# check if condition is true, branch to else if false
beq v3,$zero,label_2_elseLabel
# branching to the return label
b label_1_return
b label_3_endLabel
# else branch
label_2_elseLabel:
# branching to the return label
b label_1_return
label_3_endLabel:
label_1_return:
# exiting the program
li $v0,10
syscall

