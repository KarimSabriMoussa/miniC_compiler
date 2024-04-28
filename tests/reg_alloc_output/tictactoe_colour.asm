.data
.align 2
label_0_:
.asciiz "\n"
.align 2
label_1_:
.asciiz "     1   2   3\n"
.align 2
label_2_:
.asciiz "   +---+---+---+\n"
.align 2
label_3_:
.asciiz "a  | "
.align 2
label_4_:
.asciiz " | "
.align 2
label_5_:
.asciiz " | "
.align 2
label_6_:
.asciiz " |\n"
.align 2
label_7_:
.asciiz "   +---+---+---+\n"
.align 2
label_8_:
.asciiz "b  | "
.align 2
label_9_:
.asciiz " | "
.align 2
label_10_:
.asciiz " | "
.align 2
label_11_:
.asciiz " |\n"
.align 2
label_12_:
.asciiz "   +---+---+---+\n"
.align 2
label_13_:
.asciiz "c  | "
.align 2
label_14_:
.asciiz " | "
.align 2
label_15_:
.asciiz " | "
.align 2
label_16_:
.asciiz " |\n"
.align 2
label_17_:
.asciiz "   +---+---+---+\n"
.align 2
label_18_:
.asciiz "\n"
.align 2
label_19_:
.asciiz "Player "
.align 2
label_20_:
.asciiz " has won!\n"
.align 2
label_21_:
.asciiz "Player "
.align 2
label_22_:
.asciiz " select move (e.g. a2)>"
.align 2
label_23_:
.asciiz "That is not a valid move!\n"
.align 2
label_24_:
.asciiz "That move is not possible!\n"
.align 2
label_25_:
.asciiz "It\'s a draw!\n"
.align 2
label_26_:
.asciiz "Play again? (y/n)> "
.align 2
label_27_a11:
.space 1
.align 2
label_28_a12:
.space 1
.align 2
label_29_a13:
.space 1
.align 2
label_30_a21:
.space 1
.align 2
label_31_a22:
.space 1
.align 2
label_32_a23:
.space 1
.align 2
label_33_a31:
.space 1
.align 2
label_34_a32:
.space 1
.align 2
label_35_a33:
.space 1
.align 2
label_36_empty:
.space 1
.align 2

.text
label_37_reset:
# storing the old fp value at the start of the frame
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# setting the new fp to the value of the sp
# Original instruction: addu $fp,$sp,$zero
addu $fp,$sp,$zero
# moving sp by a word to reserve space for the return address
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# storing the return address in the frame
# Original instruction: sw $ra,0($sp)
sw $ra,0($sp)
# moving sp by the size of the local variables
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# pushing all used registers onto the stack
# Original instruction: pushRegisters
addi $sp,$sp,-4
sw $t0,0($sp)
addi $sp,$sp,-4
sw $t1,0($sp)
# get address of variable
# Original instruction: la v0,label_27_a11
la $t0,label_27_a11
# get value to assign
# get address of the variable
# get address of variable
# Original instruction: la v1,label_36_empty
la $t1,label_36_empty
# Original instruction: lb v2,0(v1)
lb $t1,0($t1)
# assign value to variable address
# Original instruction: sb v2,0(v0)
sb $t1,0($t0)
# get address of variable
# Original instruction: la v3,label_28_a12
la $t1,label_28_a12
# get value to assign
# get address of the variable
# get address of variable
# Original instruction: la v4,label_36_empty
la $t0,label_36_empty
# Original instruction: lb v5,0(v4)
lb $t0,0($t0)
# assign value to variable address
# Original instruction: sb v5,0(v3)
sb $t0,0($t1)
# get address of variable
# Original instruction: la v6,label_29_a13
la $t0,label_29_a13
# get value to assign
# get address of the variable
# get address of variable
# Original instruction: la v7,label_36_empty
la $t1,label_36_empty
# Original instruction: lb v8,0(v7)
lb $t1,0($t1)
# assign value to variable address
# Original instruction: sb v8,0(v6)
sb $t1,0($t0)
# get address of variable
# Original instruction: la v9,label_30_a21
la $t1,label_30_a21
# get value to assign
# get address of the variable
# get address of variable
# Original instruction: la v10,label_36_empty
la $t0,label_36_empty
# Original instruction: lb v11,0(v10)
lb $t0,0($t0)
# assign value to variable address
# Original instruction: sb v11,0(v9)
sb $t0,0($t1)
# get address of variable
# Original instruction: la v12,label_31_a22
la $t1,label_31_a22
# get value to assign
# get address of the variable
# get address of variable
# Original instruction: la v13,label_36_empty
la $t0,label_36_empty
# Original instruction: lb v14,0(v13)
lb $t0,0($t0)
# assign value to variable address
# Original instruction: sb v14,0(v12)
sb $t0,0($t1)
# get address of variable
# Original instruction: la v15,label_32_a23
la $t1,label_32_a23
# get value to assign
# get address of the variable
# get address of variable
# Original instruction: la v16,label_36_empty
la $t0,label_36_empty
# Original instruction: lb v17,0(v16)
lb $t0,0($t0)
# assign value to variable address
# Original instruction: sb v17,0(v15)
sb $t0,0($t1)
# get address of variable
# Original instruction: la v18,label_33_a31
la $t1,label_33_a31
# get value to assign
# get address of the variable
# get address of variable
# Original instruction: la v19,label_36_empty
la $t0,label_36_empty
# Original instruction: lb v20,0(v19)
lb $t0,0($t0)
# assign value to variable address
# Original instruction: sb v20,0(v18)
sb $t0,0($t1)
# get address of variable
# Original instruction: la v21,label_34_a32
la $t0,label_34_a32
# get value to assign
# get address of the variable
# get address of variable
# Original instruction: la v22,label_36_empty
la $t1,label_36_empty
# Original instruction: lb v23,0(v22)
lb $t1,0($t1)
# assign value to variable address
# Original instruction: sb v23,0(v21)
sb $t1,0($t0)
# get address of variable
# Original instruction: la v24,label_35_a33
la $t0,label_35_a33
# get value to assign
# get address of the variable
# get address of variable
# Original instruction: la v25,label_36_empty
la $t1,label_36_empty
# Original instruction: lb v26,0(v25)
lb $t1,0($t1)
# assign value to variable address
# Original instruction: sb v26,0(v24)
sb $t1,0($t0)
# return label of the function reset
label_38_return:
# popping all used registers from the stack
# Original instruction: popRegisters
lw $t1,0($sp)
addi $sp,$sp,4
lw $t0,0($sp)
addi $sp,$sp,4
# setting the sp to the top of the old frame
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# load the return address from the stack
# Original instruction: lw $ra,-4($fp)
lw $ra,-4($fp)
# load the old frame pointer into fp
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# jump to the return address
# Original instruction: jr $ra
jr $ra

