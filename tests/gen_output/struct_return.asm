.data
.align 2

.data
# Allocated labels for virtual registers
label_8_v0:
.space 4
label_24_v8:
.space 4
label_27_v9:
.space 4
label_14_v2:
.space 4
label_20_v4:
.space 4
label_30_v10:
.space 4
label_13_v3:
.space 4
label_28_v6:
.space 4
label_7_v1:
.space 4
label_19_v5:
.space 4

.text
label_0_func:
# storing the old fp value at the start of the frame
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# setting the new fp to the value of the sp
# Original instruction: addu $fp,$sp,$zero
addu $fp,$sp,$zero
# moving sp by a word to reserve space for the return address
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# storing the return address in the frame
# Original instruction: sw $ra,0($sp)
sw $ra,0($sp)
# moving sp by the size of the local variables
# Original instruction: addiu $sp,$sp,-12
addiu $sp,$sp,-12
# pushing all used registers onto the stack
# Original instruction: pushRegisters
la $t0,label_8_v0
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_24_v8
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_27_v9
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_14_v2
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_20_v4
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_30_v10
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_13_v3
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_28_v6
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_7_v1
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_19_v5
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
# get address of variable
# get address of the structure
# get address of the variable
# Original instruction: addiu v0,$fp,-16
addiu $t5,$fp,-16
la $t0,label_8_v0
sw $t5,0($t0)
# add offset of the member within the struct
# Original instruction: addiu v0,v0,0
la $t4,label_8_v0
lw $t4,0($t4)
addiu $t4,$t4,0
la $t0,label_8_v0
sw $t4,0($t0)
# get value to assign
# Original instruction: li v1,10
li $t5,10
la $t0,label_7_v1
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sw v1,0(v0)
la $t5,label_7_v1
lw $t5,0($t5)
la $t4,label_8_v0
lw $t4,0($t4)
sw $t5,0($t4)
# get address of variable
# get address of the structure
# get address of the variable
# Original instruction: addiu v2,$fp,-16
addiu $t5,$fp,-16
la $t0,label_14_v2
sw $t5,0($t0)
# add offset of the member within the struct
# Original instruction: addiu v2,v2,4
la $t4,label_14_v2
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_14_v2
sw $t4,0($t0)
# get value to assign
# Original instruction: li v3,97
li $t5,97
la $t0,label_13_v3
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sb v3,0(v2)
la $t5,label_13_v3
lw $t5,0($t5)
la $t4,label_14_v2
lw $t4,0($t4)
sb $t5,0($t4)
# get address of variable
# get address of the structure
# get address of the variable
# Original instruction: addiu v4,$fp,-16
addiu $t5,$fp,-16
la $t0,label_20_v4
sw $t5,0($t0)
# add offset of the member within the struct
# Original instruction: addiu v4,v4,8
la $t4,label_20_v4
lw $t4,0($t4)
addiu $t4,$t4,8
la $t0,label_20_v4
sw $t4,0($t0)
# get value to assign
# Original instruction: li v5,11
li $t5,11
la $t0,label_19_v5
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sw v5,0(v4)
la $t5,label_19_v5
lw $t5,0($t5)
la $t4,label_20_v4
lw $t4,0($t4)
sw $t5,0($t4)
# computing the return value
# get address of the variable
# get address of the variable
# Original instruction: addiu v6,$fp,-16
addiu $t5,$fp,-16
la $t0,label_28_v6
sw $t5,0($t0)
# copying the return value into the previous frame
# Original instruction: lw v8,0(v6)
la $t5,label_28_v6
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_24_v8
sw $t4,0($t0)
# Original instruction: sw v8,4($fp)
la $t5,label_24_v8
lw $t5,0($t5)
sw $t5,4($fp)
# Original instruction: lw v9,4(v6)
la $t5,label_28_v6
lw $t5,0($t5)
lw $t4,4($t5)
la $t0,label_27_v9
sw $t4,0($t0)
# Original instruction: sw v9,8($fp)
la $t5,label_27_v9
lw $t5,0($t5)
sw $t5,8($fp)
# Original instruction: lw v10,8(v6)
la $t5,label_28_v6
lw $t5,0($t5)
lw $t4,8($t5)
la $t0,label_30_v10
sw $t4,0($t0)
# Original instruction: sw v10,12($fp)
la $t5,label_30_v10
lw $t5,0($t5)
sw $t5,12($fp)
# jumping to the return label
# Original instruction: j label_1_return
j label_1_return
# return label of the function func
label_1_return:
# popping all used registers from the stack
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_19_v5
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_7_v1
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_28_v6
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_13_v3
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_30_v10
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_20_v4
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_14_v2
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_27_v9
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_24_v8
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_8_v0
sw $t0,0($t1)
# setting the sp to the top of the old frame
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# load the return address from the stack
# Original instruction: lw $ra,-4($fp)
lw $ra,-4($fp)
# load the old frame pointer into fp
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# jump to the return address
# Original instruction: jr $ra
jr $ra

