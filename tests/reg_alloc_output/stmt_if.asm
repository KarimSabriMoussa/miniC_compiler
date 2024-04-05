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
li v1,10
# assign value to variable address
sw v1,0(v0)
# compute the left operand
# get address of the variable
# get address of the variable
addiu v3,$fp,-8
lw v4,0(v3)
# compute the right operand
li v5,9
slt v2,v5,v4
# check if condition is true, branch to else if false
beq v2,$zero,label_2_elseLabel
# get address of variable
# get address of the variable
addiu v6,$fp,-8
# get value to assign
li v7,9
# assign value to variable address
sw v7,0(v6)
b label_3_endLabel
# else branch
label_2_elseLabel:
label_3_endLabel:
label_1_return:
# exiting the program
li $v0,10
syscall