.text
label_39_full:
# storing the old fp value at the start of the frame
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# setting the new fp to the value of the sp
# Original instruction: addu $fp,$sp,$zero
addu $fp,$sp,$zero
# moving sp by a word to reserve space for the return address
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# storing the return address in the frame
# Original instruction: sw $ra,0($sp)
sw $ra,0($sp)
# moving sp by the size of the local variables
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# pushing all used registers onto the stack
# Original instruction: pushRegisters
addi $sp,$sp,-4
sw $t0,0($sp)
addi $sp,$sp,-4
sw $t1,0($sp)
addi $sp,$sp,-4
sw $t2,0($sp)
# get address of variable
# Original instruction: addiu v27,$fp,-8
addiu $t0,$fp,-8
# get value to assign
# Original instruction: li v28,0
li $t1,0
# assign value to variable address
# Original instruction: sw v28,0(v27)
sw $t1,0($t0)
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v30,label_27_a11
la $t0,label_27_a11
# Original instruction: lb v31,0(v30)
lb $t0,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: la v32,label_36_empty
la $t1,label_36_empty
# Original instruction: lb v33,0(v32)
lb $t1,0($t1)
# Original instruction: xor v29,v31,v33
xor $t0,$t0,$t1
# Original instruction: sltu v29,$zero,v29
sltu $t0,$zero,$t0
# check if condition is true, branch to else if false
# Original instruction: beq v29,$zero,label_41_elseLabel
beq $t0,$zero,label_41_elseLabel
# get address of variable
# Original instruction: addiu v34,$fp,-8
addiu $t1,$fp,-8
# get value to assign
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: addiu v36,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v37,0(v36)
lw $t0,0($t0)
# compute the right operand
# Original instruction: li v38,1
li $t2,1
# Original instruction: add v35,v37,v38
add $t0,$t0,$t2
# assign value to variable address
# Original instruction: sw v35,0(v34)
sw $t0,0($t1)
# Original instruction: b label_42_endLabel
b label_42_endLabel
# else branch
label_41_elseLabel:
label_42_endLabel:
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v40,label_30_a21
la $t0,label_30_a21
# Original instruction: lb v41,0(v40)
lb $t1,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: la v42,label_36_empty
la $t0,label_36_empty
# Original instruction: lb v43,0(v42)
lb $t0,0($t0)
# Original instruction: xor v39,v41,v43
xor $t0,$t1,$t0
# Original instruction: sltu v39,$zero,v39
sltu $t0,$zero,$t0
# check if condition is true, branch to else if false
# Original instruction: beq v39,$zero,label_43_elseLabel
beq $t0,$zero,label_43_elseLabel
# get address of variable
# Original instruction: addiu v44,$fp,-8
addiu $t0,$fp,-8
# get value to assign
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: addiu v46,$fp,-8
addiu $t1,$fp,-8
# Original instruction: lw v47,0(v46)
lw $t2,0($t1)
# compute the right operand
# Original instruction: li v48,1
li $t1,1
# Original instruction: add v45,v47,v48
add $t1,$t2,$t1
# assign value to variable address
# Original instruction: sw v45,0(v44)
sw $t1,0($t0)
# Original instruction: b label_44_endLabel
b label_44_endLabel
# else branch
label_43_elseLabel:
label_44_endLabel:
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v50,label_33_a31
la $t0,label_33_a31
# Original instruction: lb v51,0(v50)
lb $t1,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: la v52,label_36_empty
la $t0,label_36_empty
# Original instruction: lb v53,0(v52)
lb $t0,0($t0)
# Original instruction: xor v49,v51,v53
xor $t0,$t1,$t0
# Original instruction: sltu v49,$zero,v49
sltu $t0,$zero,$t0
# check if condition is true, branch to else if false
# Original instruction: beq v49,$zero,label_45_elseLabel
beq $t0,$zero,label_45_elseLabel
# get address of variable
# Original instruction: addiu v54,$fp,-8
addiu $t2,$fp,-8
# get value to assign
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: addiu v56,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v57,0(v56)
lw $t1,0($t0)
# compute the right operand
# Original instruction: li v58,1
li $t0,1
# Original instruction: add v55,v57,v58
add $t0,$t1,$t0
# assign value to variable address
# Original instruction: sw v55,0(v54)
sw $t0,0($t2)
# Original instruction: b label_46_endLabel
b label_46_endLabel
# else branch
label_45_elseLabel:
label_46_endLabel:
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v60,label_28_a12
la $t0,label_28_a12
# Original instruction: lb v61,0(v60)
lb $t1,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: la v62,label_36_empty
la $t0,label_36_empty
# Original instruction: lb v63,0(v62)
lb $t0,0($t0)
# Original instruction: xor v59,v61,v63
xor $t0,$t1,$t0
# Original instruction: sltu v59,$zero,v59
sltu $t0,$zero,$t0
# check if condition is true, branch to else if false
# Original instruction: beq v59,$zero,label_47_elseLabel
beq $t0,$zero,label_47_elseLabel
# get address of variable
# Original instruction: addiu v64,$fp,-8
addiu $t0,$fp,-8
# get value to assign
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: addiu v66,$fp,-8
addiu $t1,$fp,-8
# Original instruction: lw v67,0(v66)
lw $t1,0($t1)
# compute the right operand
# Original instruction: li v68,1
li $t2,1
# Original instruction: add v65,v67,v68
add $t1,$t1,$t2
# assign value to variable address
# Original instruction: sw v65,0(v64)
sw $t1,0($t0)
# Original instruction: b label_48_endLabel
b label_48_endLabel
# else branch
label_47_elseLabel:
label_48_endLabel:
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v70,label_31_a22
la $t0,label_31_a22
# Original instruction: lb v71,0(v70)
lb $t1,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: la v72,label_36_empty
la $t0,label_36_empty
# Original instruction: lb v73,0(v72)
lb $t0,0($t0)
# Original instruction: xor v69,v71,v73
xor $t0,$t1,$t0
# Original instruction: sltu v69,$zero,v69
sltu $t0,$zero,$t0
# check if condition is true, branch to else if false
# Original instruction: beq v69,$zero,label_49_elseLabel
beq $t0,$zero,label_49_elseLabel
# get address of variable
# Original instruction: addiu v74,$fp,-8
addiu $t1,$fp,-8
# get value to assign
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: addiu v76,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v77,0(v76)
lw $t0,0($t0)
# compute the right operand
# Original instruction: li v78,1
li $t2,1
# Original instruction: add v75,v77,v78
add $t0,$t0,$t2
# assign value to variable address
# Original instruction: sw v75,0(v74)
sw $t0,0($t1)
# Original instruction: b label_50_endLabel
b label_50_endLabel
# else branch
label_49_elseLabel:
label_50_endLabel:
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v80,label_34_a32
la $t0,label_34_a32
# Original instruction: lb v81,0(v80)
lb $t1,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: la v82,label_36_empty
la $t0,label_36_empty
# Original instruction: lb v83,0(v82)
lb $t0,0($t0)
# Original instruction: xor v79,v81,v83
xor $t0,$t1,$t0
# Original instruction: sltu v79,$zero,v79
sltu $t0,$zero,$t0
# check if condition is true, branch to else if false
# Original instruction: beq v79,$zero,label_51_elseLabel
beq $t0,$zero,label_51_elseLabel
# get address of variable
# Original instruction: addiu v84,$fp,-8
addiu $t1,$fp,-8
# get value to assign
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: addiu v86,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v87,0(v86)
lw $t2,0($t0)
# compute the right operand
# Original instruction: li v88,1
li $t0,1
# Original instruction: add v85,v87,v88
add $t0,$t2,$t0
# assign value to variable address
# Original instruction: sw v85,0(v84)
sw $t0,0($t1)
# Original instruction: b label_52_endLabel
b label_52_endLabel
# else branch
label_51_elseLabel:
label_52_endLabel:
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v90,label_29_a13
la $t0,label_29_a13
# Original instruction: lb v91,0(v90)
lb $t1,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: la v92,label_36_empty
la $t0,label_36_empty
# Original instruction: lb v93,0(v92)
lb $t0,0($t0)
# Original instruction: xor v89,v91,v93
xor $t0,$t1,$t0
# Original instruction: sltu v89,$zero,v89
sltu $t0,$zero,$t0
# check if condition is true, branch to else if false
# Original instruction: beq v89,$zero,label_53_elseLabel
beq $t0,$zero,label_53_elseLabel
# get address of variable
# Original instruction: addiu v94,$fp,-8
addiu $t1,$fp,-8
# get value to assign
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: addiu v96,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v97,0(v96)
lw $t0,0($t0)
# compute the right operand
# Original instruction: li v98,1
li $t2,1
# Original instruction: add v95,v97,v98
add $t0,$t0,$t2
# assign value to variable address
# Original instruction: sw v95,0(v94)
sw $t0,0($t1)
# Original instruction: b label_54_endLabel
b label_54_endLabel
# else branch
label_53_elseLabel:
label_54_endLabel:
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v100,label_32_a23
la $t0,label_32_a23
# Original instruction: lb v101,0(v100)
lb $t0,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: la v102,label_36_empty
la $t1,label_36_empty
# Original instruction: lb v103,0(v102)
lb $t1,0($t1)
# Original instruction: xor v99,v101,v103
xor $t0,$t0,$t1
# Original instruction: sltu v99,$zero,v99
sltu $t0,$zero,$t0
# check if condition is true, branch to else if false
# Original instruction: beq v99,$zero,label_55_elseLabel
beq $t0,$zero,label_55_elseLabel
# get address of variable
# Original instruction: addiu v104,$fp,-8
addiu $t1,$fp,-8
# get value to assign
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: addiu v106,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v107,0(v106)
lw $t2,0($t0)
# compute the right operand
# Original instruction: li v108,1
li $t0,1
# Original instruction: add v105,v107,v108
add $t0,$t2,$t0
# assign value to variable address
# Original instruction: sw v105,0(v104)
sw $t0,0($t1)
# Original instruction: b label_56_endLabel
b label_56_endLabel
# else branch
label_55_elseLabel:
label_56_endLabel:
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v110,label_35_a33
la $t0,label_35_a33
# Original instruction: lb v111,0(v110)
lb $t1,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: la v112,label_36_empty
la $t0,label_36_empty
# Original instruction: lb v113,0(v112)
lb $t0,0($t0)
# Original instruction: xor v109,v111,v113
xor $t0,$t1,$t0
# Original instruction: sltu v109,$zero,v109
sltu $t0,$zero,$t0
# check if condition is true, branch to else if false
# Original instruction: beq v109,$zero,label_57_elseLabel
beq $t0,$zero,label_57_elseLabel
# get address of variable
# Original instruction: addiu v114,$fp,-8
addiu $t1,$fp,-8
# get value to assign
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: addiu v116,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v117,0(v116)
lw $t2,0($t0)
# compute the right operand
# Original instruction: li v118,1
li $t0,1
# Original instruction: add v115,v117,v118
add $t0,$t2,$t0
# assign value to variable address
# Original instruction: sw v115,0(v114)
sw $t0,0($t1)
# Original instruction: b label_58_endLabel
b label_58_endLabel
# else branch
label_57_elseLabel:
label_58_endLabel:
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: addiu v120,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v121,0(v120)
lw $t1,0($t0)
# compute the right operand
# Original instruction: li v122,9
li $t0,9
# Original instruction: xor v119,v121,v122
xor $t0,$t1,$t0
# Original instruction: sltiu v119,v119,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v119,$zero,label_59_elseLabel
beq $t0,$zero,label_59_elseLabel
# computing the return value
# Original instruction: li v123,1
li $t0,1
# copying the return value into the previous frame
# Original instruction: sw v123,4($fp)
sw $t0,4($fp)
# branching to the return label
# Original instruction: b label_40_return
b label_40_return
# Original instruction: b label_60_endLabel
b label_60_endLabel
# else branch
label_59_elseLabel:
# computing the return value
# Original instruction: li v124,0
li $t0,0
# copying the return value into the previous frame
# Original instruction: sw v124,4($fp)
sw $t0,4($fp)
# branching to the return label
# Original instruction: b label_40_return
b label_40_return
label_60_endLabel:
# return label of the function full
label_40_return:
# popping all used registers from the stack
# Original instruction: popRegisters
lw $t2,0($sp)
addi $sp,$sp,4
lw $t1,0($sp)
addi $sp,$sp,4
lw $t0,0($sp)
addi $sp,$sp,4
# setting the sp to the top of the old frame
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# load the return address from the stack
# Original instruction: lw $ra,-4($fp)
lw $ra,-4($fp)
# load the old frame pointer into fp
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# jump to the return address
# Original instruction: jr $ra
jr $ra

