.data
.align 2

.data
# Allocated labels for virtual registers
label_85_v25:
.space 4
label_39_v14:
.space 4
label_12_v3:
.space 4
label_23_v7:
.space 4
label_53_v20:
.space 4
label_33_v10:
.space 4
label_41_v9:
.space 4
label_31_v12:
.space 4
label_68_v16:
.space 4
label_55_v18:
.space 4
label_77_v26:
.space 4
label_17_v6:
.space 4
label_90_v24:
.space 4
label_64_v21:
.space 4
label_45_v15:
.space 4
label_63_v17:
.space 4
label_86_v29:
.space 4
label_78_v27:
.space 4
label_20_v5:
.space 4
label_61_v22:
.space 4
label_11_v2:
.space 4
label_34_v11:
.space 4
label_19_v1:
.space 4
label_46_v8:
.space 4
label_83_v30:
.space 4
label_75_v28:
.space 4
label_24_v0:
.space 4
label_9_v4:
.space 4
label_67_v23:
.space 4
label_56_v19:
.space 4
label_42_v13:
.space 4
label_89_v31:
.space 4

.text
label_0_func:
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
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# Original instruction: pushRegisters
la $t0,label_85_v25
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_39_v14
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_12_v3
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_23_v7
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_53_v20
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_33_v10
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_41_v9
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_31_v12
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_68_v16
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_55_v18
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_77_v26
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_17_v6
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_90_v24
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_64_v21
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_45_v15
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_63_v17
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_86_v29
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_78_v27
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_20_v5
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_61_v22
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_11_v2
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_34_v11
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_19_v1
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_46_v8
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_83_v30
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_75_v28
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_24_v0
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_9_v4
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_67_v23
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_56_v19
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_42_v13
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_89_v31
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addiu v2,$fp,4
addiu $t5,$fp,4
la $t0,label_11_v2
sw $t5,0($t0)
# Original instruction: lw v2,0(v2)
la $t4,label_11_v2
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_11_v2
sw $t4,0($t0)
# Original instruction: li v3,0
li $t5,0
la $t0,label_12_v3
sw $t5,0($t0)
# Original instruction: li v4,8
li $t5,8
la $t0,label_9_v4
sw $t5,0($t0)
# Original instruction: mul v3,v3,v4
la $t3,label_12_v3
lw $t3,0($t3)
la $t4,label_9_v4
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_12_v3
sw $t3,0($t0)
# Original instruction: add v1,v2,v3
la $t5,label_11_v2
lw $t5,0($t5)
la $t4,label_12_v3
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_19_v1
sw $t3,0($t0)
# Original instruction: li v5,0
li $t5,0
la $t0,label_20_v5
sw $t5,0($t0)
# Original instruction: li v6,4
li $t5,4
la $t0,label_17_v6
sw $t5,0($t0)
# Original instruction: mul v5,v5,v6
la $t3,label_20_v5
lw $t3,0($t3)
la $t4,label_17_v6
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_20_v5
sw $t3,0($t0)
# Original instruction: add v0,v1,v5
la $t5,label_19_v1
lw $t5,0($t5)
la $t4,label_20_v5
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_24_v0
sw $t3,0($t0)
# Original instruction: li v7,5
li $t5,5
la $t0,label_23_v7
sw $t5,0($t0)
# Original instruction: sw v7,0(v0)
la $t5,label_23_v7
lw $t5,0($t5)
la $t4,label_24_v0
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v10,$fp,4
addiu $t5,$fp,4
la $t0,label_33_v10
sw $t5,0($t0)
# Original instruction: lw v10,0(v10)
la $t4,label_33_v10
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_33_v10
sw $t4,0($t0)
# Original instruction: li v11,0
li $t5,0
la $t0,label_34_v11
sw $t5,0($t0)
# Original instruction: li v12,8
li $t5,8
la $t0,label_31_v12
sw $t5,0($t0)
# Original instruction: mul v11,v11,v12
la $t3,label_34_v11
lw $t3,0($t3)
la $t4,label_31_v12
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_34_v11
sw $t3,0($t0)
# Original instruction: add v9,v10,v11
la $t5,label_33_v10
lw $t5,0($t5)
la $t4,label_34_v11
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_41_v9
sw $t3,0($t0)
# Original instruction: li v13,1
li $t5,1
la $t0,label_42_v13
sw $t5,0($t0)
# Original instruction: li v14,4
li $t5,4
la $t0,label_39_v14
sw $t5,0($t0)
# Original instruction: mul v13,v13,v14
la $t3,label_42_v13
lw $t3,0($t3)
la $t4,label_39_v14
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_42_v13
sw $t3,0($t0)
# Original instruction: add v8,v9,v13
la $t5,label_41_v9
lw $t5,0($t5)
la $t4,label_42_v13
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_46_v8
sw $t3,0($t0)
# Original instruction: li v15,6
li $t5,6
la $t0,label_45_v15
sw $t5,0($t0)
# Original instruction: sw v15,0(v8)
la $t5,label_45_v15
lw $t5,0($t5)
la $t4,label_46_v8
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v18,$fp,4
addiu $t5,$fp,4
la $t0,label_55_v18
sw $t5,0($t0)
# Original instruction: lw v18,0(v18)
la $t4,label_55_v18
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_55_v18
sw $t4,0($t0)
# Original instruction: li v19,1
li $t5,1
la $t0,label_56_v19
sw $t5,0($t0)
# Original instruction: li v20,8
li $t5,8
la $t0,label_53_v20
sw $t5,0($t0)
# Original instruction: mul v19,v19,v20
la $t3,label_56_v19
lw $t3,0($t3)
la $t4,label_53_v20
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_56_v19
sw $t3,0($t0)
# Original instruction: add v17,v18,v19
la $t5,label_55_v18
lw $t5,0($t5)
la $t4,label_56_v19
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_63_v17
sw $t3,0($t0)
# Original instruction: li v21,0
li $t5,0
la $t0,label_64_v21
sw $t5,0($t0)
# Original instruction: li v22,4
li $t5,4
la $t0,label_61_v22
sw $t5,0($t0)
# Original instruction: mul v21,v21,v22
la $t3,label_64_v21
lw $t3,0($t3)
la $t4,label_61_v22
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_64_v21
sw $t3,0($t0)
# Original instruction: add v16,v17,v21
la $t5,label_63_v17
lw $t5,0($t5)
la $t4,label_64_v21
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_68_v16
sw $t3,0($t0)
# Original instruction: li v23,7
li $t5,7
la $t0,label_67_v23
sw $t5,0($t0)
# Original instruction: sw v23,0(v16)
la $t5,label_67_v23
lw $t5,0($t5)
la $t4,label_68_v16
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v26,$fp,4
addiu $t5,$fp,4
la $t0,label_77_v26
sw $t5,0($t0)
# Original instruction: lw v26,0(v26)
la $t4,label_77_v26
lw $t4,0($t4)
lw $t4,0($t4)
la $t0,label_77_v26
sw $t4,0($t0)
# Original instruction: li v27,1
li $t5,1
la $t0,label_78_v27
sw $t5,0($t0)
# Original instruction: li v28,8
li $t5,8
la $t0,label_75_v28
sw $t5,0($t0)
# Original instruction: mul v27,v27,v28
la $t3,label_78_v27
lw $t3,0($t3)
la $t4,label_75_v28
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_78_v27
sw $t3,0($t0)
# Original instruction: add v25,v26,v27
la $t5,label_77_v26
lw $t5,0($t5)
la $t4,label_78_v27
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_85_v25
sw $t3,0($t0)
# Original instruction: li v29,1
li $t5,1
la $t0,label_86_v29
sw $t5,0($t0)
# Original instruction: li v30,4
li $t5,4
la $t0,label_83_v30
sw $t5,0($t0)
# Original instruction: mul v29,v29,v30
la $t3,label_86_v29
lw $t3,0($t3)
la $t4,label_83_v30
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_86_v29
sw $t3,0($t0)
# Original instruction: add v24,v25,v29
la $t5,label_85_v25
lw $t5,0($t5)
la $t4,label_86_v29
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_90_v24
sw $t3,0($t0)
# Original instruction: li v31,8
li $t5,8
la $t0,label_89_v31
sw $t5,0($t0)
# Original instruction: sw v31,0(v24)
la $t5,label_89_v31
lw $t5,0($t5)
la $t4,label_90_v24
lw $t4,0($t4)
sw $t5,0($t4)
label_1_return:
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_89_v31
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_42_v13
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_56_v19
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_67_v23
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_9_v4
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_24_v0
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_75_v28
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_83_v30
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_46_v8
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_19_v1
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_34_v11
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_11_v2
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_61_v22
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_20_v5
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_78_v27
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_86_v29
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_63_v17
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_45_v15
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_64_v21
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_90_v24
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_17_v6
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_77_v26
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_55_v18
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_68_v16
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_31_v12
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_41_v9
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_33_v10
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_53_v20
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_23_v7
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_12_v3
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_39_v14
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_85_v25
sw $t0,0($t1)
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
label_106_v37:
.space 4
label_149_v55:
.space 4
label_155_v60:
.space 4
label_118_v43:
.space 4
label_146_v53:
.space 4
label_105_v33:
.space 4
label_143_v54:
.space 4
label_170_v56:
.space 4
label_158_v59:
.space 4
label_135_v52:
.space 4
label_166_v61:
.space 4
label_163_v62:
.space 4
label_172_v65:
.space 4
label_97_v34:
.space 4
label_98_v35:
.space 4
label_117_v42:
.space 4
label_137_v50:
.space 4
label_157_v58:
.space 4
label_169_v63:
.space 4
label_125_v41:
.space 4
label_130_v40:
.space 4
label_103_v38:
.space 4
label_129_v47:
.space 4
label_145_v49:
.space 4
label_123_v46:
.space 4
label_150_v48:
.space 4
label_115_v44:
.space 4
label_109_v39:
.space 4
label_110_v32:
.space 4
label_165_v57:
.space 4
label_138_v51:
.space 4
label_95_v36:
.space 4
label_126_v45:
.space 4

