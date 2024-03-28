.data

.data
# Allocated labels for virtual registers
label_60_v15:
.space 4
label_51_v13:
.space 4
label_27_v1:
.space 4
label_30_v0:
.space 4
label_90_v30:
.space 4
label_106_v37:
.space 4
label_130_v47:
.space 4
label_105_v38:
.space 4
label_114_v41:
.space 4
label_52_v14:
.space 4
label_112_v39:
.space 4
label_83_v28:
.space 4
label_34_v5:
.space 4
label_74_v25:
.space 4
label_134_v50:
.space 4
label_132_v49:
.space 4
label_58_v16:
.space 4
label_39_v7:
.space 4
label_88_v27:
.space 4
label_110_v36:
.space 4
label_45_v10:
.space 4
label_95_v33:
.space 4
label_121_v43:
.space 4
label_102_v35:
.space 4
label_92_v31:
.space 4
label_62_v18:
.space 4
label_80_v26:
.space 4
label_36_v3:
.space 4
label_73_v24:
.space 4
label_65_v20:
.space 4
label_57_v17:
.space 4
label_119_v40:
.space 4
label_54_v12:
.space 4
label_48_v9:
.space 4
label_139_v51:
.space 4
label_125_v46:
.space 4
label_100_v32:
.space 4
label_66_v21:
.space 4
label_84_v29:
.space 4
label_123_v45:
.space 4
label_42_v6:
.space 4
label_68_v19:
.space 4
label_33_v4:
.space 4
label_96_v34:
.space 4
label_137_v48:
.space 4
label_70_v22:
.space 4
label_78_v23:
.space 4
label_128_v44:
.space 4
label_116_v42:
.space 4
label_40_v8:
.space 4
label_28_v2:
.space 4
label_46_v11:
.space 4