.text
label_61_set:
# storing the old fp value at the start of the frame
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# setting the new fp to the value of the sp
# Original instruction: addu $fp,$sp,$zero
addu $fp,$sp,$zero
# moving sp by a word to reserve space for the return address
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# storing the return address in the frame
# Original instruction: sw $ra,0($sp)
sw $ra,0($sp)
# moving sp by the size of the local variables
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# pushing all used registers onto the stack
# Original instruction: pushRegisters
addi $sp,$sp,-4
sw $t0,0($sp)
addi $sp,$sp,-4
sw $t1,0($sp)
addi $sp,$sp,-4
sw $t2,0($sp)
# get address of variable
# Original instruction: addiu v125,$fp,-8
addiu $t0,$fp,-8
# get value to assign
# Original instruction: li v126,1
li $t1,1
# assign value to variable address
# Original instruction: sw v126,0(v125)
sw $t1,0($t0)
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: addiu v128,$fp,16
addiu $t0,$fp,16
# Original instruction: lb v129,0(v128)
lb $t1,0($t0)
# compute the right operand
# Original instruction: li v130,97
li $t0,97
# Original instruction: xor v127,v129,v130
xor $t0,$t1,$t0
# Original instruction: sltiu v127,v127,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v127,$zero,label_63_elseLabel
beq $t0,$zero,label_63_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: addiu v132,$fp,12
addiu $t0,$fp,12
# Original instruction: lw v133,0(v132)
lw $t1,0($t0)
# compute the right operand
# Original instruction: li v134,1
li $t0,1
# Original instruction: xor v131,v133,v134
xor $t0,$t1,$t0
# Original instruction: sltiu v131,v131,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v131,$zero,label_65_elseLabel
beq $t0,$zero,label_65_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v136,label_27_a11
la $t0,label_27_a11
# Original instruction: lb v137,0(v136)
lb $t1,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: la v138,label_36_empty
la $t0,label_36_empty
# Original instruction: lb v139,0(v138)
lb $t0,0($t0)
# Original instruction: xor v135,v137,v139
xor $t0,$t1,$t0
# Original instruction: sltiu v135,v135,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v135,$zero,label_67_elseLabel
beq $t0,$zero,label_67_elseLabel
# get address of variable
# Original instruction: la v140,label_27_a11
la $t0,label_27_a11
# get value to assign
# get address of the variable
# get address of variable
# Original instruction: addiu v141,$fp,8
addiu $t1,$fp,8
# Original instruction: lb v142,0(v141)
lb $t1,0($t1)
# assign value to variable address
# Original instruction: sb v142,0(v140)
sb $t1,0($t0)
# Original instruction: b label_68_endLabel
b label_68_endLabel
# else branch
label_67_elseLabel:
# get address of variable
# Original instruction: addiu v143,$fp,-8
addiu $t2,$fp,-8
# get value to assign
# compute the left operand
# Original instruction: li v145,0
li $t0,0
# compute the right operand
# Original instruction: li v146,1
li $t1,1
# Original instruction: sub v144,v145,v146
sub $t0,$t0,$t1
# assign value to variable address
# Original instruction: sw v144,0(v143)
sw $t0,0($t2)
label_68_endLabel:
# Original instruction: b label_66_endLabel
b label_66_endLabel
# else branch
label_65_elseLabel:
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: addiu v148,$fp,12
addiu $t0,$fp,12
# Original instruction: lw v149,0(v148)
lw $t0,0($t0)
# compute the right operand
# Original instruction: li v150,2
li $t1,2
# Original instruction: xor v147,v149,v150
xor $t0,$t0,$t1
# Original instruction: sltiu v147,v147,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v147,$zero,label_69_elseLabel
beq $t0,$zero,label_69_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v152,label_28_a12
la $t0,label_28_a12
# Original instruction: lb v153,0(v152)
lb $t1,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: la v154,label_36_empty
la $t0,label_36_empty
# Original instruction: lb v155,0(v154)
lb $t0,0($t0)
# Original instruction: xor v151,v153,v155
xor $t0,$t1,$t0
# Original instruction: sltiu v151,v151,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v151,$zero,label_71_elseLabel
beq $t0,$zero,label_71_elseLabel
# get address of variable
# Original instruction: la v156,label_28_a12
la $t1,label_28_a12
# get value to assign
# get address of the variable
# get address of variable
# Original instruction: addiu v157,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v158,0(v157)
lb $t0,0($t0)
# assign value to variable address
# Original instruction: sb v158,0(v156)
sb $t0,0($t1)
# Original instruction: b label_72_endLabel
b label_72_endLabel
# else branch
label_71_elseLabel:
# get address of variable
# Original instruction: addiu v159,$fp,-8
addiu $t1,$fp,-8
# get value to assign
# compute the left operand
# Original instruction: li v161,0
li $t0,0
# compute the right operand
# Original instruction: li v162,1
li $t2,1
# Original instruction: sub v160,v161,v162
sub $t0,$t0,$t2
# assign value to variable address
# Original instruction: sw v160,0(v159)
sw $t0,0($t1)
label_72_endLabel:
# Original instruction: b label_70_endLabel
b label_70_endLabel
# else branch
label_69_elseLabel:
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: addiu v164,$fp,12
addiu $t0,$fp,12
# Original instruction: lw v165,0(v164)
lw $t1,0($t0)
# compute the right operand
# Original instruction: li v166,3
li $t0,3
# Original instruction: xor v163,v165,v166
xor $t0,$t1,$t0
# Original instruction: sltiu v163,v163,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v163,$zero,label_73_elseLabel
beq $t0,$zero,label_73_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v168,label_29_a13
la $t0,label_29_a13
# Original instruction: lb v169,0(v168)
lb $t1,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: la v170,label_36_empty
la $t0,label_36_empty
# Original instruction: lb v171,0(v170)
lb $t0,0($t0)
# Original instruction: xor v167,v169,v171
xor $t0,$t1,$t0
# Original instruction: sltiu v167,v167,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v167,$zero,label_75_elseLabel
beq $t0,$zero,label_75_elseLabel
# get address of variable
# Original instruction: la v172,label_29_a13
la $t1,label_29_a13
# get value to assign
# get address of the variable
# get address of variable
# Original instruction: addiu v173,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v174,0(v173)
lb $t0,0($t0)
# assign value to variable address
# Original instruction: sb v174,0(v172)
sb $t0,0($t1)
# Original instruction: b label_76_endLabel
b label_76_endLabel
# else branch
label_75_elseLabel:
# get address of variable
# Original instruction: addiu v175,$fp,-8
addiu $t2,$fp,-8
# get value to assign
# compute the left operand
# Original instruction: li v177,0
li $t0,0
# compute the right operand
# Original instruction: li v178,1
li $t1,1
# Original instruction: sub v176,v177,v178
sub $t0,$t0,$t1
# assign value to variable address
# Original instruction: sw v176,0(v175)
sw $t0,0($t2)
label_76_endLabel:
# Original instruction: b label_74_endLabel
b label_74_endLabel
# else branch
label_73_elseLabel:
# get address of variable
# Original instruction: addiu v179,$fp,-8
addiu $t0,$fp,-8
# get value to assign
# Original instruction: li v180,0
li $t1,0
# assign value to variable address
# Original instruction: sw v180,0(v179)
sw $t1,0($t0)
label_74_endLabel:
label_70_endLabel:
label_66_endLabel:
# Original instruction: b label_64_endLabel
b label_64_endLabel
# else branch
label_63_elseLabel:
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: addiu v182,$fp,16
addiu $t0,$fp,16
# Original instruction: lb v183,0(v182)
lb $t0,0($t0)
# compute the right operand
# Original instruction: li v184,98
li $t1,98
# Original instruction: xor v181,v183,v184
xor $t0,$t0,$t1
# Original instruction: sltiu v181,v181,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v181,$zero,label_77_elseLabel
beq $t0,$zero,label_77_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: addiu v186,$fp,12
addiu $t0,$fp,12
# Original instruction: lw v187,0(v186)
lw $t1,0($t0)
# compute the right operand
# Original instruction: li v188,1
li $t0,1
# Original instruction: xor v185,v187,v188
xor $t0,$t1,$t0
# Original instruction: sltiu v185,v185,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v185,$zero,label_79_elseLabel
beq $t0,$zero,label_79_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v190,label_30_a21
la $t0,label_30_a21
# Original instruction: lb v191,0(v190)
lb $t1,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: la v192,label_36_empty
la $t0,label_36_empty
# Original instruction: lb v193,0(v192)
lb $t0,0($t0)
# Original instruction: xor v189,v191,v193
xor $t0,$t1,$t0
# Original instruction: sltiu v189,v189,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v189,$zero,label_81_elseLabel
beq $t0,$zero,label_81_elseLabel
# get address of variable
# Original instruction: la v194,label_30_a21
la $t1,label_30_a21
# get value to assign
# get address of the variable
# get address of variable
# Original instruction: addiu v195,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v196,0(v195)
lb $t0,0($t0)
# assign value to variable address
# Original instruction: sb v196,0(v194)
sb $t0,0($t1)
# Original instruction: b label_82_endLabel
b label_82_endLabel
# else branch
label_81_elseLabel:
# get address of variable
# Original instruction: addiu v197,$fp,-8
addiu $t1,$fp,-8
# get value to assign
# compute the left operand
# Original instruction: li v199,0
li $t0,0
# compute the right operand
# Original instruction: li v200,1
li $t2,1
# Original instruction: sub v198,v199,v200
sub $t0,$t0,$t2
# assign value to variable address
# Original instruction: sw v198,0(v197)
sw $t0,0($t1)
label_82_endLabel:
# Original instruction: b label_80_endLabel
b label_80_endLabel
# else branch
label_79_elseLabel:
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: addiu v202,$fp,12
addiu $t0,$fp,12
# Original instruction: lw v203,0(v202)
lw $t1,0($t0)
# compute the right operand
# Original instruction: li v204,2
li $t0,2
# Original instruction: xor v201,v203,v204
xor $t0,$t1,$t0
# Original instruction: sltiu v201,v201,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v201,$zero,label_83_elseLabel
beq $t0,$zero,label_83_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v206,label_31_a22
la $t0,label_31_a22
# Original instruction: lb v207,0(v206)
lb $t0,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: la v208,label_36_empty
la $t1,label_36_empty
# Original instruction: lb v209,0(v208)
lb $t1,0($t1)
# Original instruction: xor v205,v207,v209
xor $t0,$t0,$t1
# Original instruction: sltiu v205,v205,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v205,$zero,label_85_elseLabel
beq $t0,$zero,label_85_elseLabel
# get address of variable
# Original instruction: la v210,label_31_a22
la $t1,label_31_a22
# get value to assign
# get address of the variable
# get address of variable
# Original instruction: addiu v211,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v212,0(v211)
lb $t0,0($t0)
# assign value to variable address
# Original instruction: sb v212,0(v210)
sb $t0,0($t1)
# Original instruction: b label_86_endLabel
b label_86_endLabel
# else branch
label_85_elseLabel:
# get address of variable
# Original instruction: addiu v213,$fp,-8
addiu $t1,$fp,-8
# get value to assign
# compute the left operand
# Original instruction: li v215,0
li $t0,0
# compute the right operand
# Original instruction: li v216,1
li $t2,1
# Original instruction: sub v214,v215,v216
sub $t0,$t0,$t2
# assign value to variable address
# Original instruction: sw v214,0(v213)
sw $t0,0($t1)
label_86_endLabel:
# Original instruction: b label_84_endLabel
b label_84_endLabel
# else branch
label_83_elseLabel:
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: addiu v218,$fp,12
addiu $t0,$fp,12
# Original instruction: lw v219,0(v218)
lw $t0,0($t0)
# compute the right operand
# Original instruction: li v220,3
li $t1,3
# Original instruction: xor v217,v219,v220
xor $t0,$t0,$t1
# Original instruction: sltiu v217,v217,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v217,$zero,label_87_elseLabel
beq $t0,$zero,label_87_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v222,label_32_a23
la $t0,label_32_a23
# Original instruction: lb v223,0(v222)
lb $t1,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: la v224,label_36_empty
la $t0,label_36_empty
# Original instruction: lb v225,0(v224)
lb $t0,0($t0)
# Original instruction: xor v221,v223,v225
xor $t0,$t1,$t0
# Original instruction: sltiu v221,v221,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v221,$zero,label_89_elseLabel
beq $t0,$zero,label_89_elseLabel
# get address of variable
# Original instruction: la v226,label_32_a23
la $t0,label_32_a23
# get value to assign
# get address of the variable
# get address of variable
# Original instruction: addiu v227,$fp,8
addiu $t1,$fp,8
# Original instruction: lb v228,0(v227)
lb $t1,0($t1)
# assign value to variable address
# Original instruction: sb v228,0(v226)
sb $t1,0($t0)
# Original instruction: b label_90_endLabel
b label_90_endLabel
# else branch
label_89_elseLabel:
# get address of variable
# Original instruction: addiu v229,$fp,-8
addiu $t1,$fp,-8
# get value to assign
# compute the left operand
# Original instruction: li v231,0
li $t0,0
# compute the right operand
# Original instruction: li v232,1
li $t2,1
# Original instruction: sub v230,v231,v232
sub $t0,$t0,$t2
# assign value to variable address
# Original instruction: sw v230,0(v229)
sw $t0,0($t1)
label_90_endLabel:
# Original instruction: b label_88_endLabel
b label_88_endLabel
# else branch
label_87_elseLabel:
# get address of variable
# Original instruction: addiu v233,$fp,-8
addiu $t1,$fp,-8
# get value to assign
# Original instruction: li v234,0
li $t0,0
# assign value to variable address
# Original instruction: sw v234,0(v233)
sw $t0,0($t1)
label_88_endLabel:
label_84_endLabel:
label_80_endLabel:
# Original instruction: b label_78_endLabel
b label_78_endLabel
# else branch
label_77_elseLabel:
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: addiu v236,$fp,16
addiu $t0,$fp,16
# Original instruction: lb v237,0(v236)
lb $t0,0($t0)
# compute the right operand
# Original instruction: li v238,99
li $t1,99
# Original instruction: xor v235,v237,v238
xor $t0,$t0,$t1
# Original instruction: sltiu v235,v235,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v235,$zero,label_91_elseLabel
beq $t0,$zero,label_91_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: addiu v240,$fp,12
addiu $t0,$fp,12
# Original instruction: lw v241,0(v240)
lw $t0,0($t0)
# compute the right operand
# Original instruction: li v242,1
li $t1,1
# Original instruction: xor v239,v241,v242
xor $t0,$t0,$t1
# Original instruction: sltiu v239,v239,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v239,$zero,label_93_elseLabel
beq $t0,$zero,label_93_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v244,label_33_a31
la $t0,label_33_a31
# Original instruction: lb v245,0(v244)
lb $t0,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: la v246,label_36_empty
la $t1,label_36_empty
# Original instruction: lb v247,0(v246)
lb $t1,0($t1)
# Original instruction: xor v243,v245,v247
xor $t0,$t0,$t1
# Original instruction: sltiu v243,v243,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v243,$zero,label_95_elseLabel
beq $t0,$zero,label_95_elseLabel
# get address of variable
# Original instruction: la v248,label_33_a31
la $t1,label_33_a31
# get value to assign
# get address of the variable
# get address of variable
# Original instruction: addiu v249,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v250,0(v249)
lb $t0,0($t0)
# assign value to variable address
# Original instruction: sb v250,0(v248)
sb $t0,0($t1)
# Original instruction: b label_96_endLabel
b label_96_endLabel
# else branch
label_95_elseLabel:
# get address of variable
# Original instruction: addiu v251,$fp,-8
addiu $t2,$fp,-8
# get value to assign
# compute the left operand
# Original instruction: li v253,0
li $t1,0
# compute the right operand
# Original instruction: li v254,1
li $t0,1
# Original instruction: sub v252,v253,v254
sub $t0,$t1,$t0
# assign value to variable address
# Original instruction: sw v252,0(v251)
sw $t0,0($t2)
label_96_endLabel:
# Original instruction: b label_94_endLabel
b label_94_endLabel
# else branch
label_93_elseLabel:
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: addiu v256,$fp,12
addiu $t0,$fp,12
# Original instruction: lw v257,0(v256)
lw $t1,0($t0)
# compute the right operand
# Original instruction: li v258,2
li $t0,2
# Original instruction: xor v255,v257,v258
xor $t0,$t1,$t0
# Original instruction: sltiu v255,v255,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v255,$zero,label_97_elseLabel
beq $t0,$zero,label_97_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v260,label_34_a32
la $t0,label_34_a32
# Original instruction: lb v261,0(v260)
lb $t0,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: la v262,label_36_empty
la $t1,label_36_empty
# Original instruction: lb v263,0(v262)
lb $t1,0($t1)
# Original instruction: xor v259,v261,v263
xor $t0,$t0,$t1
# Original instruction: sltiu v259,v259,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v259,$zero,label_99_elseLabel
beq $t0,$zero,label_99_elseLabel
# get address of variable
# Original instruction: la v264,label_34_a32
la $t0,label_34_a32
# get value to assign
# get address of the variable
# get address of variable
# Original instruction: addiu v265,$fp,8
addiu $t1,$fp,8
# Original instruction: lb v266,0(v265)
lb $t1,0($t1)
# assign value to variable address
# Original instruction: sb v266,0(v264)
sb $t1,0($t0)
# Original instruction: b label_100_endLabel
b label_100_endLabel
# else branch
label_99_elseLabel:
# get address of variable
# Original instruction: addiu v267,$fp,-8
addiu $t2,$fp,-8
# get value to assign
# compute the left operand
# Original instruction: li v269,0
li $t0,0
# compute the right operand
# Original instruction: li v270,1
li $t1,1
# Original instruction: sub v268,v269,v270
sub $t0,$t0,$t1
# assign value to variable address
# Original instruction: sw v268,0(v267)
sw $t0,0($t2)
label_100_endLabel:
# Original instruction: b label_98_endLabel
b label_98_endLabel
# else branch
label_97_elseLabel:
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: addiu v272,$fp,12
addiu $t0,$fp,12
# Original instruction: lw v273,0(v272)
lw $t1,0($t0)
# compute the right operand
# Original instruction: li v274,3
li $t0,3
# Original instruction: xor v271,v273,v274
xor $t0,$t1,$t0
# Original instruction: sltiu v271,v271,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v271,$zero,label_101_elseLabel
beq $t0,$zero,label_101_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v276,label_35_a33
la $t0,label_35_a33
# Original instruction: lb v277,0(v276)
lb $t1,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: la v278,label_36_empty
la $t0,label_36_empty
# Original instruction: lb v279,0(v278)
lb $t0,0($t0)
# Original instruction: xor v275,v277,v279
xor $t0,$t1,$t0
# Original instruction: sltiu v275,v275,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v275,$zero,label_103_elseLabel
beq $t0,$zero,label_103_elseLabel
# get address of variable
# Original instruction: la v280,label_35_a33
la $t1,label_35_a33
# get value to assign
# get address of the variable
# get address of variable
# Original instruction: addiu v281,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v282,0(v281)
lb $t0,0($t0)
# assign value to variable address
# Original instruction: sb v282,0(v280)
sb $t0,0($t1)
# Original instruction: b label_104_endLabel
b label_104_endLabel
# else branch
label_103_elseLabel:
# get address of variable
# Original instruction: addiu v283,$fp,-8
addiu $t1,$fp,-8
# get value to assign
# compute the left operand
# Original instruction: li v285,0
li $t0,0
# compute the right operand
# Original instruction: li v286,1
li $t2,1
# Original instruction: sub v284,v285,v286
sub $t0,$t0,$t2
# assign value to variable address
# Original instruction: sw v284,0(v283)
sw $t0,0($t1)
label_104_endLabel:
# Original instruction: b label_102_endLabel
b label_102_endLabel
# else branch
label_101_elseLabel:
# get address of variable
# Original instruction: addiu v287,$fp,-8
addiu $t1,$fp,-8
# get value to assign
# Original instruction: li v288,0
li $t0,0
# assign value to variable address
# Original instruction: sw v288,0(v287)
sw $t0,0($t1)
label_102_endLabel:
label_98_endLabel:
label_94_endLabel:
# Original instruction: b label_92_endLabel
b label_92_endLabel
# else branch
label_91_elseLabel:
# get address of variable
# Original instruction: addiu v289,$fp,-8
addiu $t0,$fp,-8
# get value to assign
# Original instruction: li v290,0
li $t1,0
# assign value to variable address
# Original instruction: sw v290,0(v289)
sw $t1,0($t0)
label_92_endLabel:
label_78_endLabel:
label_64_endLabel:
# computing the return value
# get address of the variable
# get address of variable
# Original instruction: addiu v291,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v292,0(v291)
lw $t0,0($t0)
# copying the return value into the previous frame
# Original instruction: sw v292,4($fp)
sw $t0,4($fp)
# branching to the return label
# Original instruction: b label_62_return
b label_62_return
# return label of the function set
label_62_return:
# popping all used registers from the stack
# Original instruction: popRegisters
lw $t2,0($sp)
addi $sp,$sp,4
lw $t1,0($sp)
addi $sp,$sp,4
lw $t0,0($sp)
addi $sp,$sp,4
# setting the sp to the top of the old frame
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# load the return address from the stack
# Original instruction: lw $ra,-4($fp)
lw $ra,-4($fp)
# load the old frame pointer into fp
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# jump to the return address
# Original instruction: jr $ra
jr $ra

