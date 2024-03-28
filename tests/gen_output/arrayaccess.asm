.data
.align 2

.data
# Allocated labels for virtual registers
label_22_v5:
.space 4
label_20_v7:
.space 4
label_5_v3:
.space 4
label_24_v9:
.space 4
label_12_v0:
.space 4
label_11_v4:
.space 4
label_19_v6:
.space 4
label_17_v8:
.space 4
label_7_v1:
.space 4
label_8_v2:
.space 4

.text
.globl main
main:
# Original instruction: addu $fp,$sp,$zero
addu $fp,$sp,$zero
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu $sp,$sp,-40
addiu $sp,$sp,-40
# Original instruction: addiu v1,$fp,-44
addiu $t5,$fp,-44
la $t0,label_7_v1
sw $t5,0($t0)
# Original instruction: li v2,0
li $t5,0
la $t0,label_8_v2
sw $t5,0($t0)
# Original instruction: li v3,4
li $t5,4
la $t0,label_5_v3
sw $t5,0($t0)
# Original instruction: mul v2,v2,v3
la $t3,label_8_v2
lw $t3,0($t3)
la $t4,label_5_v3
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_8_v2
sw $t3,0($t0)
# Original instruction: add v0,v1,v2
la $t5,label_7_v1
lw $t5,0($t5)
la $t4,label_8_v2
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_12_v0
sw $t3,0($t0)
# Original instruction: li v4,1
li $t5,1
la $t0,label_11_v4
sw $t5,0($t0)
# Original instruction: sw v4,0(v0)
la $t5,label_11_v4
lw $t5,0($t5)
la $t4,label_12_v0
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v6,$fp,-44
addiu $t5,$fp,-44
la $t0,label_19_v6
sw $t5,0($t0)
# Original instruction: li v7,0
li $t5,0
la $t0,label_20_v7
sw $t5,0($t0)
# Original instruction: li v8,4
li $t5,4
la $t0,label_17_v8
sw $t5,0($t0)
# Original instruction: mul v7,v7,v8
la $t3,label_20_v7
lw $t3,0($t3)
la $t4,label_17_v8
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_20_v7
sw $t3,0($t0)
# Original instruction: add v5,v6,v7
la $t5,label_19_v6
lw $t5,0($t5)
la $t4,label_20_v7
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_22_v5
sw $t3,0($t0)
# Original instruction: lw v9,0(v5)
la $t5,label_22_v5
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_24_v9
sw $t4,0($t0)
# Original instruction: li $v0,1
li $v0,1
# Original instruction: add $a0,$zero,v9
la $t5,label_24_v9
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: li $v0,10
li $v0,10
# Original instruction: syscall
syscall

