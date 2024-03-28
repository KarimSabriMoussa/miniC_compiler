.data

.data
# Allocated labels for virtual registers

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
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: pushRegisters
label_1_return:
# Original instruction: popRegisters
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
label_6_v0:
.space 4
label_8_v2:
.space 4
label_5_v1:
.space 4
label_10_v3:
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
# Original instruction: addiu v0,$fp,-8
addiu $t5,$fp,-8
la $t0,label_6_v0
sw $t5,0($t0)
# Original instruction: li v1,1
li $t5,1
la $t0,label_5_v1
sw $t5,0($t0)
# Original instruction: sw v1,0(v0)
la $t5,label_5_v1
lw $t5,0($t5)
la $t4,label_6_v0
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v2,$fp,-8
addiu $t5,$fp,-8
la $t0,label_8_v2
sw $t5,0($t0)
# Original instruction: lw v3,0(v2)
la $t5,label_8_v2
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_10_v3
sw $t4,0($t0)
# Original instruction: li $v0,1
li $v0,1
# Original instruction: add $a0,$zero,v3
la $t5,label_10_v3
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: li $v0,10
li $v0,10
# Original instruction: syscall
syscall