.text
label_105_printGame:
# storing the old fp value at the start of the frame
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# setting the new fp to the value of the sp
# Original instruction: addu $fp,$sp,$zero
addu $fp,$sp,$zero
# moving sp by a word to reserve space for the return address
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# storing the return address in the frame
# Original instruction: sw $ra,0($sp)
sw $ra,0($sp)
# moving sp by the size of the local variables
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# pushing all used registers onto the stack
# Original instruction: pushRegisters
addi $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: la v293,label_0_
la $t0,label_0_
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v293
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# Original instruction: la v294,label_1_
la $t0,label_1_
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v294
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# Original instruction: la v295,label_2_
la $t0,label_2_
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v295
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# Original instruction: la v296,label_3_
la $t0,label_3_
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v296
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# get address of the variable
# get address of variable
# Original instruction: la v297,label_27_a11
la $t0,label_27_a11
# Original instruction: lb v298,0(v297)
lb $t0,0($t0)
# Original instruction: li $v0,11
li $v0,11
# Original instruction: add $a0,$zero,v298
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# Original instruction: la v299,label_4_
la $t0,label_4_
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v299
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# get address of the variable
# get address of variable
# Original instruction: la v300,label_28_a12
la $t0,label_28_a12
# Original instruction: lb v301,0(v300)
lb $t0,0($t0)
# Original instruction: li $v0,11
li $v0,11
# Original instruction: add $a0,$zero,v301
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# Original instruction: la v302,label_5_
la $t0,label_5_
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v302
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# get address of the variable
# get address of variable
# Original instruction: la v303,label_29_a13
la $t0,label_29_a13
# Original instruction: lb v304,0(v303)
lb $t0,0($t0)
# Original instruction: li $v0,11
li $v0,11
# Original instruction: add $a0,$zero,v304
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# Original instruction: la v305,label_6_
la $t0,label_6_
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v305
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# Original instruction: la v306,label_7_
la $t0,label_7_
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v306
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# Original instruction: la v307,label_8_
la $t0,label_8_
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v307
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# get address of the variable
# get address of variable
# Original instruction: la v308,label_30_a21
la $t0,label_30_a21
# Original instruction: lb v309,0(v308)
lb $t0,0($t0)
# Original instruction: li $v0,11
li $v0,11
# Original instruction: add $a0,$zero,v309
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# Original instruction: la v310,label_9_
la $t0,label_9_
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v310
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# get address of the variable
# get address of variable
# Original instruction: la v311,label_31_a22
la $t0,label_31_a22
# Original instruction: lb v312,0(v311)
lb $t0,0($t0)
# Original instruction: li $v0,11
li $v0,11
# Original instruction: add $a0,$zero,v312
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# Original instruction: la v313,label_10_
la $t0,label_10_
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v313
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# get address of the variable
# get address of variable
# Original instruction: la v314,label_32_a23
la $t0,label_32_a23
# Original instruction: lb v315,0(v314)
lb $t0,0($t0)
# Original instruction: li $v0,11
li $v0,11
# Original instruction: add $a0,$zero,v315
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# Original instruction: la v316,label_11_
la $t0,label_11_
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v316
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# Original instruction: la v317,label_12_
la $t0,label_12_
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v317
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# Original instruction: la v318,label_13_
la $t0,label_13_
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v318
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# get address of the variable
# get address of variable
# Original instruction: la v319,label_33_a31
la $t0,label_33_a31
# Original instruction: lb v320,0(v319)
lb $t0,0($t0)
# Original instruction: li $v0,11
li $v0,11
# Original instruction: add $a0,$zero,v320
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# Original instruction: la v321,label_14_
la $t0,label_14_
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v321
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# get address of the variable
# get address of variable
# Original instruction: la v322,label_34_a32
la $t0,label_34_a32
# Original instruction: lb v323,0(v322)
lb $t0,0($t0)
# Original instruction: li $v0,11
li $v0,11
# Original instruction: add $a0,$zero,v323
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# Original instruction: la v324,label_15_
la $t0,label_15_
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v324
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# get address of the variable
# get address of variable
# Original instruction: la v325,label_35_a33
la $t0,label_35_a33
# Original instruction: lb v326,0(v325)
lb $t0,0($t0)
# Original instruction: li $v0,11
li $v0,11
# Original instruction: add $a0,$zero,v326
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# Original instruction: la v327,label_16_
la $t0,label_16_
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v327
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# Original instruction: la v328,label_17_
la $t0,label_17_
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v328
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# Original instruction: la v329,label_18_
la $t0,label_18_
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v329
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# return label of the function printGame
label_106_return:
# popping all used registers from the stack
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
# setting the sp to the top of the old frame
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# load the return address from the stack
# Original instruction: lw $ra,-4($fp)
lw $ra,-4($fp)
# load the old frame pointer into fp
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# jump to the return address
# Original instruction: jr $ra
jr $ra

