.data
label_0_i:
.space 4
label_1_j:
.space 4
label_2_c:
.space 1
.align 2
label_3_b:
.space 4
label_4_l:
.space 1
.align 2
label_5_a:
.space 16

.data
# Allocated labels for virtual registers
label_10_v0:
.space 4
label_9_v1:
.space 4

.text
.globl main
main:
# Original instruction: addu $fp,$sp,$zero
addu $fp,$sp,$zero
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# Original instruction: la v0,label_0_i
la $t5,label_0_i
la $t0,label_10_v0
sw $t5,0($t0)
# Original instruction: li v1,1
li $t5,1
la $t0,label_9_v1
sw $t5,0($t0)
# Original instruction: sw v1,0(v0)
la $t5,label_9_v1
lw $t5,0($t5)
la $t4,label_10_v0
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: li $v0,10
li $v0,10
# Original instruction: syscall
syscall

