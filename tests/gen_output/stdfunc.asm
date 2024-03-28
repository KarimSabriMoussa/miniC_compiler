.data
.align 2
label_0_:
.asciiz "string"
.align 2

.data
# Allocated labels for virtual registers
label_9_v4:
.space 4
label_7_v2:
.space 4
label_3_v0:
.space 4
label_5_v1:
.space 4
label_8_v3:
.space 4

.text
.globl main
main:
# Original instruction: addu $fp,$sp,$zero
addu $fp,$sp,$zero
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# Original instruction: li v0,1
li $t5,1
la $t0,label_3_v0
sw $t5,0($t0)
# Original instruction: li $v0,1
li $v0,1
# Original instruction: add $a0,$zero,v0
la $t5,label_3_v0
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: li v1,97
li $t5,97
la $t0,label_5_v1
sw $t5,0($t0)
# Original instruction: li $v0,11
li $v0,11
# Original instruction: add $a0,$zero,v1
la $t5,label_5_v1
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: la v2,label_0_
la $t5,label_0_
la $t0,label_7_v2
sw $t5,0($t0)
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v2
la $t5,label_7_v2
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: li $v0,12
li $v0,12
# Original instruction: syscall
syscall
# Original instruction: add v3,$v0,$zero
add $t5,$v0,$zero
la $t0,label_8_v3
sw $t5,0($t0)
# Original instruction: li $v0,5
li $v0,5
# Original instruction: syscall
syscall
# Original instruction: add v4,$v0,$zero
add $t5,$v0,$zero
la $t0,label_9_v4
sw $t5,0($t0)
# Original instruction: li $v0,10
li $v0,10
# Original instruction: syscall
syscall