.text
label_107_printWinner:
# storing the old fp value at the start of the frame
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# setting the new fp to the value of the sp
# Original instruction: addu $fp,$sp,$zero
addu $fp,$sp,$zero
# moving sp by a word to reserve space for the return address
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# storing the return address in the frame
# Original instruction: sw $ra,0($sp)
sw $ra,0($sp)
# moving sp by the size of the local variables
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# pushing all used registers onto the stack
# Original instruction: pushRegisters
addi $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: la v330,label_19_
la $t0,label_19_
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v330
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# get address of the variable
# get address of variable
# Original instruction: addiu v331,$fp,4
addiu $t0,$fp,4
# Original instruction: lw v332,0(v331)
lw $t0,0($t0)
# Original instruction: li $v0,1
li $v0,1
# Original instruction: add $a0,$zero,v332
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# Original instruction: la v333,label_20_
la $t0,label_20_
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v333
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# return label of the function printWinner
label_108_return:
# popping all used registers from the stack
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
# setting the sp to the top of the old frame
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# load the return address from the stack
# Original instruction: lw $ra,-4($fp)
lw $ra,-4($fp)
# load the old frame pointer into fp
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# jump to the return address
# Original instruction: jr $ra
jr $ra

.text
label_109_switchPlayer:
# storing the old fp value at the start of the frame
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# setting the new fp to the value of the sp
# Original instruction: addu $fp,$sp,$zero
addu $fp,$sp,$zero
# moving sp by a word to reserve space for the return address
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# storing the return address in the frame
# Original instruction: sw $ra,0($sp)
sw $ra,0($sp)
# moving sp by the size of the local variables
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# pushing all used registers onto the stack
# Original instruction: pushRegisters
addi $sp,$sp,-4
sw $t0,0($sp)
addi $sp,$sp,-4
sw $t1,0($sp)
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: addiu v335,$fp,8
addiu $t0,$fp,8
# Original instruction: lw v336,0(v335)
lw $t1,0($t0)
# compute the right operand
# Original instruction: li v337,1
li $t0,1
# Original instruction: xor v334,v336,v337
xor $t0,$t1,$t0
# Original instruction: sltiu v334,v334,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v334,$zero,label_111_elseLabel
beq $t0,$zero,label_111_elseLabel
# computing the return value
# Original instruction: li v338,2
li $t0,2
# copying the return value into the previous frame
# Original instruction: sw v338,4($fp)
sw $t0,4($fp)
# branching to the return label
# Original instruction: b label_110_return
b label_110_return
# Original instruction: b label_112_endLabel
b label_112_endLabel
# else branch
label_111_elseLabel:
# computing the return value
# Original instruction: li v339,1
li $t0,1
# copying the return value into the previous frame
# Original instruction: sw v339,4($fp)
sw $t0,4($fp)
# branching to the return label
# Original instruction: b label_110_return
b label_110_return
label_112_endLabel:
# return label of the function switchPlayer
label_110_return:
# popping all used registers from the stack
# Original instruction: popRegisters
lw $t1,0($sp)
addi $sp,$sp,4
lw $t0,0($sp)
addi $sp,$sp,4
# setting the sp to the top of the old frame
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# load the return address from the stack
# Original instruction: lw $ra,-4($fp)
lw $ra,-4($fp)
# load the old frame pointer into fp
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# jump to the return address
# Original instruction: jr $ra
jr $ra

.text
label_113_get_mark:
# storing the old fp value at the start of the frame
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# setting the new fp to the value of the sp
# Original instruction: addu $fp,$sp,$zero
addu $fp,$sp,$zero
# moving sp by a word to reserve space for the return address
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# storing the return address in the frame
# Original instruction: sw $ra,0($sp)
sw $ra,0($sp)
# moving sp by the size of the local variables
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# pushing all used registers onto the stack
# Original instruction: pushRegisters
addi $sp,$sp,-4
sw $t0,0($sp)
addi $sp,$sp,-4
sw $t1,0($sp)
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: addiu v341,$fp,8
addiu $t0,$fp,8
# Original instruction: lw v342,0(v341)
lw $t1,0($t0)
# compute the right operand
# Original instruction: li v343,1
li $t0,1
# Original instruction: xor v340,v342,v343
xor $t0,$t1,$t0
# Original instruction: sltiu v340,v340,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v340,$zero,label_115_elseLabel
beq $t0,$zero,label_115_elseLabel
# computing the return value
# Original instruction: li v344,88
li $t0,88
# copying the return value into the previous frame
# Original instruction: sb v344,4($fp)
sb $t0,4($fp)
# branching to the return label
# Original instruction: b label_114_return
b label_114_return
# Original instruction: b label_116_endLabel
b label_116_endLabel
# else branch
label_115_elseLabel:
# computing the return value
# Original instruction: li v345,79
li $t0,79
# copying the return value into the previous frame
# Original instruction: sb v345,4($fp)
sb $t0,4($fp)
# branching to the return label
# Original instruction: b label_114_return
b label_114_return
label_116_endLabel:
# return label of the function get_mark
label_114_return:
# popping all used registers from the stack
# Original instruction: popRegisters
lw $t1,0($sp)
addi $sp,$sp,4
lw $t0,0($sp)
addi $sp,$sp,4
# setting the sp to the top of the old frame
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# load the return address from the stack
# Original instruction: lw $ra,-4($fp)
lw $ra,-4($fp)
# load the old frame pointer into fp
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# jump to the return address
# Original instruction: jr $ra
jr $ra

