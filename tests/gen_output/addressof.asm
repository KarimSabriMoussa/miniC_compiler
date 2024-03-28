.data
.align 2

.data
# Allocated labels for virtual registers
label_12_v5:
.space 4
label_3_v1:
.space 4
label_8_v2:
.space 4
label_7_v3:
.space 4
label_10_v4:
.space 4
label_14_v6:
.space 4
label_4_v0:
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
# Original instruction: addiu v0,$fp,-12
addiu $t5,$fp,-12
la $t0,label_4_v0
sw $t5,0($t0)
# Original instruction: li v1,11
li $t5,11
la $t0,label_3_v1
sw $t5,0($t0)
# Original instruction: sw v1,0(v0)
la $t5,label_3_v1
lw $t5,0($t5)
la $t4,label_4_v0
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v2,$fp,-8
addiu $t5,$fp,-8
la $t0,label_8_v2
sw $t5,0($t0)
# Original instruction: addiu v3,$fp,-12
addiu $t5,$fp,-12
la $t0,label_7_v3
sw $t5,0($t0)
# Original instruction: sw v3,0(v2)
la $t5,label_7_v3
lw $t5,0($t5)
la $t4,label_8_v2
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v4,$fp,-8
addiu $t5,$fp,-8
la $t0,label_10_v4
sw $t5,0($t0)
# Original instruction: lw v5,0(v4)
la $t5,label_10_v4
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_12_v5
sw $t4,0($t0)
# Original instruction: lw v6,0(v5)
la $t5,label_12_v5
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_14_v6
sw $t4,0($t0)
# Original instruction: li $v0,1
li $v0,1
# Original instruction: add $a0,$zero,v6
la $t5,label_14_v6
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: li $v0,10
li $v0,10
# Original instruction: syscall
syscall