.text
.globl main
main:
# Original instruction: addu $fp,$sp,$zero
addu $fp,$sp,$zero
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu $sp,$sp,-16
addiu $sp,$sp,-16
# Original instruction: addiu v34,$fp,-20
addiu $t5,$fp,-20
la $t0,label_97_v34
sw $t5,0($t0)
# Original instruction: li v35,0
li $t5,0
la $t0,label_98_v35
sw $t5,0($t0)
# Original instruction: li v36,8
li $t5,8
la $t0,label_95_v36
sw $t5,0($t0)
# Original instruction: mul v35,v35,v36
la $t3,label_98_v35
lw $t3,0($t3)
la $t4,label_95_v36
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_98_v35
sw $t3,0($t0)
# Original instruction: add v33,v34,v35
la $t5,label_97_v34
lw $t5,0($t5)
la $t4,label_98_v35
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_105_v33
sw $t3,0($t0)
# Original instruction: li v37,0
li $t5,0
la $t0,label_106_v37
sw $t5,0($t0)
# Original instruction: li v38,4
li $t5,4
la $t0,label_103_v38
sw $t5,0($t0)
# Original instruction: mul v37,v37,v38
la $t3,label_106_v37
lw $t3,0($t3)
la $t4,label_103_v38
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_106_v37
sw $t3,0($t0)
# Original instruction: add v32,v33,v37
la $t5,label_105_v33
lw $t5,0($t5)
la $t4,label_106_v37
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_110_v32
sw $t3,0($t0)
# Original instruction: li v39,1
li $t5,1
la $t0,label_109_v39
sw $t5,0($t0)
# Original instruction: sw v39,0(v32)
la $t5,label_109_v39
lw $t5,0($t5)
la $t4,label_110_v32
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v42,$fp,-20
addiu $t5,$fp,-20
la $t0,label_117_v42
sw $t5,0($t0)
# Original instruction: li v43,0
li $t5,0
la $t0,label_118_v43
sw $t5,0($t0)
# Original instruction: li v44,8
li $t5,8
la $t0,label_115_v44
sw $t5,0($t0)
# Original instruction: mul v43,v43,v44
la $t3,label_118_v43
lw $t3,0($t3)
la $t4,label_115_v44
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_118_v43
sw $t3,0($t0)
# Original instruction: add v41,v42,v43
la $t5,label_117_v42
lw $t5,0($t5)
la $t4,label_118_v43
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_125_v41
sw $t3,0($t0)
# Original instruction: li v45,1
li $t5,1
la $t0,label_126_v45
sw $t5,0($t0)
# Original instruction: li v46,4
li $t5,4
la $t0,label_123_v46
sw $t5,0($t0)
# Original instruction: mul v45,v45,v46
la $t3,label_126_v45
lw $t3,0($t3)
la $t4,label_123_v46
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_126_v45
sw $t3,0($t0)
# Original instruction: add v40,v41,v45
la $t5,label_125_v41
lw $t5,0($t5)
la $t4,label_126_v45
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_130_v40
sw $t3,0($t0)
# Original instruction: li v47,2
li $t5,2
la $t0,label_129_v47
sw $t5,0($t0)
# Original instruction: sw v47,0(v40)
la $t5,label_129_v47
lw $t5,0($t5)
la $t4,label_130_v40
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v50,$fp,-20
addiu $t5,$fp,-20
la $t0,label_137_v50
sw $t5,0($t0)
# Original instruction: li v51,1
li $t5,1
la $t0,label_138_v51
sw $t5,0($t0)
# Original instruction: li v52,8
li $t5,8
la $t0,label_135_v52
sw $t5,0($t0)
# Original instruction: mul v51,v51,v52
la $t3,label_138_v51
lw $t3,0($t3)
la $t4,label_135_v52
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_138_v51
sw $t3,0($t0)
# Original instruction: add v49,v50,v51
la $t5,label_137_v50
lw $t5,0($t5)
la $t4,label_138_v51
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_145_v49
sw $t3,0($t0)
# Original instruction: li v53,0
li $t5,0
la $t0,label_146_v53
sw $t5,0($t0)
# Original instruction: li v54,4
li $t5,4
la $t0,label_143_v54
sw $t5,0($t0)
# Original instruction: mul v53,v53,v54
la $t3,label_146_v53
lw $t3,0($t3)
la $t4,label_143_v54
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_146_v53
sw $t3,0($t0)
# Original instruction: add v48,v49,v53
la $t5,label_145_v49
lw $t5,0($t5)
la $t4,label_146_v53
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_150_v48
sw $t3,0($t0)
# Original instruction: li v55,3
li $t5,3
la $t0,label_149_v55
sw $t5,0($t0)
# Original instruction: sw v55,0(v48)
la $t5,label_149_v55
lw $t5,0($t5)
la $t4,label_150_v48
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu v58,$fp,-20
addiu $t5,$fp,-20
la $t0,label_157_v58
sw $t5,0($t0)
# Original instruction: li v59,1
li $t5,1
la $t0,label_158_v59
sw $t5,0($t0)
# Original instruction: li v60,8
li $t5,8
la $t0,label_155_v60
sw $t5,0($t0)
# Original instruction: mul v59,v59,v60
la $t3,label_158_v59
lw $t3,0($t3)
la $t4,label_155_v60
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_158_v59
sw $t3,0($t0)
# Original instruction: add v57,v58,v59
la $t5,label_157_v58
lw $t5,0($t5)
la $t4,label_158_v59
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_165_v57
sw $t3,0($t0)
# Original instruction: li v61,1
li $t5,1
la $t0,label_166_v61
sw $t5,0($t0)
# Original instruction: li v62,4
li $t5,4
la $t0,label_163_v62
sw $t5,0($t0)
# Original instruction: mul v61,v61,v62
la $t3,label_166_v61
lw $t3,0($t3)
la $t4,label_163_v62
lw $t4,0($t4)
mul $t3,$t3,$t4
la $t0,label_166_v61
sw $t3,0($t0)
# Original instruction: add v56,v57,v61
la $t5,label_165_v57
lw $t5,0($t5)
la $t4,label_166_v61
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_170_v56
sw $t3,0($t0)
# Original instruction: li v63,4
li $t5,4
la $t0,label_169_v63
sw $t5,0($t0)
# Original instruction: sw v63,0(v56)
la $t5,label_169_v63
lw $t5,0($t5)
la $t4,label_170_v56
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu v65,$fp,-20
addiu $t5,$fp,-20
la $t0,label_172_v65
sw $t5,0($t0)
# Original instruction: sw v65,4($sp)
la $t5,label_172_v65
lw $t5,0($t5)
sw $t5,4($sp)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: jal label_0_func
jal label_0_func
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: li $v0,10
li $v0,10
# Original instruction: syscall
syscall