.text
label_117_selectmove:
# storing the old fp value at the start of the frame
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# setting the new fp to the value of the sp
# Original instruction: addu $fp,$sp,$zero
addu $fp,$sp,$zero
# moving sp by a word to reserve space for the return address
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# storing the return address in the frame
# Original instruction: sw $ra,0($sp)
sw $ra,0($sp)
# moving sp by the size of the local variables
# Original instruction: addiu $sp,$sp,-20
addiu $sp,$sp,-20
# pushing all used registers onto the stack
# Original instruction: pushRegisters
addi $sp,$sp,-4
sw $t0,0($sp)
addi $sp,$sp,-4
sw $t1,0($sp)
addi $sp,$sp,-4
sw $t2,0($sp)
# get address of variable
# Original instruction: addiu v346,$fp,-16
addiu $t0,$fp,-16
# get value to assign
# Original instruction: li v347,1
li $t1,1
# assign value to variable address
# Original instruction: sw v347,0(v346)
sw $t1,0($t0)
label_119_loop:
# get address of the variable
# get address of variable
# Original instruction: addiu v348,$fp,-16
addiu $t0,$fp,-16
# Original instruction: lw v349,0(v348)
lw $t0,0($t0)
# check if condition is true, branch to end if false
# Original instruction: beq v349,$zero,label_120_endLabel
beq $t0,$zero,label_120_endLabel
# Original instruction: la v350,label_21_
la $t0,label_21_
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v350
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# get address of the variable
# get address of variable
# Original instruction: addiu v351,$fp,4
addiu $t0,$fp,4
# Original instruction: lw v352,0(v351)
lw $t0,0($t0)
# Original instruction: li $v0,1
li $v0,1
# Original instruction: add $a0,$zero,v352
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# Original instruction: la v353,label_22_
la $t0,label_22_
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v353
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# get address of variable
# Original instruction: addiu v354,$fp,-8
addiu $t0,$fp,-8
# get value to assign
# Original instruction: li $v0,12
li $v0,12
# Original instruction: syscall
syscall
# Original instruction: add v355,$v0,$zero
add $t1,$v0,$zero
# assign value to variable address
# Original instruction: sb v355,0(v354)
sb $t1,0($t0)
# get address of variable
# Original instruction: addiu v356,$fp,-12
addiu $t1,$fp,-12
# get value to assign
# Original instruction: li $v0,5
li $v0,5
# Original instruction: syscall
syscall
# Original instruction: add v357,$v0,$zero
add $t0,$v0,$zero
# assign value to variable address
# Original instruction: sw v357,0(v356)
sw $t0,0($t1)
# get address of variable
# Original instruction: addiu v358,$fp,-24
addiu $t1,$fp,-24
# get value to assign
# move sp by the to allocate space for the args and return value
# Original instruction: addiu $sp,$sp,-8
addiu $sp,$sp,-8
# move sp onto the new frame
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# copy args onto the stack
# get address of the variable
# get address of variable
# Original instruction: addiu v360,$fp,4
addiu $t0,$fp,4
# Original instruction: lw v361,0(v360)
lw $t0,0($t0)
# Original instruction: sw v361,8($sp)
sw $t0,8($sp)
# Original instruction: jal label_113_get_mark
jal label_113_get_mark
# read return value from the stack
# Original instruction: lb v359,0($sp)
lb $t0,0($sp)
# move sp to deallocate the space of the args and return value
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# assign value to variable address
# Original instruction: sb v359,0(v358)
sb $t0,0($t1)
# get address of variable
# Original instruction: addiu v362,$fp,-20
addiu $t1,$fp,-20
# get value to assign
# move sp by the to allocate space for the args and return value
# Original instruction: addiu $sp,$sp,-16
addiu $sp,$sp,-16
# move sp onto the new frame
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# copy args onto the stack
# get address of the variable
# get address of variable
# Original instruction: addiu v364,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lb v365,0(v364)
lb $t0,0($t0)
# Original instruction: sb v365,16($sp)
sb $t0,16($sp)
# get address of the variable
# get address of variable
# Original instruction: addiu v366,$fp,-12
addiu $t0,$fp,-12
# Original instruction: lw v367,0(v366)
lw $t0,0($t0)
# Original instruction: sw v367,12($sp)
sw $t0,12($sp)
# get address of the variable
# get address of variable
# Original instruction: addiu v368,$fp,-24
addiu $t0,$fp,-24
# Original instruction: lb v369,0(v368)
lb $t0,0($t0)
# Original instruction: sb v369,8($sp)
sb $t0,8($sp)
# Original instruction: jal label_61_set
jal label_61_set
# read return value from the stack
# Original instruction: lw v363,0($sp)
lw $t0,0($sp)
# move sp to deallocate the space of the args and return value
# Original instruction: addiu $sp,$sp,16
addiu $sp,$sp,16
# assign value to variable address
# Original instruction: sw v363,0(v362)
sw $t0,0($t1)
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: addiu v371,$fp,-20
addiu $t0,$fp,-20
# Original instruction: lw v372,0(v371)
lw $t1,0($t0)
# compute the right operand
# Original instruction: li v373,0
li $t0,0
# Original instruction: xor v370,v372,v373
xor $t0,$t1,$t0
# Original instruction: sltiu v370,v370,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v370,$zero,label_121_elseLabel
beq $t0,$zero,label_121_elseLabel
# Original instruction: la v374,label_23_
la $t0,label_23_
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v374
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# Original instruction: b label_122_endLabel
b label_122_endLabel
# else branch
label_121_elseLabel:
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: addiu v376,$fp,-20
addiu $t0,$fp,-20
# Original instruction: lw v377,0(v376)
lw $t2,0($t0)
# compute the right operand
# compute the left operand
# Original instruction: li v379,0
li $t1,0
# compute the right operand
# Original instruction: li v380,1
li $t0,1
# Original instruction: sub v378,v379,v380
sub $t0,$t1,$t0
# Original instruction: xor v375,v377,v378
xor $t0,$t2,$t0
# Original instruction: sltiu v375,v375,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v375,$zero,label_123_elseLabel
beq $t0,$zero,label_123_elseLabel
# Original instruction: la v381,label_24_
la $t0,label_24_
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v381
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# Original instruction: b label_124_endLabel
b label_124_endLabel
# else branch
label_123_elseLabel:
# get address of variable
# Original instruction: addiu v382,$fp,-16
addiu $t1,$fp,-16
# get value to assign
# Original instruction: li v383,0
li $t0,0
# assign value to variable address
# Original instruction: sw v383,0(v382)
sw $t0,0($t1)
label_124_endLabel:
label_122_endLabel:
# branch to start of loop to check condition
# Original instruction: b label_119_loop
b label_119_loop
label_120_endLabel:
# return label of the function selectmove
label_118_return:
# popping all used registers from the stack
# Original instruction: popRegisters
lw $t2,0($sp)
addi $sp,$sp,4
lw $t1,0($sp)
addi $sp,$sp,4
lw $t0,0($sp)
addi $sp,$sp,4
# setting the sp to the top of the old frame
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# load the return address from the stack
# Original instruction: lw $ra,-4($fp)
lw $ra,-4($fp)
# load the old frame pointer into fp
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# jump to the return address
# Original instruction: jr $ra
jr $ra