.text
main:
# Original instruction: li v1,0
li $t5,0
la $t0,label_27_v1
sw $t5,0($t0)
# Original instruction: li v2,1
li $t5,1
la $t0,label_28_v2
sw $t5,0($t0)
# Original instruction: add v0,v1,v2
la $t5,label_27_v1
lw $t5,0($t5)
la $t4,label_28_v2
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_30_v0
sw $t3,0($t0)
# Original instruction: li $v0,1
li $v0,1
# Original instruction: add $a0,$zero,v0
la $t5,label_30_v0
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: li v4,3
li $t5,3
la $t0,label_33_v4
sw $t5,0($t0)
# Original instruction: li v5,1
li $t5,1
la $t0,label_34_v5
sw $t5,0($t0)
# Original instruction: sub v3,v4,v5
la $t5,label_33_v4
lw $t5,0($t5)
la $t4,label_34_v5
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_36_v3
sw $t3,0($t0)
# Original instruction: li $v0,1
li $v0,1
# Original instruction: add $a0,$zero,v3
la $t5,label_36_v3
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: li v7,3
li $t5,3
la $t0,label_39_v7
sw $t5,0($t0)
# Original instruction: li v8,1
li $t5,1
la $t0,label_40_v8
sw $t5,0($t0)
# Original instruction: mul v6,v7,v8
la $t5,label_39_v7
lw $t5,0($t5)
la $t4,label_40_v8
lw $t4,0($t4)
mul $t3,$t5,$t4
la $t0,label_42_v6
sw $t3,0($t0)
# Original instruction: li $v0,1
li $v0,1
# Original instruction: add $a0,$zero,v6
la $t5,label_42_v6
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: li v10,8
li $t5,8
la $t0,label_45_v10
sw $t5,0($t0)
# Original instruction: li v11,2
li $t5,2
la $t0,label_46_v11
sw $t5,0($t0)
# Original instruction: div v10,v11
la $t5,label_45_v10
lw $t5,0($t5)
la $t4,label_46_v11
lw $t4,0($t4)
div $t5,$t4
# Original instruction: mflo v9
mflo $t5
la $t0,label_48_v9
sw $t5,0($t0)
# Original instruction: li $v0,1
li $v0,1
# Original instruction: add $a0,$zero,v9
la $t5,label_48_v9
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: li v13,15
li $t5,15
la $t0,label_51_v13
sw $t5,0($t0)
# Original instruction: li v14,10
li $t5,10
la $t0,label_52_v14
sw $t5,0($t0)
# Original instruction: div v13,v14
la $t5,label_51_v13
lw $t5,0($t5)
la $t4,label_52_v14
lw $t4,0($t4)
div $t5,$t4
# Original instruction: mfhi v12
mfhi $t5
la $t0,label_54_v12
sw $t5,0($t0)
# Original instruction: li $v0,1
li $v0,1
# Original instruction: add $a0,$zero,v12
la $t5,label_54_v12
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: li v16,3
li $t5,3
la $t0,label_58_v16
sw $t5,0($t0)
# Original instruction: li v17,2
li $t5,2
la $t0,label_57_v17
sw $t5,0($t0)
# Original instruction: slt v15,v17,v16
la $t5,label_57_v17
lw $t5,0($t5)
la $t4,label_58_v16
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_60_v15
sw $t3,0($t0)
# Original instruction: beq v15,$zero,label_1_elseLabel
la $t5,label_60_v15
lw $t5,0($t5)
beq $t5,$zero,label_1_elseLabel
# Original instruction: li v18,6
li $t5,6
la $t0,label_62_v18
sw $t5,0($t0)
# Original instruction: li $v0,1
li $v0,1
# Original instruction: add $a0,$zero,v18
la $t5,label_62_v18
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: b label_2_endLabel
b label_2_endLabel
label_1_elseLabel:
label_2_endLabel:
# Original instruction: li v20,3
li $t5,3
la $t0,label_65_v20
sw $t5,0($t0)
# Original instruction: li v21,4
li $t5,4
la $t0,label_66_v21
sw $t5,0($t0)
# Original instruction: slt v19,v20,v21
la $t5,label_65_v20
lw $t5,0($t5)
la $t4,label_66_v21
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_68_v19
sw $t3,0($t0)
# Original instruction: beq v19,$zero,label_3_elseLabel
la $t5,label_68_v19
lw $t5,0($t5)
beq $t5,$zero,label_3_elseLabel
# Original instruction: li v22,7
li $t5,7
la $t0,label_70_v22
sw $t5,0($t0)
# Original instruction: li $v0,1
li $v0,1
# Original instruction: add $a0,$zero,v22
la $t5,label_70_v22
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: b label_4_endLabel
b label_4_endLabel
label_3_elseLabel:
label_4_endLabel:
# Original instruction: li v24,4
li $t5,4
la $t0,label_73_v24
sw $t5,0($t0)
# Original instruction: li v25,4
li $t5,4
la $t0,label_74_v25
sw $t5,0($t0)
# Original instruction: xor v23,v24,v25
la $t5,label_73_v24
lw $t5,0($t5)
la $t4,label_74_v25
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_78_v23
sw $t3,0($t0)
# Original instruction: sltiu v23,v23,1
la $t4,label_78_v23
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_78_v23
sw $t4,0($t0)
# Original instruction: beq v23,$zero,label_5_elseLabel
la $t5,label_78_v23
lw $t5,0($t5)
beq $t5,$zero,label_5_elseLabel
# Original instruction: li v26,8
li $t5,8
la $t0,label_80_v26
sw $t5,0($t0)
# Original instruction: li $v0,1
li $v0,1
# Original instruction: add $a0,$zero,v26
la $t5,label_80_v26
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: b label_6_endLabel
b label_6_endLabel
label_5_elseLabel:
label_6_endLabel:
# Original instruction: li v28,4
li $t5,4
la $t0,label_83_v28
sw $t5,0($t0)
# Original instruction: li v29,0
li $t5,0
la $t0,label_84_v29
sw $t5,0($t0)
# Original instruction: xor v27,v28,v29
la $t5,label_83_v28
lw $t5,0($t5)
la $t4,label_84_v29
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_88_v27
sw $t3,0($t0)
# Original instruction: sltu v27,$zero,v27
la $t4,label_88_v27
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_88_v27
sw $t4,0($t0)
# Original instruction: beq v27,$zero,label_7_elseLabel
la $t5,label_88_v27
lw $t5,0($t5)
beq $t5,$zero,label_7_elseLabel
# Original instruction: li v30,9
li $t5,9
la $t0,label_90_v30
sw $t5,0($t0)
# Original instruction: li $v0,1
li $v0,1
# Original instruction: add $a0,$zero,v30
la $t5,label_90_v30
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: b label_8_endLabel
b label_8_endLabel
label_7_elseLabel:
label_8_endLabel:
# Original instruction: li v31,10
li $t5,10
la $t0,label_92_v31
sw $t5,0($t0)
# Original instruction: li $v0,11
li $v0,11
# Original instruction: add $a0,$zero,v31
la $t5,label_92_v31
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: li v33,3
li $t5,3
la $t0,label_95_v33
sw $t5,0($t0)
# Original instruction: li v34,3
li $t5,3
la $t0,label_96_v34
sw $t5,0($t0)
# Original instruction: slt v32,v33,v34
la $t5,label_95_v33
lw $t5,0($t5)
la $t4,label_96_v34
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_100_v32
sw $t3,0($t0)
# Original instruction: sltiu v32,v32,1
la $t4,label_100_v32
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_100_v32
sw $t4,0($t0)
# Original instruction: beq v32,$zero,label_9_elseLabel
la $t5,label_100_v32
lw $t5,0($t5)
beq $t5,$zero,label_9_elseLabel
# Original instruction: li v35,1
li $t5,1
la $t0,label_102_v35
sw $t5,0($t0)
# Original instruction: li $v0,1
li $v0,1
# Original instruction: add $a0,$zero,v35
la $t5,label_102_v35
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: b label_10_endLabel
b label_10_endLabel
label_9_elseLabel:
label_10_endLabel:
# Original instruction: li v37,2
li $t5,2
la $t0,label_106_v37
sw $t5,0($t0)
# Original instruction: li v38,4
li $t5,4
la $t0,label_105_v38
sw $t5,0($t0)
# Original instruction: slt v36,v38,v37
la $t5,label_105_v38
lw $t5,0($t5)
la $t4,label_106_v37
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_110_v36
sw $t3,0($t0)
# Original instruction: sltiu v36,v36,1
la $t4,label_110_v36
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_110_v36
sw $t4,0($t0)
# Original instruction: beq v36,$zero,label_11_elseLabel
la $t5,label_110_v36
lw $t5,0($t5)
beq $t5,$zero,label_11_elseLabel
# Original instruction: li v39,2
li $t5,2
la $t0,label_112_v39
sw $t5,0($t0)
# Original instruction: li $v0,1
li $v0,1
# Original instruction: add $a0,$zero,v39
la $t5,label_112_v39
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: b label_12_endLabel
b label_12_endLabel
label_11_elseLabel:
label_12_endLabel:
# Original instruction: li v41,0
li $t5,0
la $t0,label_114_v41
sw $t5,0($t0)
# Original instruction: bnez v41,label_13_
la $t5,label_114_v41
lw $t5,0($t5)
bnez $t5,label_13_
# Original instruction: li v42,0
li $t5,0
la $t0,label_116_v42
sw $t5,0($t0)
# Original instruction: bnez v42,label_13_
la $t5,label_116_v42
lw $t5,0($t5)
bnez $t5,label_13_
# Original instruction: li v40,0
li $t5,0
la $t0,label_119_v40
sw $t5,0($t0)
# Original instruction: b label_14_
b label_14_
label_13_:
# Original instruction: li v40,1
li $t5,1
la $t0,label_119_v40
sw $t5,0($t0)
label_14_:
# Original instruction: beq v40,$zero,label_15_elseLabel
la $t5,label_119_v40
lw $t5,0($t5)
beq $t5,$zero,label_15_elseLabel
# Original instruction: li v43,3
li $t5,3
la $t0,label_121_v43
sw $t5,0($t0)
# Original instruction: li $v0,1
li $v0,1
# Original instruction: add $a0,$zero,v43
la $t5,label_121_v43
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: b label_16_endLabel
b label_16_endLabel
label_15_elseLabel:
label_16_endLabel:
# Original instruction: li v45,1
li $t5,1
la $t0,label_123_v45
sw $t5,0($t0)
# Original instruction: bnez v45,label_17_
la $t5,label_123_v45
lw $t5,0($t5)
bnez $t5,label_17_
# Original instruction: li v46,1
li $t5,1
la $t0,label_125_v46
sw $t5,0($t0)
# Original instruction: bnez v46,label_17_
la $t5,label_125_v46
lw $t5,0($t5)
bnez $t5,label_17_
# Original instruction: li v44,0
li $t5,0
la $t0,label_128_v44
sw $t5,0($t0)
# Original instruction: b label_18_
b label_18_
label_17_:
# Original instruction: li v44,1
li $t5,1
la $t0,label_128_v44
sw $t5,0($t0)
label_18_:
# Original instruction: beq v44,$zero,label_19_elseLabel
la $t5,label_128_v44
lw $t5,0($t5)
beq $t5,$zero,label_19_elseLabel
# Original instruction: li v47,4
li $t5,4
la $t0,label_130_v47
sw $t5,0($t0)
# Original instruction: li $v0,1
li $v0,1
# Original instruction: add $a0,$zero,v47
la $t5,label_130_v47
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: b label_20_endLabel
b label_20_endLabel
label_19_elseLabel:
label_20_endLabel:
# Original instruction: li v49,0
li $t5,0
la $t0,label_132_v49
sw $t5,0($t0)
# Original instruction: beqz v49,label_21_
la $t5,label_132_v49
lw $t5,0($t5)
beqz $t5,label_21_
# Original instruction: li v50,0
li $t5,0
la $t0,label_134_v50
sw $t5,0($t0)
# Original instruction: addi v48,v50,0
la $t5,label_134_v50
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_137_v48
sw $t4,0($t0)
# Original instruction: b label_22_
b label_22_
label_21_:
# Original instruction: li v48,0
li $t5,0
la $t0,label_137_v48
sw $t5,0($t0)
label_22_:
# Original instruction: beq v48,$zero,label_23_elseLabel
la $t5,label_137_v48
lw $t5,0($t5)
beq $t5,$zero,label_23_elseLabel
# Original instruction: li v51,5
li $t5,5
la $t0,label_139_v51
sw $t5,0($t0)
# Original instruction: li $v0,1
li $v0,1
# Original instruction: add $a0,$zero,v51
la $t5,label_139_v51
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: b label_24_endLabel
b label_24_endLabel
label_23_elseLabel:
label_24_endLabel:
# Original instruction: li $v0,10
li $v0,10
# Original instruction: syscall
syscall

