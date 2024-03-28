.data
.align 2

.data
# Allocated labels for virtual registers
label_6_v1:
.space 4
label_8_v0:
.space 4

.text
label_0_func:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: addu $fp,$sp,$zero
addu $fp,$sp,$zero
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $ra,0($sp)
sw $ra,0($sp)
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
la $t0,label_6_v1
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_8_v0
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addiu v1,$fp,8
addiu $t5,$fp,8
la $t0,label_6_v1
sw $t5,0($t0)
# Original instruction: addiu v1,v1,0
la $t4,label_6_v1
lw $t4,0($t4)
addiu $t4,$t4,0
la $t0,label_6_v1
sw $t4,0($t0)
# Original instruction: lw v0,0(v1)
la $t5,label_6_v1
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_8_v0
sw $t4,0($t0)
# Original instruction: sw v0,4($fp)
la $t5,label_8_v0
lw $t5,0($t5)
sw $t5,4($fp)
# Original instruction: j label_1_return
j label_1_return
label_1_return:
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_8_v0
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_6_v1
sw $t0,0($t1)
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# Original instruction: lw $ra,-4($fp)
lw $ra,-4($fp)
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# Original instruction: jr $ra
jr $ra

.data
# Allocated labels for virtual registers
label_17_v6:
.space 4
label_14_v2:
.space 4
label_24_v9:
.space 4
label_21_v5:
.space 4
label_19_v8:
.space 4
label_26_v10:
.space 4
label_13_v3:
.space 4
label_22_v4:
.space 4

.text
.globl main
main:
# Original instruction: addu $fp,$sp,$zero
addu $fp,$sp,$zero
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu $sp,$sp,-8
addiu $sp,$sp,-8
# Original instruction: addiu v2,$fp,-12
addiu $t5,$fp,-12
la $t0,label_14_v2
sw $t5,0($t0)
# Original instruction: addiu v2,v2,0
la $t4,label_14_v2
lw $t4,0($t4)
addiu $t4,$t4,0
la $t0,label_14_v2
sw $t4,0($t0)
# Original instruction: li v3,12
li $t5,12
la $t0,label_13_v3
sw $t5,0($t0)
# Original instruction: sw v3,0(v2)
la $t5,label_13_v3
lw $t5,0($t5)
la $t4,label_14_v2
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v4,$fp,-8
addiu $t5,$fp,-8
la $t0,label_22_v4
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,-8
addiu $sp,$sp,-8
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu v6,$fp,-12
addiu $t5,$fp,-12
la $t0,label_17_v6
sw $t5,0($t0)
# Original instruction: lw v8,0(v6)
la $t5,label_17_v6
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_19_v8
sw $t4,0($t0)
# Original instruction: sw v8,8($sp)
la $t5,label_19_v8
lw $t5,0($t5)
sw $t5,8($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: jal label_0_func
jal label_0_func
# Original instruction: lw v5,0($sp)
lw $t5,0($sp)
la $t0,label_21_v5
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# Original instruction: sw v5,0(v4)
la $t5,label_21_v5
lw $t5,0($t5)
la $t4,label_22_v4
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v9,$fp,-8
addiu $t5,$fp,-8
la $t0,label_24_v9
sw $t5,0($t0)
# Original instruction: lw v10,0(v9)
la $t5,label_24_v9
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_26_v10
sw $t4,0($t0)
# Original instruction: li $v0,1
li $v0,1
# Original instruction: add $a0,$zero,v10
la $t5,label_26_v10
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: li $v0,10
li $v0,10
# Original instruction: syscall
syscall

