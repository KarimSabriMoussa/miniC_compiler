.data
.align 2

.data
# Allocated labels for virtual registers
label_4_v0:
.space 4

.text
label_0_foo:
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
la $t0,label_4_v0
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: li v0,2
li $t5,2
la $t0,label_4_v0
sw $t5,0($t0)
# Original instruction: sw v0,4($fp)
la $t5,label_4_v0
lw $t5,0($t5)
sw $t5,4($fp)
# Original instruction: j label_1_return
j label_1_return
label_1_return:
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_4_v0
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
label_8_v1:
.space 4
label_7_v2:
.space 4
label_10_v3:
.space 4
label_12_v4:
.space 4

.text
.globl main
main:
# Original instruction: addu $fp,$sp,$zero
addu $fp,$sp,$zero
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu v1,$fp,-8
addiu $t5,$fp,-8
la $t0,label_8_v1
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal label_0_foo
jal label_0_foo
# Original instruction: nop
nop
# Original instruction: lw v2,0($sp)
lw $t5,0($sp)
la $t0,label_7_v2
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: sw v2,0(v1)
la $t5,label_7_v2
lw $t5,0($t5)
la $t4,label_8_v1
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v3,$fp,-8
addiu $t5,$fp,-8
la $t0,label_10_v3
sw $t5,0($t0)
# Original instruction: lw v4,0(v3)
la $t5,label_10_v3
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_12_v4
sw $t4,0($t0)
# Original instruction: li $v0,1
li $v0,1
# Original instruction: add $a0,$zero,v4
la $t5,label_12_v4
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: li $v0,10
li $v0,10
# Original instruction: syscall
syscall

