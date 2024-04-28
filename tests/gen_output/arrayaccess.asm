.data
.align 2

.data
# Allocated labels for virtual registers
label_4_v1:
.space 4
label_12_v5:
.space 4
label_9_v2:
.space 4
label_5_v0:
.space 4
label_8_v3:
.space 4
label_13_v4:
.space 4

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
# Original instruction: addiu v0,$fp,-8
addiu $t5,$fp,-8
la $t0,label_5_v0
sw $t5,0($t0)
# get value to assign
# Original instruction: li v1,97
li $t5,97
la $t0,label_4_v1
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sb v1,0(v0)
la $t5,label_4_v1
lw $t5,0($t5)
la $t4,label_5_v0
lw $t4,0($t4)
sb $t5,0($t4)
# get address of variable
# Original instruction: addiu v2,$fp,-12
addiu $t5,$fp,-12
la $t0,label_9_v2
sw $t5,0($t0)
# get value to assign
# Original instruction: li v3,1
li $t5,1
la $t0,label_8_v3
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sw v3,0(v2)
la $t5,label_8_v3
lw $t5,0($t5)
la $t4,label_9_v2
lw $t4,0($t4)
sw $t5,0($t4)
# get address of variable
# Original instruction: addiu v4,$fp,-16
addiu $t5,$fp,-16
la $t0,label_13_v4
sw $t5,0($t0)
# get value to assign
# Original instruction: li v5,99
li $t5,99
la $t0,label_12_v5
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sb v5,0(v4)
la $t5,label_12_v5
lw $t5,0($t5)
la $t4,label_13_v4
lw $t4,0($t4)
sb $t5,0($t4)
label_1_return:
# exiting the program
# Original instruction: li $v0,10
li $v0,10
# Original instruction: syscall
syscall

