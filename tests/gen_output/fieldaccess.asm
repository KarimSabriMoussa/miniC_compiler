.data
.align 2

.data
# Allocated labels for virtual registers
label_18_v4:
.space 4
label_11_v3:
.space 4
label_22_v7:
.space 4
label_6_v0:
.space 4
label_5_v1:
.space 4
label_12_v2:
.space 4
label_16_v5:
.space 4
label_24_v6:
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
la $t0,label_6_v0
sw $t5,0($t0)
# Original instruction: addiu v0,v0,0
la $t4,label_6_v0
lw $t4,0($t4)
addiu $t4,$t4,0
la $t0,label_6_v0
sw $t4,0($t0)
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
# Original instruction: addiu v2,$fp,-12
addiu $t5,$fp,-12
la $t0,label_12_v2
sw $t5,0($t0)
# Original instruction: addiu v2,v2,4
la $t4,label_12_v2
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_12_v2
sw $t4,0($t0)
# Original instruction: li v3,2
li $t5,2
la $t0,label_11_v3
sw $t5,0($t0)
# Original instruction: sw v3,0(v2)
la $t5,label_11_v3
lw $t5,0($t5)
la $t4,label_12_v2
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v5,$fp,-12
addiu $t5,$fp,-12
la $t0,label_16_v5
sw $t5,0($t0)
# Original instruction: addiu v5,v5,0
la $t4,label_16_v5
lw $t4,0($t4)
addiu $t4,$t4,0
la $t0,label_16_v5
sw $t4,0($t0)
# Original instruction: lw v4,0(v5)
la $t5,label_16_v5
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_18_v4
sw $t4,0($t0)
# Original instruction: li $v0,1
li $v0,1
# Original instruction: add $a0,$zero,v4
la $t5,label_18_v4
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: addiu v7,$fp,-12
addiu $t5,$fp,-12
la $t0,label_22_v7
sw $t5,0($t0)
# Original instruction: addiu v7,v7,4
la $t4,label_22_v7
lw $t4,0($t4)
addiu $t4,$t4,4
la $t0,label_22_v7
sw $t4,0($t0)
# Original instruction: lw v6,4(v7)
la $t5,label_22_v7
lw $t5,0($t5)
lw $t4,4($t5)
la $t0,label_24_v6
sw $t4,0($t0)
# Original instruction: li $v0,1
li $v0,1
# Original instruction: add $a0,$zero,v6
la $t5,label_24_v6
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: li $v0,10
li $v0,10
# Original instruction: syscall
syscall

