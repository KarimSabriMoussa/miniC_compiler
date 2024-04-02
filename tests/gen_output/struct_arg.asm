.data
.align 2

.data
# Allocated labels for virtual registers
label_12_v0:
.space 4
label_9_v2:
.space 4
label_31_v7:
.space 4
label_22_v3:
.space 4
label_21_v4:
.space 4
label_19_v5:
.space 4
label_29_v8:
.space 4
label_11_v1:
.space 4
label_32_v6:
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
la $t0,label_12_v0
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_9_v2
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_31_v7
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_22_v3
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_21_v4
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_19_v5
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_29_v8
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_11_v1
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_32_v6
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
# get address of variable
# get address of the structure
# get address of the variable
# Original instruction: addiu v0,$fp,-16
addiu $t5,$fp,-16
la $t0,label_12_v0
sw $t5,0($t0)
# add offset of the member within the struct
# Original instruction: addiu v0,v0,0
la $t4,label_12_v0
lw $t4,0($t4)
addiu $t4,$t4,0
la $t0,label_12_v0
sw $t4,0($t0)
# get value to assign
# get address of the member in memory
# get address of the structure
# get address of the variable
# Original instruction: addiu v2,$fp,4
addiu $t5,$fp,4
la $t0,label_9_v2
sw $t5,0($t0)
# add offset of the member within the struct
# Original instruction: addiu v2,v2,0
la $t4,label_9_v2
lw $t4,0($t4)
addiu $t4,$t4,0
la $t0,label_9_v2
sw $t4,0($t0)
# load value of the member
# Original instruction: lw v1,0(v2)
la $t5,label_9_v2
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_11_v1
sw $t4,0($t0)
# assign value to variable address
# Original instruction: sw v1,0(v0)
la $t5,label_11_v1
lw $t5,0($t5)
la $t4,label_12_v0
lw $t4,0($t4)
sw $t5,0($t4)
# get address of variable
# get address of the structure
# get address of the variable
# Original instruction: addiu v3,$fp,-16
addiu $t5,$fp,-16
la $t0,label_22_v3
sw $t5,0($t0)
# add offset of the member within the struct
# Original instruction: addiu v3,v3,4
la $t4,label_22_v3
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_22_v3
sw $t4,0($t0)
# get value to assign
# get address of the member in memory
# get address of the structure
# get address of the variable
# Original instruction: addiu v5,$fp,4
addiu $t5,$fp,4
la $t0,label_19_v5
sw $t5,0($t0)
# add offset of the member within the struct
# Original instruction: addiu v5,v5,4
la $t4,label_19_v5
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_19_v5
sw $t4,0($t0)
# load value of the member
# Original instruction: lb v4,0(v5)
la $t5,label_19_v5
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_21_v4
sw $t4,0($t0)
# assign value to variable address
# Original instruction: sb v4,0(v3)
la $t5,label_21_v4
lw $t5,0($t5)
la $t4,label_22_v3
lw $t4,0($t4)
sb $t5,0($t4)
# get address of variable
# get address of the structure
# get address of the variable
# Original instruction: addiu v6,$fp,-16
addiu $t5,$fp,-16
la $t0,label_32_v6
sw $t5,0($t0)
# add offset of the member within the struct
# Original instruction: addiu v6,v6,8
la $t4,label_32_v6
lw $t4,0($t4)
addiu $t4,$t4,8
la $t0,label_32_v6
sw $t4,0($t0)
# get value to assign
# get address of the member in memory
# get address of the structure
# get address of the variable
# Original instruction: addiu v8,$fp,4
addiu $t5,$fp,4
la $t0,label_29_v8
sw $t5,0($t0)
# add offset of the member within the struct
# Original instruction: addiu v8,v8,8
la $t4,label_29_v8
lw $t4,0($t4)
addiu $t4,$t4,8
la $t0,label_29_v8
sw $t4,0($t0)
# load value of the member
# Original instruction: lw v7,0(v8)
la $t5,label_29_v8
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_31_v7
sw $t4,0($t0)
# assign value to variable address
# Original instruction: sw v7,0(v6)
la $t5,label_31_v7
lw $t5,0($t5)
la $t4,label_32_v6
lw $t4,0($t4)
sw $t5,0($t4)
# return label of the function func
label_1_return:
# popping all used registers from the stack
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_32_v6
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_11_v1
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_29_v8
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_19_v5
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_21_v4
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_22_v3
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_31_v7
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_9_v2
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_12_v0
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
label_44_v11:
.space 4
label_50_v13:
.space 4
label_38_v9:
.space 4
label_49_v14:
.space 4
label_58_v16:
.space 4
label_60_v20:
.space 4
label_43_v12:
.space 4
label_54_v18:
.space 4
label_37_v10:
.space 4
label_57_v19:
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
# get address of the structure
# get address of the variable
# Original instruction: addiu v9,$fp,-16
addiu $t5,$fp,-16
la $t0,label_38_v9
sw $t5,0($t0)
# add offset of the member within the struct
# Original instruction: addiu v9,v9,0
la $t4,label_38_v9
lw $t4,0($t4)
addiu $t4,$t4,0
la $t0,label_38_v9
sw $t4,0($t0)
# get value to assign
# Original instruction: li v10,10
li $t5,10
la $t0,label_37_v10
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sw v10,0(v9)
la $t5,label_37_v10
lw $t5,0($t5)
la $t4,label_38_v9
lw $t4,0($t4)
sw $t5,0($t4)
# get address of variable
# get address of the structure
# get address of the variable
# Original instruction: addiu v11,$fp,-16
addiu $t5,$fp,-16
la $t0,label_44_v11
sw $t5,0($t0)
# add offset of the member within the struct
# Original instruction: addiu v11,v11,4
la $t4,label_44_v11
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_44_v11
sw $t4,0($t0)
# get value to assign
# Original instruction: li v12,97
li $t5,97
la $t0,label_43_v12
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sb v12,0(v11)
la $t5,label_43_v12
lw $t5,0($t5)
la $t4,label_44_v11
lw $t4,0($t4)
sb $t5,0($t4)
# get address of variable
# get address of the structure
# get address of the variable
# Original instruction: addiu v13,$fp,-16
addiu $t5,$fp,-16
la $t0,label_50_v13
sw $t5,0($t0)
# add offset of the member within the struct
# Original instruction: addiu v13,v13,8
la $t4,label_50_v13
lw $t4,0($t4)
addiu $t4,$t4,8
la $t0,label_50_v13
sw $t4,0($t0)
# get value to assign
# Original instruction: li v14,11
li $t5,11
la $t0,label_49_v14
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sw v14,0(v13)
la $t5,label_49_v14
lw $t5,0($t5)
la $t4,label_50_v13
lw $t4,0($t4)
sw $t5,0($t4)
# move sp by the to allocate space for the args and return value
# Original instruction: addiu $sp,$sp,-12
addiu $sp,$sp,-12
# move sp onto the new frame
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# copy args onto the stack
# get address of the variable
# get address of the variable
# Original instruction: addiu v16,$fp,-16
addiu $t5,$fp,-16
la $t0,label_58_v16
sw $t5,0($t0)
# Original instruction: lw v18,0(v16)
la $t5,label_58_v16
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_54_v18
sw $t4,0($t0)
# Original instruction: sw v18,4($sp)
la $t5,label_54_v18
lw $t5,0($t5)
sw $t5,4($sp)
# Original instruction: lw v19,4(v16)
la $t5,label_58_v16
lw $t5,0($t5)
lw $t4,4($t5)
la $t0,label_57_v19
sw $t4,0($t0)
# Original instruction: sw v19,8($sp)
la $t5,label_57_v19
lw $t5,0($t5)
sw $t5,8($sp)
# Original instruction: lw v20,8(v16)
la $t5,label_58_v16
lw $t5,0($t5)
lw $t4,8($t5)
la $t0,label_60_v20
sw $t4,0($t0)
# Original instruction: sw v20,12($sp)
la $t5,label_60_v20
lw $t5,0($t5)
sw $t5,12($sp)
# Original instruction: jal label_0_func
jal label_0_func
# read return value from the stack
# move sp to deallocate the space of the args and return value
# Original instruction: addiu $sp,$sp,12
addiu $sp,$sp,12
# exiting the program
# Original instruction: li $v0,10
li $v0,10
# Original instruction: syscall
syscall

