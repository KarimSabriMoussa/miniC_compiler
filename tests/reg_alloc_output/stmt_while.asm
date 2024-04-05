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
label_2_loop:
# compute the left operand
# get address of the variable
# get address of the variable
addiu v3,$fp,-8
lw v4,0(v3)
# compute the right operand
li v5,1
xor v2,v4,v5
sltiu v2,v2,1
# check if condition is true, branch to end if false
beq v2,$zero,label_3_endLabel
# get address of variable
# get address of the variable
addiu v6,$fp,-8
# get value to assign
# compute the left operand
# get address of the variable
# get address of the variable
addiu v8,$fp,-8
lw v9,0(v8)
# compute the right operand
li v10,1
add v7,v9,v10
# assign value to variable address
sw v7,0(v6)
# branch to start of loop to check condition
b label_2_loop
label_3_endLabel:
label_1_return:
# exiting the program
li $v0,10
syscall