.text
label_125_won:
# storing the old fp value at the start of the frame
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# setting the new fp to the value of the sp
# Original instruction: addu $fp,$sp,$zero
addu $fp,$sp,$zero
# moving sp by a word to reserve space for the return address
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# storing the return address in the frame
# Original instruction: sw $ra,0($sp)
sw $ra,0($sp)
# moving sp by the size of the local variables
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# pushing all used registers onto the stack
# Original instruction: pushRegisters
addi $sp,$sp,-4
sw $t0,0($sp)
addi $sp,$sp,-4
sw $t1,0($sp)
# get address of variable
# Original instruction: addiu v384,$fp,-8
addiu $t0,$fp,-8
# get value to assign
# Original instruction: li v385,0
li $t1,0
# assign value to variable address
# Original instruction: sw v385,0(v384)
sw $t1,0($t0)
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v387,label_27_a11
la $t0,label_27_a11
# Original instruction: lb v388,0(v387)
lb $t1,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: addiu v389,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v390,0(v389)
lb $t0,0($t0)
# Original instruction: xor v386,v388,v390
xor $t0,$t1,$t0
# Original instruction: sltiu v386,v386,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v386,$zero,label_127_elseLabel
beq $t0,$zero,label_127_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v392,label_30_a21
la $t0,label_30_a21
# Original instruction: lb v393,0(v392)
lb $t0,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: addiu v394,$fp,8
addiu $t1,$fp,8
# Original instruction: lb v395,0(v394)
lb $t1,0($t1)
# Original instruction: xor v391,v393,v395
xor $t0,$t0,$t1
# Original instruction: sltiu v391,v391,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v391,$zero,label_129_elseLabel
beq $t0,$zero,label_129_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v397,label_33_a31
la $t0,label_33_a31
# Original instruction: lb v398,0(v397)
lb $t0,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: addiu v399,$fp,8
addiu $t1,$fp,8
# Original instruction: lb v400,0(v399)
lb $t1,0($t1)
# Original instruction: xor v396,v398,v400
xor $t0,$t0,$t1
# Original instruction: sltiu v396,v396,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v396,$zero,label_131_elseLabel
beq $t0,$zero,label_131_elseLabel
# get address of variable
# Original instruction: addiu v401,$fp,-8
addiu $t1,$fp,-8
# get value to assign
# Original instruction: li v402,1
li $t0,1
# assign value to variable address
# Original instruction: sw v402,0(v401)
sw $t0,0($t1)
# Original instruction: b label_132_endLabel
b label_132_endLabel
# else branch
label_131_elseLabel:
label_132_endLabel:
# Original instruction: b label_130_endLabel
b label_130_endLabel
# else branch
label_129_elseLabel:
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v404,label_31_a22
la $t0,label_31_a22
# Original instruction: lb v405,0(v404)
lb $t1,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: addiu v406,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v407,0(v406)
lb $t0,0($t0)
# Original instruction: xor v403,v405,v407
xor $t0,$t1,$t0
# Original instruction: sltiu v403,v403,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v403,$zero,label_133_elseLabel
beq $t0,$zero,label_133_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v409,label_35_a33
la $t0,label_35_a33
# Original instruction: lb v410,0(v409)
lb $t1,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: addiu v411,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v412,0(v411)
lb $t0,0($t0)
# Original instruction: xor v408,v410,v412
xor $t0,$t1,$t0
# Original instruction: sltiu v408,v408,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v408,$zero,label_135_elseLabel
beq $t0,$zero,label_135_elseLabel
# get address of variable
# Original instruction: addiu v413,$fp,-8
addiu $t0,$fp,-8
# get value to assign
# Original instruction: li v414,1
li $t1,1
# assign value to variable address
# Original instruction: sw v414,0(v413)
sw $t1,0($t0)
# Original instruction: b label_136_endLabel
b label_136_endLabel
# else branch
label_135_elseLabel:
label_136_endLabel:
# Original instruction: b label_134_endLabel
b label_134_endLabel
# else branch
label_133_elseLabel:
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v416,label_28_a12
la $t0,label_28_a12
# Original instruction: lb v417,0(v416)
lb $t1,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: addiu v418,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v419,0(v418)
lb $t0,0($t0)
# Original instruction: xor v415,v417,v419
xor $t0,$t1,$t0
# Original instruction: sltiu v415,v415,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v415,$zero,label_137_elseLabel
beq $t0,$zero,label_137_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v421,label_29_a13
la $t0,label_29_a13
# Original instruction: lb v422,0(v421)
lb $t1,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: addiu v423,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v424,0(v423)
lb $t0,0($t0)
# Original instruction: xor v420,v422,v424
xor $t0,$t1,$t0
# Original instruction: sltiu v420,v420,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v420,$zero,label_139_elseLabel
beq $t0,$zero,label_139_elseLabel
# get address of variable
# Original instruction: addiu v425,$fp,-8
addiu $t0,$fp,-8
# get value to assign
# Original instruction: li v426,1
li $t1,1
# assign value to variable address
# Original instruction: sw v426,0(v425)
sw $t1,0($t0)
# Original instruction: b label_140_endLabel
b label_140_endLabel
# else branch
label_139_elseLabel:
label_140_endLabel:
# Original instruction: b label_138_endLabel
b label_138_endLabel
# else branch
label_137_elseLabel:
label_138_endLabel:
label_134_endLabel:
label_130_endLabel:
# Original instruction: b label_128_endLabel
b label_128_endLabel
# else branch
label_127_elseLabel:
label_128_endLabel:
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v428,label_28_a12
la $t0,label_28_a12
# Original instruction: lb v429,0(v428)
lb $t0,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: addiu v430,$fp,8
addiu $t1,$fp,8
# Original instruction: lb v431,0(v430)
lb $t1,0($t1)
# Original instruction: xor v427,v429,v431
xor $t0,$t0,$t1
# Original instruction: sltiu v427,v427,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v427,$zero,label_141_elseLabel
beq $t0,$zero,label_141_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v433,label_31_a22
la $t0,label_31_a22
# Original instruction: lb v434,0(v433)
lb $t1,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: addiu v435,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v436,0(v435)
lb $t0,0($t0)
# Original instruction: xor v432,v434,v436
xor $t0,$t1,$t0
# Original instruction: sltiu v432,v432,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v432,$zero,label_143_elseLabel
beq $t0,$zero,label_143_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v438,label_34_a32
la $t0,label_34_a32
# Original instruction: lb v439,0(v438)
lb $t1,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: addiu v440,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v441,0(v440)
lb $t0,0($t0)
# Original instruction: xor v437,v439,v441
xor $t0,$t1,$t0
# Original instruction: sltiu v437,v437,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v437,$zero,label_145_elseLabel
beq $t0,$zero,label_145_elseLabel
# get address of variable
# Original instruction: addiu v442,$fp,-8
addiu $t0,$fp,-8
# get value to assign
# Original instruction: li v443,1
li $t1,1
# assign value to variable address
# Original instruction: sw v443,0(v442)
sw $t1,0($t0)
# Original instruction: b label_146_endLabel
b label_146_endLabel
# else branch
label_145_elseLabel:
label_146_endLabel:
# Original instruction: b label_144_endLabel
b label_144_endLabel
# else branch
label_143_elseLabel:
label_144_endLabel:
# Original instruction: b label_142_endLabel
b label_142_endLabel
# else branch
label_141_elseLabel:
label_142_endLabel:
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v445,label_29_a13
la $t0,label_29_a13
# Original instruction: lb v446,0(v445)
lb $t0,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: addiu v447,$fp,8
addiu $t1,$fp,8
# Original instruction: lb v448,0(v447)
lb $t1,0($t1)
# Original instruction: xor v444,v446,v448
xor $t0,$t0,$t1
# Original instruction: sltiu v444,v444,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v444,$zero,label_147_elseLabel
beq $t0,$zero,label_147_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v450,label_32_a23
la $t0,label_32_a23
# Original instruction: lb v451,0(v450)
lb $t0,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: addiu v452,$fp,8
addiu $t1,$fp,8
# Original instruction: lb v453,0(v452)
lb $t1,0($t1)
# Original instruction: xor v449,v451,v453
xor $t0,$t0,$t1
# Original instruction: sltiu v449,v449,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v449,$zero,label_149_elseLabel
beq $t0,$zero,label_149_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v455,label_35_a33
la $t0,label_35_a33
# Original instruction: lb v456,0(v455)
lb $t1,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: addiu v457,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v458,0(v457)
lb $t0,0($t0)
# Original instruction: xor v454,v456,v458
xor $t0,$t1,$t0
# Original instruction: sltiu v454,v454,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v454,$zero,label_151_elseLabel
beq $t0,$zero,label_151_elseLabel
# get address of variable
# Original instruction: addiu v459,$fp,-8
addiu $t0,$fp,-8
# get value to assign
# Original instruction: li v460,1
li $t1,1
# assign value to variable address
# Original instruction: sw v460,0(v459)
sw $t1,0($t0)
# Original instruction: b label_152_endLabel
b label_152_endLabel
# else branch
label_151_elseLabel:
label_152_endLabel:
# Original instruction: b label_150_endLabel
b label_150_endLabel
# else branch
label_149_elseLabel:
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v462,label_31_a22
la $t0,label_31_a22
# Original instruction: lb v463,0(v462)
lb $t1,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: addiu v464,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v465,0(v464)
lb $t0,0($t0)
# Original instruction: xor v461,v463,v465
xor $t0,$t1,$t0
# Original instruction: sltiu v461,v461,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v461,$zero,label_153_elseLabel
beq $t0,$zero,label_153_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v467,label_33_a31
la $t0,label_33_a31
# Original instruction: lb v468,0(v467)
lb $t1,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: addiu v469,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v470,0(v469)
lb $t0,0($t0)
# Original instruction: xor v466,v468,v470
xor $t0,$t1,$t0
# Original instruction: sltiu v466,v466,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v466,$zero,label_155_elseLabel
beq $t0,$zero,label_155_elseLabel
# get address of variable
# Original instruction: addiu v471,$fp,-8
addiu $t0,$fp,-8
# get value to assign
# Original instruction: li v472,1
li $t1,1
# assign value to variable address
# Original instruction: sw v472,0(v471)
sw $t1,0($t0)
# Original instruction: b label_156_endLabel
b label_156_endLabel
# else branch
label_155_elseLabel:
label_156_endLabel:
# Original instruction: b label_154_endLabel
b label_154_endLabel
# else branch
label_153_elseLabel:
label_154_endLabel:
label_150_endLabel:
# Original instruction: b label_148_endLabel
b label_148_endLabel
# else branch
label_147_elseLabel:
label_148_endLabel:
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v474,label_30_a21
la $t0,label_30_a21
# Original instruction: lb v475,0(v474)
lb $t1,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: addiu v476,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v477,0(v476)
lb $t0,0($t0)
# Original instruction: xor v473,v475,v477
xor $t0,$t1,$t0
# Original instruction: sltiu v473,v473,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v473,$zero,label_157_elseLabel
beq $t0,$zero,label_157_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v479,label_31_a22
la $t0,label_31_a22
# Original instruction: lb v480,0(v479)
lb $t1,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: addiu v481,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v482,0(v481)
lb $t0,0($t0)
# Original instruction: xor v478,v480,v482
xor $t0,$t1,$t0
# Original instruction: sltiu v478,v478,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v478,$zero,label_159_elseLabel
beq $t0,$zero,label_159_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v484,label_32_a23
la $t0,label_32_a23
# Original instruction: lb v485,0(v484)
lb $t1,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: addiu v486,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v487,0(v486)
lb $t0,0($t0)
# Original instruction: xor v483,v485,v487
xor $t0,$t1,$t0
# Original instruction: sltiu v483,v483,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v483,$zero,label_161_elseLabel
beq $t0,$zero,label_161_elseLabel
# get address of variable
# Original instruction: addiu v488,$fp,-8
addiu $t0,$fp,-8
# get value to assign
# Original instruction: li v489,1
li $t1,1
# assign value to variable address
# Original instruction: sw v489,0(v488)
sw $t1,0($t0)
# Original instruction: b label_162_endLabel
b label_162_endLabel
# else branch
label_161_elseLabel:
label_162_endLabel:
# Original instruction: b label_160_endLabel
b label_160_endLabel
# else branch
label_159_elseLabel:
label_160_endLabel:
# Original instruction: b label_158_endLabel
b label_158_endLabel
# else branch
label_157_elseLabel:
label_158_endLabel:
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v491,label_33_a31
la $t0,label_33_a31
# Original instruction: lb v492,0(v491)
lb $t1,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: addiu v493,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v494,0(v493)
lb $t0,0($t0)
# Original instruction: xor v490,v492,v494
xor $t0,$t1,$t0
# Original instruction: sltiu v490,v490,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v490,$zero,label_163_elseLabel
beq $t0,$zero,label_163_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v496,label_34_a32
la $t0,label_34_a32
# Original instruction: lb v497,0(v496)
lb $t1,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: addiu v498,$fp,8
addiu $t0,$fp,8
# Original instruction: lb v499,0(v498)
lb $t0,0($t0)
# Original instruction: xor v495,v497,v499
xor $t0,$t1,$t0
# Original instruction: sltiu v495,v495,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v495,$zero,label_165_elseLabel
beq $t0,$zero,label_165_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: la v501,label_35_a33
la $t0,label_35_a33
# Original instruction: lb v502,0(v501)
lb $t0,0($t0)
# compute the right operand
# get address of the variable
# get address of variable
# Original instruction: addiu v503,$fp,8
addiu $t1,$fp,8
# Original instruction: lb v504,0(v503)
lb $t1,0($t1)
# Original instruction: xor v500,v502,v504
xor $t0,$t0,$t1
# Original instruction: sltiu v500,v500,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v500,$zero,label_167_elseLabel
beq $t0,$zero,label_167_elseLabel
# get address of variable
# Original instruction: addiu v505,$fp,-8
addiu $t1,$fp,-8
# get value to assign
# Original instruction: li v506,1
li $t0,1
# assign value to variable address
# Original instruction: sw v506,0(v505)
sw $t0,0($t1)
# Original instruction: b label_168_endLabel
b label_168_endLabel
# else branch
label_167_elseLabel:
label_168_endLabel:
# Original instruction: b label_166_endLabel
b label_166_endLabel
# else branch
label_165_elseLabel:
label_166_endLabel:
# Original instruction: b label_164_endLabel
b label_164_endLabel
# else branch
label_163_elseLabel:
label_164_endLabel:
# computing the return value
# get address of the variable
# get address of variable
# Original instruction: addiu v507,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v508,0(v507)
lw $t0,0($t0)
# copying the return value into the previous frame
# Original instruction: sw v508,4($fp)
sw $t0,4($fp)
# branching to the return label
# Original instruction: b label_126_return
b label_126_return
# return label of the function won
label_126_return:
# popping all used registers from the stack
# Original instruction: popRegisters
lw $t1,0($sp)
addi $sp,$sp,4
lw $t0,0($sp)
addi $sp,$sp,4
# setting the sp to the top of the old frame
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# load the return address from the stack
# Original instruction: lw $ra,-4($fp)
lw $ra,-4($fp)
# load the old frame pointer into fp
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# jump to the return address
# Original instruction: jr $ra
jr $ra

