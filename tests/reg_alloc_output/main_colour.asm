.data
.align 2

.text
# entry point main function
.globl main
main:
# initialising frame pointer as the value of the stack
# Original instruction: addu $fp,$sp,$zero
addu $fp,$sp,$zero
# moving sp by a word
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# moving sp by the size of the local variables
# Original instruction: addiu $sp,$sp,-12
addiu $sp,$sp,-12
# get address of variable
# get address of the variable
# Original instruction: addiu v0,$fp,-8
addiu $t0,$fp,-8
# get value to assign
# Original instruction: li v1,1
li $t1,1
# assign value to variable address
# Original instruction: sw v1,0(v0)
sw $t1,0($t0)
# get address of variable
# get address of the variable
# Original instruction: addiu v2,$fp,-12
addiu $t1,$fp,-12
# get value to assign
# Original instruction: li v3,2
li $t0,2
# assign value to variable address
# Original instruction: sw v3,0(v2)
sw $t0,0($t1)
# get address of variable
# get address of the variable
# Original instruction: addiu v4,$fp,-16
addiu $t0,$fp,-16
# get value to assign
# Original instruction: li v5,3
li $t1,3
# assign value to variable address
# Original instruction: sw v5,0(v4)
sw $t1,0($t0)
# get address of variable
# get address of the variable
# Original instruction: addiu v6,$fp,-16
addiu $t1,$fp,-16
# get value to assign
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v8,$fp,-16
addiu $t0,$fp,-16
# Original instruction: lw v9,0(v8)
lw $t0,0($t0)
# compute the right operand
# Original instruction: li v10,1
li $t2,1
# Original instruction: add v7,v9,v10
add $t0,$t0,$t2
# assign value to variable address
# Original instruction: sw v7,0(v6)
sw $t0,0($t1)
# get address of variable
# get address of the variable
# Original instruction: addiu v11,$fp,-12
addiu $t2,$fp,-12
# get value to assign
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v13,$fp,-12
addiu $t0,$fp,-12
# Original instruction: lw v14,0(v13)
lw $t0,0($t0)
# compute the right operand
# Original instruction: li v15,2
li $t1,2
# Original instruction: add v12,v14,v15
add $t0,$t0,$t1
# assign value to variable address
# Original instruction: sw v12,0(v11)
sw $t0,0($t2)
label_1_return:
# exiting the program
# Original instruction: li $v0,10
li $v0,10
# Original instruction: syscall
syscall

