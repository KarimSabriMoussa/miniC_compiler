.data
.align 2
label_0_:
.asciiz "hello world\n"
.align 2

.data
# Allocated labels for virtual registers
label_3_v0:
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
# Original instruction: la v0,label_0_
la $t5,label_0_
la $t0,label_3_v0
sw $t5,0($t0)
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v0
la $t5,label_3_v0
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: li $v0,10
li $v0,10
# Original instruction: syscall
syscall