.text
# entry point main function
.globl main
main:
# initialising frame pointer as the value of the stack
# Original instruction: addu $fp,$sp,$zero
addu $fp,$sp,$zero
# moving sp by a word
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# moving sp by the size of the local variables
# Original instruction: addiu $sp,$sp,-16
addiu $sp,$sp,-16
# get address of variable
# Original instruction: la v509,label_36_empty
la $t1,label_36_empty
# get value to assign
# Original instruction: li v510,32
li $t0,32
# assign value to variable address
# Original instruction: sb v510,0(v509)
sb $t0,0($t1)
# get address of variable
# Original instruction: addiu v511,$fp,-8
addiu $t1,$fp,-8
# get value to assign
# Original instruction: li v512,1
li $t0,1
# assign value to variable address
# Original instruction: sw v512,0(v511)
sw $t0,0($t1)
# move sp by the to allocate space for the args and return value
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# move sp onto the new frame
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# copy args onto the stack
# Original instruction: jal label_37_reset
jal label_37_reset
# read return value from the stack
# move sp to deallocate the space of the args and return value
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# move sp by the to allocate space for the args and return value
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# move sp onto the new frame
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# copy args onto the stack
# Original instruction: jal label_105_printGame
jal label_105_printGame
# read return value from the stack
# move sp to deallocate the space of the args and return value
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# get address of variable
# Original instruction: addiu v515,$fp,-12
addiu $t0,$fp,-12
# get value to assign
# Original instruction: li v516,1
li $t1,1
# assign value to variable address
# Original instruction: sw v516,0(v515)
sw $t1,0($t0)
label_171_loop:
# get address of the variable
# get address of variable
# Original instruction: addiu v517,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v518,0(v517)
lw $t0,0($t0)
# check if condition is true, branch to end if false
# Original instruction: beq v518,$zero,label_172_endLabel
beq $t0,$zero,label_172_endLabel
# move sp by the to allocate space for the args and return value
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# move sp onto the new frame
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# copy args onto the stack
# get address of the variable
# get address of variable
# Original instruction: addiu v520,$fp,-12
addiu $t0,$fp,-12
# Original instruction: lw v521,0(v520)
lw $t0,0($t0)
# Original instruction: sw v521,4($sp)
sw $t0,4($sp)
# Original instruction: jal label_117_selectmove
jal label_117_selectmove
# read return value from the stack
# move sp to deallocate the space of the args and return value
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# get address of variable
# Original instruction: addiu v522,$fp,-16
addiu $t0,$fp,-16
# get value to assign
# move sp by the to allocate space for the args and return value
# Original instruction: addiu $sp,$sp,-8
addiu $sp,$sp,-8
# move sp onto the new frame
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# copy args onto the stack
# get address of the variable
# get address of variable
# Original instruction: addiu v524,$fp,-12
addiu $t1,$fp,-12
# Original instruction: lw v525,0(v524)
lw $t1,0($t1)
# Original instruction: sw v525,8($sp)
sw $t1,8($sp)
# Original instruction: jal label_113_get_mark
jal label_113_get_mark
# read return value from the stack
# Original instruction: lb v523,0($sp)
lb $t1,0($sp)
# move sp to deallocate the space of the args and return value
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# assign value to variable address
# Original instruction: sb v523,0(v522)
sb $t1,0($t0)
# move sp by the to allocate space for the args and return value
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# move sp onto the new frame
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# copy args onto the stack
# Original instruction: jal label_105_printGame
jal label_105_printGame
# read return value from the stack
# move sp to deallocate the space of the args and return value
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# move sp by the to allocate space for the args and return value
# Original instruction: addiu $sp,$sp,-8
addiu $sp,$sp,-8
# move sp onto the new frame
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# copy args onto the stack
# get address of the variable
# get address of variable
# Original instruction: addiu v528,$fp,-16
addiu $t0,$fp,-16
# Original instruction: lb v529,0(v528)
lb $t0,0($t0)
# Original instruction: sb v529,8($sp)
sb $t0,8($sp)
# Original instruction: jal label_125_won
jal label_125_won
# read return value from the stack
# Original instruction: lw v527,0($sp)
lw $t0,0($sp)
# move sp to deallocate the space of the args and return value
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# check if condition is true, branch to else if false
# Original instruction: beq v527,$zero,label_173_elseLabel
beq $t0,$zero,label_173_elseLabel
# move sp by the to allocate space for the args and return value
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# move sp onto the new frame
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# copy args onto the stack
# get address of the variable
# get address of variable
# Original instruction: addiu v531,$fp,-12
addiu $t0,$fp,-12
# Original instruction: lw v532,0(v531)
lw $t0,0($t0)
# Original instruction: sw v532,4($sp)
sw $t0,4($sp)
# Original instruction: jal label_107_printWinner
jal label_107_printWinner
# read return value from the stack
# move sp to deallocate the space of the args and return value
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# get address of variable
# Original instruction: addiu v533,$fp,-8
addiu $t0,$fp,-8
# get value to assign
# Original instruction: li v534,0
li $t1,0
# assign value to variable address
# Original instruction: sw v534,0(v533)
sw $t1,0($t0)
# Original instruction: b label_174_endLabel
b label_174_endLabel
# else branch
label_173_elseLabel:
# compute the left operand
# move sp by the to allocate space for the args and return value
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# move sp onto the new frame
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# copy args onto the stack
# Original instruction: jal label_39_full
jal label_39_full
# read return value from the stack
# Original instruction: lw v536,0($sp)
lw $t0,0($sp)
# move sp to deallocate the space of the args and return value
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# compute the right operand
# Original instruction: li v537,1
li $t1,1
# Original instruction: xor v535,v536,v537
xor $t0,$t0,$t1
# Original instruction: sltiu v535,v535,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v535,$zero,label_175_elseLabel
beq $t0,$zero,label_175_elseLabel
# Original instruction: la v538,label_25_
la $t0,label_25_
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v538
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# get address of variable
# Original instruction: addiu v539,$fp,-8
addiu $t0,$fp,-8
# get value to assign
# Original instruction: li v540,0
li $t1,0
# assign value to variable address
# Original instruction: sw v540,0(v539)
sw $t1,0($t0)
# Original instruction: b label_176_endLabel
b label_176_endLabel
# else branch
label_175_elseLabel:
# get address of variable
# Original instruction: addiu v541,$fp,-12
addiu $t1,$fp,-12
# get value to assign
# move sp by the to allocate space for the args and return value
# Original instruction: addiu $sp,$sp,-8
addiu $sp,$sp,-8
# move sp onto the new frame
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# copy args onto the stack
# get address of the variable
# get address of variable
# Original instruction: addiu v543,$fp,-12
addiu $t0,$fp,-12
# Original instruction: lw v544,0(v543)
lw $t0,0($t0)
# Original instruction: sw v544,8($sp)
sw $t0,8($sp)
# Original instruction: jal label_109_switchPlayer
jal label_109_switchPlayer
# read return value from the stack
# Original instruction: lw v542,0($sp)
lw $t0,0($sp)
# move sp to deallocate the space of the args and return value
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# assign value to variable address
# Original instruction: sw v542,0(v541)
sw $t0,0($t1)
label_176_endLabel:
label_174_endLabel:
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: addiu v546,$fp,-8
addiu $t0,$fp,-8
# Original instruction: lw v547,0(v546)
lw $t0,0($t0)
# compute the right operand
# Original instruction: li v548,0
li $t1,0
# Original instruction: xor v545,v547,v548
xor $t0,$t0,$t1
# Original instruction: sltiu v545,v545,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v545,$zero,label_177_elseLabel
beq $t0,$zero,label_177_elseLabel
# Original instruction: la v549,label_26_
la $t0,label_26_
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v549
add $a0,$zero,$t0
# Original instruction: syscall
syscall
# get address of variable
# Original instruction: addiu v550,$fp,-20
addiu $t0,$fp,-20
# get value to assign
# Original instruction: li $v0,12
li $v0,12
# Original instruction: syscall
syscall
# Original instruction: add v551,$v0,$zero
add $t1,$v0,$zero
# assign value to variable address
# Original instruction: sb v551,0(v550)
sb $t1,0($t0)
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: addiu v553,$fp,-20
addiu $t0,$fp,-20
# Original instruction: lb v554,0(v553)
lb $t0,0($t0)
# compute the right operand
# Original instruction: li v555,121
li $t1,121
# Original instruction: xor v552,v554,v555
xor $t0,$t0,$t1
# Original instruction: sltiu v552,v552,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v552,$zero,label_179_elseLabel
beq $t0,$zero,label_179_elseLabel
# get address of variable
# Original instruction: addiu v556,$fp,-8
addiu $t0,$fp,-8
# get value to assign
# Original instruction: li v557,1
li $t1,1
# assign value to variable address
# Original instruction: sw v557,0(v556)
sw $t1,0($t0)
# move sp by the to allocate space for the args and return value
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# move sp onto the new frame
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# copy args onto the stack
# Original instruction: jal label_37_reset
jal label_37_reset
# read return value from the stack
# move sp to deallocate the space of the args and return value
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# Original instruction: b label_180_endLabel
b label_180_endLabel
# else branch
label_179_elseLabel:
# compute the left operand
# get address of the variable
# get address of variable
# Original instruction: addiu v560,$fp,-20
addiu $t0,$fp,-20
# Original instruction: lb v561,0(v560)
lb $t0,0($t0)
# compute the right operand
# Original instruction: li v562,89
li $t1,89
# Original instruction: xor v559,v561,v562
xor $t0,$t0,$t1
# Original instruction: sltiu v559,v559,1
sltiu $t0,$t0,1
# check if condition is true, branch to else if false
# Original instruction: beq v559,$zero,label_181_elseLabel
beq $t0,$zero,label_181_elseLabel
# get address of variable
# Original instruction: addiu v563,$fp,-8
addiu $t1,$fp,-8
# get value to assign
# Original instruction: li v564,1
li $t0,1
# assign value to variable address
# Original instruction: sw v564,0(v563)
sw $t0,0($t1)
# move sp by the to allocate space for the args and return value
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# move sp onto the new frame
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# copy args onto the stack
# Original instruction: jal label_37_reset
jal label_37_reset
# read return value from the stack
# move sp to deallocate the space of the args and return value
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# Original instruction: b label_182_endLabel
b label_182_endLabel
# else branch
label_181_elseLabel:
label_182_endLabel:
label_180_endLabel:
# Original instruction: b label_178_endLabel
b label_178_endLabel
# else branch
label_177_elseLabel:
label_178_endLabel:
# branch to start of loop to check condition
# Original instruction: b label_171_loop
b label_171_loop
label_172_endLabel:
label_170_return:
# exiting the program
# Original instruction: li $v0,10
li $v0,10
# Original instruction: syscall
syscall

