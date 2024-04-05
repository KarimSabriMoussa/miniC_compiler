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
addiu $sp,$sp,-12
# get address of variable
# get address of the variable
addiu v0,$fp,-8
# get value to assign
li v1,1
# assign value to variable address
sw v1,0(v0)
# get address of variable
# get address of the variable
addiu v2,$fp,-12
# get value to assign
li v3,2
# assign value to variable address
sw v3,0(v2)
# get address of variable
# get address of the variable
addiu v4,$fp,-16
# get value to assign
li v5,3
# assign value to variable address
sw v5,0(v4)
# get address of variable
# get address of the variable
addiu v6,$fp,-16
# get value to assign
# compute the left operand
# get address of the variable
# get address of the variable
addiu v8,$fp,-16
lw v9,0(v8)
# compute the right operand
li v10,1
add v7,v9,v10
# assign value to variable address
sw v7,0(v6)
# get address of variable
# get address of the variable
addiu v11,$fp,-12
# get value to assign
# compute the left operand
# get address of the variable
# get address of the variable
addiu v13,$fp,-12
lw v14,0(v13)
# compute the right operand
li v15,2
add v12,v14,v15
# assign value to variable address
sw v12,0(v11)
label_1_return:
# exiting the program
li $v0,10
syscall