.data
# Allocated labels for virtual registers
label_39_v14:
.space 4
label_41_v12:
.space 4
label_44_v11:
.space 4
label_49_v17:
.space 4
label_35_v13:
.space 4
label_43_v15:
.space 4
label_50_v16:
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
# get address of the variable
# Original instruction: addiu v11,$fp,-16
addiu $t5,$fp,-16
la $t0,label_44_v11
sw $t5,0($t0)
# get value to assign
# move sp by the to allocate space for the args and return value
# Original instruction: addiu $sp,$sp,-12
addiu $sp,$sp,-12
# move sp onto the new frame
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# copy args onto the stack
# Original instruction: jal label_0_func
jal label_0_func
# read return value from the stack
# Original instruction: addiu v12,$sp,0
addiu $t5,$sp,0
la $t0,label_41_v12
sw $t5,0($t0)
# move sp to deallocate the space of the args and return value
# Original instruction: addiu $sp,$sp,12
addiu $sp,$sp,12
# assign value to variable address
# Original instruction: lw v13,0(v12)
la $t5,label_41_v12
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_35_v13
sw $t4,0($t0)
# Original instruction: sw v13,0(v11)
la $t5,label_35_v13
lw $t5,0($t5)
la $t4,label_44_v11
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: lw v14,4(v12)
la $t5,label_41_v12
lw $t5,0($t5)
lw $t4,4($t5)
la $t0,label_39_v14
sw $t4,0($t0)
# Original instruction: sw v14,4(v11)
la $t5,label_39_v14
lw $t5,0($t5)
la $t4,label_44_v11
lw $t4,0($t4)
sw $t5,4($t4)
# Original instruction: lw v15,8(v12)
la $t5,label_41_v12
lw $t5,0($t5)
lw $t4,8($t5)
la $t0,label_43_v15
sw $t4,0($t0)
# Original instruction: sw v15,8(v11)
la $t5,label_43_v15
lw $t5,0($t5)
la $t4,label_44_v11
lw $t4,0($t4)
sw $t5,8($t4)
# get address of variable
# get address of the structure
# get address of the variable
# Original instruction: addiu v16,$fp,-16
addiu $t5,$fp,-16
la $t0,label_50_v16
sw $t5,0($t0)
# add offset of the member within the struct
# Original instruction: addiu v16,v16,0
la $t4,label_50_v16
lw $t4,0($t4)
addiu $t4,$t4,0
la $t0,label_50_v16
sw $t4,0($t0)
# get value to assign
# Original instruction: li v17,1
li $t5,1
la $t0,label_49_v17
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sw v17,0(v16)
la $t5,label_49_v17
lw $t5,0($t5)
la $t4,label_50_v16
lw $t4,0($t4)
sw $t5,0($t4)
# exiting the program
# Original instruction: li $v0,10
li $v0,10
# Original instruction: syscall
syscall

