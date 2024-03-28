.data

.data
# Allocated labels for virtual registers
label_6_v1:
.space 4
label_4_v0:
.space 4

.text
main:
label_1_loop:
# Original instruction: li v0,1
li $t5,1
la $t0,label_4_v0
sw $t5,0($t0)
# Original instruction: beq v0,$zero,label_2_endLabel
la $t5,label_4_v0
lw $t5,0($t5)
beq $t5,$zero,label_2_endLabel
# Original instruction: li v1,1
li $t5,1
la $t0,label_6_v1
sw $t5,0($t0)
# Original instruction: li $v0,1
li $v0,1
# Original instruction: add $a0,$zero,v1
la $t5,label_6_v1
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: b label_2_endLabel
b label_2_endLabel
# Original instruction: b label_1_loop
b label_1_loop
label_2_endLabel:
# Original instruction: li $v0,10
li $v0,10
# Original instruction: syscall
syscall

