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

.data
# Allocated labels for virtual registers
label_202_v10:
.space 4
label_226_v22:
.space 4
label_228_v23:
.space 4
label_222_v20:
.space 4
label_220_v19:
.space 4
label_184_v1:
.space 4
label_192_v5:
.space 4
label_196_v7:
.space 4
label_223_v18:
.space 4
label_208_v13:
.space 4
label_235_v24:
.space 4
label_193_v3:
.space 4
label_186_v2:
.space 4
label_204_v11:
.space 4
label_198_v8:
.space 4
label_216_v17:
.space 4
label_190_v4:
.space 4
label_232_v25:
.space 4
label_234_v26:
.space 4
label_211_v12:
.space 4
label_214_v16:
.space 4
label_205_v9:
.space 4
label_199_v6:
.space 4
label_217_v15:
.space 4
label_187_v0:
.space 4
label_229_v21:
.space 4
label_210_v14:
.space 4

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
la $t0,label_202_v10
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_226_v22
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_228_v23
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_222_v20
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_220_v19
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_184_v1
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_192_v5
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_196_v7
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_223_v18
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_208_v13
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_235_v24
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_193_v3
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_186_v2
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_204_v11
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_198_v8
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_216_v17
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_190_v4
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_232_v25
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_234_v26
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_211_v12
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_214_v16
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_205_v9
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_199_v6
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_217_v15
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_187_v0
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_229_v21
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_210_v14
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
# get address of variable
# get address of the variable
# Original instruction: la v0,label_27_a11
la $t5,label_27_a11
la $t0,label_187_v0
sw $t5,0($t0)
# get value to assign
# get address of the variable
# get address of the variable
# Original instruction: la v1,label_36_empty
la $t5,label_36_empty
la $t0,label_184_v1
sw $t5,0($t0)
# Original instruction: lb v2,0(v1)
la $t5,label_184_v1
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_186_v2
sw $t4,0($t0)
# assign value to variable address
# Original instruction: sb v2,0(v0)
la $t5,label_186_v2
lw $t5,0($t5)
la $t4,label_187_v0
lw $t4,0($t4)
sb $t5,0($t4)
# get address of variable
# get address of the variable
# Original instruction: la v3,label_28_a12
la $t5,label_28_a12
la $t0,label_193_v3
sw $t5,0($t0)
# get value to assign
# get address of the variable
# get address of the variable
# Original instruction: la v4,label_36_empty
la $t5,label_36_empty
la $t0,label_190_v4
sw $t5,0($t0)
# Original instruction: lb v5,0(v4)
la $t5,label_190_v4
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_192_v5
sw $t4,0($t0)
# assign value to variable address
# Original instruction: sb v5,0(v3)
la $t5,label_192_v5
lw $t5,0($t5)
la $t4,label_193_v3
lw $t4,0($t4)
sb $t5,0($t4)
# get address of variable
# get address of the variable
# Original instruction: la v6,label_29_a13
la $t5,label_29_a13
la $t0,label_199_v6
sw $t5,0($t0)
# get value to assign
# get address of the variable
# get address of the variable
# Original instruction: la v7,label_36_empty
la $t5,label_36_empty
la $t0,label_196_v7
sw $t5,0($t0)
# Original instruction: lb v8,0(v7)
la $t5,label_196_v7
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_198_v8
sw $t4,0($t0)
# assign value to variable address
# Original instruction: sb v8,0(v6)
la $t5,label_198_v8
lw $t5,0($t5)
la $t4,label_199_v6
lw $t4,0($t4)
sb $t5,0($t4)
# get address of variable
# get address of the variable
# Original instruction: la v9,label_30_a21
la $t5,label_30_a21
la $t0,label_205_v9
sw $t5,0($t0)
# get value to assign
# get address of the variable
# get address of the variable
# Original instruction: la v10,label_36_empty
la $t5,label_36_empty
la $t0,label_202_v10
sw $t5,0($t0)
# Original instruction: lb v11,0(v10)
la $t5,label_202_v10
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_204_v11
sw $t4,0($t0)
# assign value to variable address
# Original instruction: sb v11,0(v9)
la $t5,label_204_v11
lw $t5,0($t5)
la $t4,label_205_v9
lw $t4,0($t4)
sb $t5,0($t4)
# get address of variable
# get address of the variable
# Original instruction: la v12,label_31_a22
la $t5,label_31_a22
la $t0,label_211_v12
sw $t5,0($t0)
# get value to assign
# get address of the variable
# get address of the variable
# Original instruction: la v13,label_36_empty
la $t5,label_36_empty
la $t0,label_208_v13
sw $t5,0($t0)
# Original instruction: lb v14,0(v13)
la $t5,label_208_v13
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_210_v14
sw $t4,0($t0)
# assign value to variable address
# Original instruction: sb v14,0(v12)
la $t5,label_210_v14
lw $t5,0($t5)
la $t4,label_211_v12
lw $t4,0($t4)
sb $t5,0($t4)
# get address of variable
# get address of the variable
# Original instruction: la v15,label_32_a23
la $t5,label_32_a23
la $t0,label_217_v15
sw $t5,0($t0)
# get value to assign
# get address of the variable
# get address of the variable
# Original instruction: la v16,label_36_empty
la $t5,label_36_empty
la $t0,label_214_v16
sw $t5,0($t0)
# Original instruction: lb v17,0(v16)
la $t5,label_214_v16
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_216_v17
sw $t4,0($t0)
# assign value to variable address
# Original instruction: sb v17,0(v15)
la $t5,label_216_v17
lw $t5,0($t5)
la $t4,label_217_v15
lw $t4,0($t4)
sb $t5,0($t4)
# get address of variable
# get address of the variable
# Original instruction: la v18,label_33_a31
la $t5,label_33_a31
la $t0,label_223_v18
sw $t5,0($t0)
# get value to assign
# get address of the variable
# get address of the variable
# Original instruction: la v19,label_36_empty
la $t5,label_36_empty
la $t0,label_220_v19
sw $t5,0($t0)
# Original instruction: lb v20,0(v19)
la $t5,label_220_v19
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_222_v20
sw $t4,0($t0)
# assign value to variable address
# Original instruction: sb v20,0(v18)
la $t5,label_222_v20
lw $t5,0($t5)
la $t4,label_223_v18
lw $t4,0($t4)
sb $t5,0($t4)
# get address of variable
# get address of the variable
# Original instruction: la v21,label_34_a32
la $t5,label_34_a32
la $t0,label_229_v21
sw $t5,0($t0)
# get value to assign
# get address of the variable
# get address of the variable
# Original instruction: la v22,label_36_empty
la $t5,label_36_empty
la $t0,label_226_v22
sw $t5,0($t0)
# Original instruction: lb v23,0(v22)
la $t5,label_226_v22
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_228_v23
sw $t4,0($t0)
# assign value to variable address
# Original instruction: sb v23,0(v21)
la $t5,label_228_v23
lw $t5,0($t5)
la $t4,label_229_v21
lw $t4,0($t4)
sb $t5,0($t4)
# get address of variable
# get address of the variable
# Original instruction: la v24,label_35_a33
la $t5,label_35_a33
la $t0,label_235_v24
sw $t5,0($t0)
# get value to assign
# get address of the variable
# get address of the variable
# Original instruction: la v25,label_36_empty
la $t5,label_36_empty
la $t0,label_232_v25
sw $t5,0($t0)
# Original instruction: lb v26,0(v25)
la $t5,label_232_v25
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_234_v26
sw $t4,0($t0)
# assign value to variable address
# Original instruction: sb v26,0(v24)
la $t5,label_234_v26
lw $t5,0($t5)
la $t4,label_235_v24
lw $t4,0($t4)
sb $t5,0($t4)
# return label of the function reset
label_38_return:
# popping all used registers from the stack
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_210_v14
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_229_v21
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_187_v0
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_217_v15
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_199_v6
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_205_v9
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_214_v16
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_211_v12
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_234_v26
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_232_v25
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_190_v4
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_216_v17
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_198_v8
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_204_v11
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_186_v2
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_193_v3
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_235_v24
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_208_v13
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_223_v18
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_196_v7
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_192_v5
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_184_v1
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_220_v19
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_222_v20
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_228_v23
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_226_v22
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_202_v10
sw $t0,0($t1)
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

.data
# Allocated labels for virtual registers
label_433_v117:
.space 4
label_260_v35:
.space 4
label_302_v58:
.space 4
label_312_v61:
.space 4
label_273_v39:
.space 4
label_378_v91:
.space 4
label_246_v31:
.space 4
label_349_v74:
.space 4
label_291_v53:
.space 4
label_389_v97:
.space 4
label_449_v123:
.space 4
label_401_v103:
.space 4
label_324_v68:
.space 4
label_269_v43:
.space 4
label_443_v122:
.space 4
label_392_v95:
.space 4
label_439_v120:
.space 4
label_295_v49:
.space 4
label_329_v70:
.space 4
label_434_v118:
.space 4
label_430_v116:
.space 4
label_357_v83:
.space 4
label_386_v96:
.space 4
label_383_v89:
.space 4
label_334_v71:
.space 4
label_283_v44:
.space 4
label_244_v32:
.space 4
label_342_v76:
.space 4
label_420_v112:
.space 4
label_310_v62:
.space 4
label_414_v105:
.space 4
label_239_v27:
.space 4
label_373_v90:
.space 4
label_368_v88:
.space 4
label_447_v119:
.space 4
label_436_v115:
.space 4
label_305_v54:
.space 4
label_258_v38:
.space 4
label_411_v107:
.space 4
label_307_v60:
.space 4
label_323_v67:
.space 4
label_261_v34:
.space 4
label_241_v30:
.space 4
label_254_v36:
.space 4
label_304_v55:
.space 4
label_326_v65:
.space 4
label_408_v106:
.space 4
label_263_v40:
.space 4
label_280_v48:
.space 4
label_354_v82:
.space 4
label_451_v124:
.space 4
label_437_v114:
.space 4
label_370_v85:
.space 4
label_367_v87:
.space 4
label_345_v77:
.space 4
label_339_v69:
.space 4
label_405_v99:
.space 4
label_371_v84:
.space 4
label_298_v56:
.space 4
label_335_v73:
.space 4
label_327_v64:
.space 4
label_427_v109:
.space 4
label_251_v29:
.space 4
label_415_v104:
.space 4
label_346_v78:
.space 4
label_317_v59:
.space 4
label_422_v111:
.space 4
label_276_v46:
.space 4
label_285_v50:
.space 4
label_351_v80:
.space 4
label_301_v57:
.space 4
label_266_v42:
.space 4
label_393_v94:
.space 4
label_332_v72:
.space 4
label_348_v75:
.space 4
label_398_v102:
.space 4
label_364_v86:
.space 4
label_356_v81:
.space 4
label_379_v93:
.space 4
label_361_v79:
.space 4
label_313_v63:
.space 4
label_442_v121:
.space 4
label_290_v51:
.space 4
label_320_v66:
.space 4
label_282_v45:
.space 4
label_412_v108:
.space 4
label_238_v28:
.space 4
label_395_v100:
.space 4
label_247_v33:
.space 4
label_390_v98:
.space 4
label_268_v41:
.space 4
label_417_v110:
.space 4
label_423_v113:
.space 4
label_288_v52:
.space 4
label_376_v92:
.space 4
label_257_v37:
.space 4
label_279_v47:
.space 4
label_400_v101:
.space 4

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
la $t0,label_433_v117
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_260_v35
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_302_v58
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_312_v61
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_273_v39
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_378_v91
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_246_v31
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_349_v74
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_291_v53
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_389_v97
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_449_v123
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_401_v103
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_324_v68
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_269_v43
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_443_v122
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_392_v95
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_439_v120
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_295_v49
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_329_v70
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_434_v118
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_430_v116
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_357_v83
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_386_v96
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_383_v89
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_334_v71
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_283_v44
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_244_v32
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_342_v76
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_420_v112
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_310_v62
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_414_v105
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_239_v27
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_373_v90
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_368_v88
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_447_v119
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_436_v115
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_305_v54
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_258_v38
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_411_v107
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_307_v60
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_323_v67
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_261_v34
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_241_v30
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_254_v36
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_304_v55
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_326_v65
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_408_v106
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_263_v40
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_280_v48
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_354_v82
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_451_v124
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_437_v114
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_370_v85
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_367_v87
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_345_v77
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_339_v69
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_405_v99
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_371_v84
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_298_v56
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_335_v73
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_327_v64
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_427_v109
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_251_v29
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_415_v104
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_346_v78
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_317_v59
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_422_v111
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_276_v46
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_285_v50
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_351_v80
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_301_v57
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_266_v42
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_393_v94
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_332_v72
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_348_v75
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_398_v102
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_364_v86
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_356_v81
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_379_v93
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_361_v79
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_313_v63
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_442_v121
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_290_v51
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_320_v66
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_282_v45
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_412_v108
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_238_v28
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_395_v100
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_247_v33
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_390_v98
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_268_v41
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_417_v110
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_423_v113
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_288_v52
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_376_v92
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_257_v37
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_279_v47
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_400_v101
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
# get address of variable
# get address of the variable
# Original instruction: addiu v27,$fp,-8
addiu $t5,$fp,-8
la $t0,label_239_v27
sw $t5,0($t0)
# get value to assign
# Original instruction: li v28,0
li $t5,0
la $t0,label_238_v28
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sw v28,0(v27)
la $t5,label_238_v28
lw $t5,0($t5)
la $t4,label_239_v27
lw $t4,0($t4)
sw $t5,0($t4)
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: la v30,label_27_a11
la $t5,label_27_a11
la $t0,label_241_v30
sw $t5,0($t0)
# Original instruction: lb v31,0(v30)
la $t5,label_241_v30
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_246_v31
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: la v32,label_36_empty
la $t5,label_36_empty
la $t0,label_244_v32
sw $t5,0($t0)
# Original instruction: lb v33,0(v32)
la $t5,label_244_v32
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_247_v33
sw $t4,0($t0)
# Original instruction: xor v29,v31,v33
la $t5,label_246_v31
lw $t5,0($t5)
la $t4,label_247_v33
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_251_v29
sw $t3,0($t0)
# Original instruction: sltu v29,$zero,v29
la $t4,label_251_v29
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_251_v29
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v29,$zero,label_41_elseLabel
la $t5,label_251_v29
lw $t5,0($t5)
beq $t5,$zero,label_41_elseLabel
# get address of variable
# get address of the variable
# Original instruction: addiu v34,$fp,-8
addiu $t5,$fp,-8
la $t0,label_261_v34
sw $t5,0($t0)
# get value to assign
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v36,$fp,-8
addiu $t5,$fp,-8
la $t0,label_254_v36
sw $t5,0($t0)
# Original instruction: lw v37,0(v36)
la $t5,label_254_v36
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_257_v37
sw $t4,0($t0)
# compute the right operand
# Original instruction: li v38,1
li $t5,1
la $t0,label_258_v38
sw $t5,0($t0)
# Original instruction: add v35,v37,v38
la $t5,label_257_v37
lw $t5,0($t5)
la $t4,label_258_v38
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_260_v35
sw $t3,0($t0)
# assign value to variable address
# Original instruction: sw v35,0(v34)
la $t5,label_260_v35
lw $t5,0($t5)
la $t4,label_261_v34
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: b label_42_endLabel
b label_42_endLabel
# else branch
label_41_elseLabel:
label_42_endLabel:
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: la v40,label_30_a21
la $t5,label_30_a21
la $t0,label_263_v40
sw $t5,0($t0)
# Original instruction: lb v41,0(v40)
la $t5,label_263_v40
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_268_v41
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: la v42,label_36_empty
la $t5,label_36_empty
la $t0,label_266_v42
sw $t5,0($t0)
# Original instruction: lb v43,0(v42)
la $t5,label_266_v42
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_269_v43
sw $t4,0($t0)
# Original instruction: xor v39,v41,v43
la $t5,label_268_v41
lw $t5,0($t5)
la $t4,label_269_v43
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_273_v39
sw $t3,0($t0)
# Original instruction: sltu v39,$zero,v39
la $t4,label_273_v39
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_273_v39
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v39,$zero,label_43_elseLabel
la $t5,label_273_v39
lw $t5,0($t5)
beq $t5,$zero,label_43_elseLabel
# get address of variable
# get address of the variable
# Original instruction: addiu v44,$fp,-8
addiu $t5,$fp,-8
la $t0,label_283_v44
sw $t5,0($t0)
# get value to assign
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v46,$fp,-8
addiu $t5,$fp,-8
la $t0,label_276_v46
sw $t5,0($t0)
# Original instruction: lw v47,0(v46)
la $t5,label_276_v46
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_279_v47
sw $t4,0($t0)
# compute the right operand
# Original instruction: li v48,1
li $t5,1
la $t0,label_280_v48
sw $t5,0($t0)
# Original instruction: add v45,v47,v48
la $t5,label_279_v47
lw $t5,0($t5)
la $t4,label_280_v48
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_282_v45
sw $t3,0($t0)
# assign value to variable address
# Original instruction: sw v45,0(v44)
la $t5,label_282_v45
lw $t5,0($t5)
la $t4,label_283_v44
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: b label_44_endLabel
b label_44_endLabel
# else branch
label_43_elseLabel:
label_44_endLabel:
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: la v50,label_33_a31
la $t5,label_33_a31
la $t0,label_285_v50
sw $t5,0($t0)
# Original instruction: lb v51,0(v50)
la $t5,label_285_v50
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_290_v51
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: la v52,label_36_empty
la $t5,label_36_empty
la $t0,label_288_v52
sw $t5,0($t0)
# Original instruction: lb v53,0(v52)
la $t5,label_288_v52
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_291_v53
sw $t4,0($t0)
# Original instruction: xor v49,v51,v53
la $t5,label_290_v51
lw $t5,0($t5)
la $t4,label_291_v53
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_295_v49
sw $t3,0($t0)
# Original instruction: sltu v49,$zero,v49
la $t4,label_295_v49
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_295_v49
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v49,$zero,label_45_elseLabel
la $t5,label_295_v49
lw $t5,0($t5)
beq $t5,$zero,label_45_elseLabel
# get address of variable
# get address of the variable
# Original instruction: addiu v54,$fp,-8
addiu $t5,$fp,-8
la $t0,label_305_v54
sw $t5,0($t0)
# get value to assign
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v56,$fp,-8
addiu $t5,$fp,-8
la $t0,label_298_v56
sw $t5,0($t0)
# Original instruction: lw v57,0(v56)
la $t5,label_298_v56
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_301_v57
sw $t4,0($t0)
# compute the right operand
# Original instruction: li v58,1
li $t5,1
la $t0,label_302_v58
sw $t5,0($t0)
# Original instruction: add v55,v57,v58
la $t5,label_301_v57
lw $t5,0($t5)
la $t4,label_302_v58
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_304_v55
sw $t3,0($t0)
# assign value to variable address
# Original instruction: sw v55,0(v54)
la $t5,label_304_v55
lw $t5,0($t5)
la $t4,label_305_v54
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: b label_46_endLabel
b label_46_endLabel
# else branch
label_45_elseLabel:
label_46_endLabel:
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: la v60,label_28_a12
la $t5,label_28_a12
la $t0,label_307_v60
sw $t5,0($t0)
# Original instruction: lb v61,0(v60)
la $t5,label_307_v60
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_312_v61
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: la v62,label_36_empty
la $t5,label_36_empty
la $t0,label_310_v62
sw $t5,0($t0)
# Original instruction: lb v63,0(v62)
la $t5,label_310_v62
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_313_v63
sw $t4,0($t0)
# Original instruction: xor v59,v61,v63
la $t5,label_312_v61
lw $t5,0($t5)
la $t4,label_313_v63
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_317_v59
sw $t3,0($t0)
# Original instruction: sltu v59,$zero,v59
la $t4,label_317_v59
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_317_v59
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v59,$zero,label_47_elseLabel
la $t5,label_317_v59
lw $t5,0($t5)
beq $t5,$zero,label_47_elseLabel
# get address of variable
# get address of the variable
# Original instruction: addiu v64,$fp,-8
addiu $t5,$fp,-8
la $t0,label_327_v64
sw $t5,0($t0)
# get value to assign
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v66,$fp,-8
addiu $t5,$fp,-8
la $t0,label_320_v66
sw $t5,0($t0)
# Original instruction: lw v67,0(v66)
la $t5,label_320_v66
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_323_v67
sw $t4,0($t0)
# compute the right operand
# Original instruction: li v68,1
li $t5,1
la $t0,label_324_v68
sw $t5,0($t0)
# Original instruction: add v65,v67,v68
la $t5,label_323_v67
lw $t5,0($t5)
la $t4,label_324_v68
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_326_v65
sw $t3,0($t0)
# assign value to variable address
# Original instruction: sw v65,0(v64)
la $t5,label_326_v65
lw $t5,0($t5)
la $t4,label_327_v64
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: b label_48_endLabel
b label_48_endLabel
# else branch
label_47_elseLabel:
label_48_endLabel:
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: la v70,label_31_a22
la $t5,label_31_a22
la $t0,label_329_v70
sw $t5,0($t0)
# Original instruction: lb v71,0(v70)
la $t5,label_329_v70
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_334_v71
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: la v72,label_36_empty
la $t5,label_36_empty
la $t0,label_332_v72
sw $t5,0($t0)
# Original instruction: lb v73,0(v72)
la $t5,label_332_v72
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_335_v73
sw $t4,0($t0)
# Original instruction: xor v69,v71,v73
la $t5,label_334_v71
lw $t5,0($t5)
la $t4,label_335_v73
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_339_v69
sw $t3,0($t0)
# Original instruction: sltu v69,$zero,v69
la $t4,label_339_v69
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_339_v69
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v69,$zero,label_49_elseLabel
la $t5,label_339_v69
lw $t5,0($t5)
beq $t5,$zero,label_49_elseLabel
# get address of variable
# get address of the variable
# Original instruction: addiu v74,$fp,-8
addiu $t5,$fp,-8
la $t0,label_349_v74
sw $t5,0($t0)
# get value to assign
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v76,$fp,-8
addiu $t5,$fp,-8
la $t0,label_342_v76
sw $t5,0($t0)
# Original instruction: lw v77,0(v76)
la $t5,label_342_v76
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_345_v77
sw $t4,0($t0)
# compute the right operand
# Original instruction: li v78,1
li $t5,1
la $t0,label_346_v78
sw $t5,0($t0)
# Original instruction: add v75,v77,v78
la $t5,label_345_v77
lw $t5,0($t5)
la $t4,label_346_v78
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_348_v75
sw $t3,0($t0)
# assign value to variable address
# Original instruction: sw v75,0(v74)
la $t5,label_348_v75
lw $t5,0($t5)
la $t4,label_349_v74
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: b label_50_endLabel
b label_50_endLabel
# else branch
label_49_elseLabel:
label_50_endLabel:
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: la v80,label_34_a32
la $t5,label_34_a32
la $t0,label_351_v80
sw $t5,0($t0)
# Original instruction: lb v81,0(v80)
la $t5,label_351_v80
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_356_v81
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: la v82,label_36_empty
la $t5,label_36_empty
la $t0,label_354_v82
sw $t5,0($t0)
# Original instruction: lb v83,0(v82)
la $t5,label_354_v82
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_357_v83
sw $t4,0($t0)
# Original instruction: xor v79,v81,v83
la $t5,label_356_v81
lw $t5,0($t5)
la $t4,label_357_v83
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_361_v79
sw $t3,0($t0)
# Original instruction: sltu v79,$zero,v79
la $t4,label_361_v79
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_361_v79
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v79,$zero,label_51_elseLabel
la $t5,label_361_v79
lw $t5,0($t5)
beq $t5,$zero,label_51_elseLabel
# get address of variable
# get address of the variable
# Original instruction: addiu v84,$fp,-8
addiu $t5,$fp,-8
la $t0,label_371_v84
sw $t5,0($t0)
# get value to assign
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v86,$fp,-8
addiu $t5,$fp,-8
la $t0,label_364_v86
sw $t5,0($t0)
# Original instruction: lw v87,0(v86)
la $t5,label_364_v86
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_367_v87
sw $t4,0($t0)
# compute the right operand
# Original instruction: li v88,1
li $t5,1
la $t0,label_368_v88
sw $t5,0($t0)
# Original instruction: add v85,v87,v88
la $t5,label_367_v87
lw $t5,0($t5)
la $t4,label_368_v88
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_370_v85
sw $t3,0($t0)
# assign value to variable address
# Original instruction: sw v85,0(v84)
la $t5,label_370_v85
lw $t5,0($t5)
la $t4,label_371_v84
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: b label_52_endLabel
b label_52_endLabel
# else branch
label_51_elseLabel:
label_52_endLabel:
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: la v90,label_29_a13
la $t5,label_29_a13
la $t0,label_373_v90
sw $t5,0($t0)
# Original instruction: lb v91,0(v90)
la $t5,label_373_v90
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_378_v91
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: la v92,label_36_empty
la $t5,label_36_empty
la $t0,label_376_v92
sw $t5,0($t0)
# Original instruction: lb v93,0(v92)
la $t5,label_376_v92
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_379_v93
sw $t4,0($t0)
# Original instruction: xor v89,v91,v93
la $t5,label_378_v91
lw $t5,0($t5)
la $t4,label_379_v93
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_383_v89
sw $t3,0($t0)
# Original instruction: sltu v89,$zero,v89
la $t4,label_383_v89
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_383_v89
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v89,$zero,label_53_elseLabel
la $t5,label_383_v89
lw $t5,0($t5)
beq $t5,$zero,label_53_elseLabel
# get address of variable
# get address of the variable
# Original instruction: addiu v94,$fp,-8
addiu $t5,$fp,-8
la $t0,label_393_v94
sw $t5,0($t0)
# get value to assign
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v96,$fp,-8
addiu $t5,$fp,-8
la $t0,label_386_v96
sw $t5,0($t0)
# Original instruction: lw v97,0(v96)
la $t5,label_386_v96
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_389_v97
sw $t4,0($t0)
# compute the right operand
# Original instruction: li v98,1
li $t5,1
la $t0,label_390_v98
sw $t5,0($t0)
# Original instruction: add v95,v97,v98
la $t5,label_389_v97
lw $t5,0($t5)
la $t4,label_390_v98
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_392_v95
sw $t3,0($t0)
# assign value to variable address
# Original instruction: sw v95,0(v94)
la $t5,label_392_v95
lw $t5,0($t5)
la $t4,label_393_v94
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: b label_54_endLabel
b label_54_endLabel
# else branch
label_53_elseLabel:
label_54_endLabel:
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: la v100,label_32_a23
la $t5,label_32_a23
la $t0,label_395_v100
sw $t5,0($t0)
# Original instruction: lb v101,0(v100)
la $t5,label_395_v100
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_400_v101
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: la v102,label_36_empty
la $t5,label_36_empty
la $t0,label_398_v102
sw $t5,0($t0)
# Original instruction: lb v103,0(v102)
la $t5,label_398_v102
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_401_v103
sw $t4,0($t0)
# Original instruction: xor v99,v101,v103
la $t5,label_400_v101
lw $t5,0($t5)
la $t4,label_401_v103
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_405_v99
sw $t3,0($t0)
# Original instruction: sltu v99,$zero,v99
la $t4,label_405_v99
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_405_v99
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v99,$zero,label_55_elseLabel
la $t5,label_405_v99
lw $t5,0($t5)
beq $t5,$zero,label_55_elseLabel
# get address of variable
# get address of the variable
# Original instruction: addiu v104,$fp,-8
addiu $t5,$fp,-8
la $t0,label_415_v104
sw $t5,0($t0)
# get value to assign
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v106,$fp,-8
addiu $t5,$fp,-8
la $t0,label_408_v106
sw $t5,0($t0)
# Original instruction: lw v107,0(v106)
la $t5,label_408_v106
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_411_v107
sw $t4,0($t0)
# compute the right operand
# Original instruction: li v108,1
li $t5,1
la $t0,label_412_v108
sw $t5,0($t0)
# Original instruction: add v105,v107,v108
la $t5,label_411_v107
lw $t5,0($t5)
la $t4,label_412_v108
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_414_v105
sw $t3,0($t0)
# assign value to variable address
# Original instruction: sw v105,0(v104)
la $t5,label_414_v105
lw $t5,0($t5)
la $t4,label_415_v104
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: b label_56_endLabel
b label_56_endLabel
# else branch
label_55_elseLabel:
label_56_endLabel:
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: la v110,label_35_a33
la $t5,label_35_a33
la $t0,label_417_v110
sw $t5,0($t0)
# Original instruction: lb v111,0(v110)
la $t5,label_417_v110
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_422_v111
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: la v112,label_36_empty
la $t5,label_36_empty
la $t0,label_420_v112
sw $t5,0($t0)
# Original instruction: lb v113,0(v112)
la $t5,label_420_v112
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_423_v113
sw $t4,0($t0)
# Original instruction: xor v109,v111,v113
la $t5,label_422_v111
lw $t5,0($t5)
la $t4,label_423_v113
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_427_v109
sw $t3,0($t0)
# Original instruction: sltu v109,$zero,v109
la $t4,label_427_v109
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_427_v109
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v109,$zero,label_57_elseLabel
la $t5,label_427_v109
lw $t5,0($t5)
beq $t5,$zero,label_57_elseLabel
# get address of variable
# get address of the variable
# Original instruction: addiu v114,$fp,-8
addiu $t5,$fp,-8
la $t0,label_437_v114
sw $t5,0($t0)
# get value to assign
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v116,$fp,-8
addiu $t5,$fp,-8
la $t0,label_430_v116
sw $t5,0($t0)
# Original instruction: lw v117,0(v116)
la $t5,label_430_v116
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_433_v117
sw $t4,0($t0)
# compute the right operand
# Original instruction: li v118,1
li $t5,1
la $t0,label_434_v118
sw $t5,0($t0)
# Original instruction: add v115,v117,v118
la $t5,label_433_v117
lw $t5,0($t5)
la $t4,label_434_v118
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_436_v115
sw $t3,0($t0)
# assign value to variable address
# Original instruction: sw v115,0(v114)
la $t5,label_436_v115
lw $t5,0($t5)
la $t4,label_437_v114
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: b label_58_endLabel
b label_58_endLabel
# else branch
label_57_elseLabel:
label_58_endLabel:
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v120,$fp,-8
addiu $t5,$fp,-8
la $t0,label_439_v120
sw $t5,0($t0)
# Original instruction: lw v121,0(v120)
la $t5,label_439_v120
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_442_v121
sw $t4,0($t0)
# compute the right operand
# Original instruction: li v122,9
li $t5,9
la $t0,label_443_v122
sw $t5,0($t0)
# Original instruction: xor v119,v121,v122
la $t5,label_442_v121
lw $t5,0($t5)
la $t4,label_443_v122
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_447_v119
sw $t3,0($t0)
# Original instruction: sltiu v119,v119,1
la $t4,label_447_v119
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_447_v119
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v119,$zero,label_59_elseLabel
la $t5,label_447_v119
lw $t5,0($t5)
beq $t5,$zero,label_59_elseLabel
# computing the return value
# Original instruction: li v123,1
li $t5,1
la $t0,label_449_v123
sw $t5,0($t0)
# copying the return value into the previous frame
# Original instruction: sw v123,4($fp)
la $t5,label_449_v123
lw $t5,0($t5)
sw $t5,4($fp)
# jumping to the return label
# Original instruction: j label_40_return
j label_40_return
# Original instruction: b label_60_endLabel
b label_60_endLabel
# else branch
label_59_elseLabel:
# computing the return value
# Original instruction: li v124,0
li $t5,0
la $t0,label_451_v124
sw $t5,0($t0)
# copying the return value into the previous frame
# Original instruction: sw v124,4($fp)
la $t5,label_451_v124
lw $t5,0($t5)
sw $t5,4($fp)
# jumping to the return label
# Original instruction: j label_40_return
j label_40_return
label_60_endLabel:
# return label of the function full
label_40_return:
# popping all used registers from the stack
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_400_v101
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_279_v47
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_257_v37
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_376_v92
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_288_v52
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_423_v113
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_417_v110
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_268_v41
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_390_v98
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_247_v33
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_395_v100
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_238_v28
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_412_v108
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_282_v45
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_320_v66
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_290_v51
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_442_v121
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_313_v63
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_361_v79
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_379_v93
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_356_v81
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_364_v86
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_398_v102
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_348_v75
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_332_v72
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_393_v94
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_266_v42
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_301_v57
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_351_v80
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_285_v50
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_276_v46
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_422_v111
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_317_v59
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_346_v78
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_415_v104
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_251_v29
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_427_v109
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_327_v64
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_335_v73
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_298_v56
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_371_v84
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_405_v99
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_339_v69
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_345_v77
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_367_v87
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_370_v85
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_437_v114
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_451_v124
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_354_v82
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_280_v48
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_263_v40
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_408_v106
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_326_v65
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_304_v55
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_254_v36
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_241_v30
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_261_v34
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_323_v67
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_307_v60
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_411_v107
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_258_v38
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_305_v54
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_436_v115
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_447_v119
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_368_v88
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_373_v90
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_239_v27
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_414_v105
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_310_v62
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_420_v112
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_342_v76
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_244_v32
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_283_v44
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_334_v71
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_383_v89
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_386_v96
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_357_v83
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_430_v116
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_434_v118
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_329_v70
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_295_v49
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_439_v120
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_392_v95
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_443_v122
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_269_v43
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_324_v68
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_401_v103
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_449_v123
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_389_v97
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_291_v53
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_349_v74
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_246_v31
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_378_v91
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_273_v39
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_312_v61
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_302_v58
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_260_v35
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_433_v117
sw $t0,0($t1)
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

.data
# Allocated labels for virtual registers
label_622_v198:
.space 4
label_490_v141:
.space 4
label_813_v285:
.space 4
label_501_v143:
.space 4
label_612_v195:
.space 4
label_816_v284:
.space 4
label_516_v154:
.space 4
label_658_v214:
.space 4
label_763_v263:
.space 4
label_549_v168:
.space 4
label_671_v222:
.space 4
label_483_v139:
.space 4
label_704_v237:
.space 4
label_726_v245:
.space 4
label_786_v273:
.space 4
label_635_v206:
.space 4
label_537_v159:
.space 4
label_482_v137:
.space 4
label_655_v215:
.space 4
label_555_v171:
.space 4
label_681_v221:
.space 4
label_470_v133:
.space 4
label_737_v248:
.space 4
label_699_v233:
.space 4
label_619_v199:
.space 4
label_809_v280:
.space 4
label_656_v216:
.space 4
label_547_v163:
.space 4
label_709_v235:
.space 4
label_744_v252:
.space 4
label_821_v287:
.space 4
label_465_v127:
.space 4
label_615_v194:
.space 4
label_589_v186:
.space 4
label_787_v274:
.space 4
label_645_v205:
.space 4
label_559_v167:
.space 4
label_573_v175:
.space 4
label_528_v158:
.space 4
label_570_v178:
.space 4
label_757_v260:
.space 4
label_576_v180:
.space 4
label_773_v264:
.space 4
label_770_v265:
.space 4
label_715_v242:
.space 4
label_650_v212:
.space 4
label_543_v166:
.space 4
label_597_v185:
.space 4
label_731_v243:
.space 4
label_564_v174:
.space 4
label_691_v231:
.space 4
label_727_v247:
.space 4
label_751_v258:
.space 4
label_745_v251:
.space 4
label_493_v140:
.space 4
label_640_v207:
.space 4
label_552_v170:
.space 4
label_661_v218:
.space 4
label_492_v142:
.space 4
label_695_v229:
.space 4
label_577_v179:
.space 4
label_562_v173:
.space 4
label_604_v191:
.space 4
label_778_v270:
.space 4
label_539_v164:
.space 4
label_677_v225:
.space 4
label_719_v239:
.space 4
label_518_v153:
.space 4
label_628_v203:
.space 4
label_760_v262:
.space 4
label_687_v226:
.space 4
label_467_v132:
.space 4
label_798_v277:
.space 4
label_529_v156:
.space 4
label_623_v197:
.space 4
label_676_v223:
.space 4
label_638_v208:
.space 4
label_500_v144:
.space 4
label_582_v183:
.space 4
label_487_v135:
.space 4
label_523_v151:
.space 4
label_742_v254:
.space 4
label_648_v211:
.space 4
label_659_v213:
.space 4
label_665_v220:
.space 4
label_674_v224:
.space 4
label_799_v279:
.space 4
label_605_v193:
.space 4
label_827_v291:
.space 4
label_721_v244:
.space 4
label_554_v169:
.space 4
label_583_v184:
.space 4
label_803_v275:
.space 4
label_692_v232:
.space 4
label_513_v152:
.space 4
label_825_v289:
.space 4
label_511_v147:
.space 4
label_480_v138:
.space 4
label_497_v145:
.space 4
label_614_v196:
.space 4
label_475_v131:
.space 4
label_814_v286:
.space 4
label_609_v189:
.space 4
label_734_v249:
.space 4
label_698_v234:
.space 4
label_767_v259:
.space 4
label_533_v161:
.space 4
label_625_v202:
.space 4
label_829_v292:
.space 4
label_565_v172:
.space 4
label_526_v157:
.space 4
label_736_v250:
.space 4
label_724_v246:
.space 4
label_460_v129:
.space 4
label_714_v241:
.space 4
label_783_v272:
.space 4
label_741_v253:
.space 4
label_781_v267:
.space 4
label_777_v269:
.space 4
label_457_v128:
.space 4
label_572_v176:
.space 4
label_817_v283:
.space 4
label_519_v155:
.space 4
label_824_v290:
.space 4
label_684_v227:
.space 4
label_503_v148:
.space 4
label_507_v150:
.space 4
label_750_v257:
.space 4
label_593_v188:
.space 4
label_633_v201:
.space 4
label_534_v162:
.space 4
label_755_v255:
.space 4
label_772_v266:
.space 4
label_569_v177:
.space 4
label_602_v192:
.space 4
label_780_v268:
.space 4
label_498_v146:
.space 4
label_791_v271:
.space 4
label_820_v288:
.space 4
label_592_v187:
.space 4
label_808_v282:
.space 4
label_536_v160:
.space 4
label_686_v228:
.space 4
label_806_v281:
.space 4
label_651_v210:
.space 4
label_461_v130:
.space 4
label_705_v238:
.space 4
label_762_v261:
.space 4
label_454_v126:
.space 4
label_471_v134:
.space 4
label_629_v204:
.space 4
label_796_v278:
.space 4
label_579_v182:
.space 4
label_669_v217:
.space 4
label_506_v149:
.space 4
label_587_v181:
.space 4
label_599_v190:
.space 4
label_694_v230:
.space 4
label_747_v256:
.space 4
label_664_v219:
.space 4
label_641_v209:
.space 4
label_701_v236:
.space 4
label_477_v136:
.space 4
label_793_v276:
.space 4
label_620_v200:
.space 4
label_711_v240:
.space 4
label_542_v165:
.space 4
label_455_v125:
.space 4

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
la $t0,label_622_v198
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_490_v141
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_813_v285
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_501_v143
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_612_v195
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_816_v284
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_516_v154
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_658_v214
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_763_v263
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_549_v168
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_671_v222
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_483_v139
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_704_v237
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_726_v245
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_786_v273
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_635_v206
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_537_v159
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_482_v137
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_655_v215
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_555_v171
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_681_v221
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_470_v133
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_737_v248
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_699_v233
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_619_v199
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_809_v280
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_656_v216
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_547_v163
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_709_v235
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_744_v252
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_821_v287
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_465_v127
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_615_v194
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_589_v186
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_787_v274
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_645_v205
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_559_v167
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_573_v175
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_528_v158
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_570_v178
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_757_v260
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_576_v180
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_773_v264
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_770_v265
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_715_v242
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_650_v212
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_543_v166
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_597_v185
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_731_v243
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_564_v174
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_691_v231
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_727_v247
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_751_v258
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_745_v251
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_493_v140
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_640_v207
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_552_v170
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_661_v218
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_492_v142
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_695_v229
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_577_v179
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_562_v173
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_604_v191
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_778_v270
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_539_v164
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_677_v225
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_719_v239
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_518_v153
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_628_v203
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_760_v262
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_687_v226
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_467_v132
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_798_v277
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_529_v156
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_623_v197
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_676_v223
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_638_v208
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_500_v144
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_582_v183
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_487_v135
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_523_v151
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_742_v254
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_648_v211
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_659_v213
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_665_v220
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_674_v224
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_799_v279
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_605_v193
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_827_v291
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_721_v244
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_554_v169
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_583_v184
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_803_v275
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_692_v232
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_513_v152
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_825_v289
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_511_v147
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_480_v138
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_497_v145
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_614_v196
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_475_v131
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_814_v286
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_609_v189
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_734_v249
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_698_v234
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_767_v259
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_533_v161
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_625_v202
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_829_v292
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_565_v172
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_526_v157
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_736_v250
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_724_v246
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_460_v129
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_714_v241
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_783_v272
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_741_v253
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_781_v267
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_777_v269
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_457_v128
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_572_v176
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_817_v283
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_519_v155
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_824_v290
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_684_v227
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_503_v148
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_507_v150
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_750_v257
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_593_v188
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_633_v201
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_534_v162
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_755_v255
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_772_v266
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_569_v177
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_602_v192
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_780_v268
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_498_v146
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_791_v271
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_820_v288
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_592_v187
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_808_v282
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_536_v160
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_686_v228
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_806_v281
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_651_v210
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_461_v130
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_705_v238
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_762_v261
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_454_v126
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_471_v134
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_629_v204
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_796_v278
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_579_v182
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_669_v217
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_506_v149
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_587_v181
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_599_v190
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_694_v230
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_747_v256
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_664_v219
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_641_v209
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_701_v236
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_477_v136
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_793_v276
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_620_v200
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_711_v240
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_542_v165
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_455_v125
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
# get address of variable
# get address of the variable
# Original instruction: addiu v125,$fp,-8
addiu $t5,$fp,-8
la $t0,label_455_v125
sw $t5,0($t0)
# get value to assign
# Original instruction: li v126,1
li $t5,1
la $t0,label_454_v126
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sw v126,0(v125)
la $t5,label_454_v126
lw $t5,0($t5)
la $t4,label_455_v125
lw $t4,0($t4)
sw $t5,0($t4)
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v128,$fp,16
addiu $t5,$fp,16
la $t0,label_457_v128
sw $t5,0($t0)
# Original instruction: lb v129,0(v128)
la $t5,label_457_v128
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_460_v129
sw $t4,0($t0)
# compute the right operand
# Original instruction: li v130,97
li $t5,97
la $t0,label_461_v130
sw $t5,0($t0)
# Original instruction: xor v127,v129,v130
la $t5,label_460_v129
lw $t5,0($t5)
la $t4,label_461_v130
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_465_v127
sw $t3,0($t0)
# Original instruction: sltiu v127,v127,1
la $t4,label_465_v127
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_465_v127
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v127,$zero,label_63_elseLabel
la $t5,label_465_v127
lw $t5,0($t5)
beq $t5,$zero,label_63_elseLabel
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v132,$fp,12
addiu $t5,$fp,12
la $t0,label_467_v132
sw $t5,0($t0)
# Original instruction: lw v133,0(v132)
la $t5,label_467_v132
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_470_v133
sw $t4,0($t0)
# compute the right operand
# Original instruction: li v134,1
li $t5,1
la $t0,label_471_v134
sw $t5,0($t0)
# Original instruction: xor v131,v133,v134
la $t5,label_470_v133
lw $t5,0($t5)
la $t4,label_471_v134
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_475_v131
sw $t3,0($t0)
# Original instruction: sltiu v131,v131,1
la $t4,label_475_v131
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_475_v131
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v131,$zero,label_65_elseLabel
la $t5,label_475_v131
lw $t5,0($t5)
beq $t5,$zero,label_65_elseLabel
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: la v136,label_27_a11
la $t5,label_27_a11
la $t0,label_477_v136
sw $t5,0($t0)
# Original instruction: lb v137,0(v136)
la $t5,label_477_v136
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_482_v137
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: la v138,label_36_empty
la $t5,label_36_empty
la $t0,label_480_v138
sw $t5,0($t0)
# Original instruction: lb v139,0(v138)
la $t5,label_480_v138
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_483_v139
sw $t4,0($t0)
# Original instruction: xor v135,v137,v139
la $t5,label_482_v137
lw $t5,0($t5)
la $t4,label_483_v139
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_487_v135
sw $t3,0($t0)
# Original instruction: sltiu v135,v135,1
la $t4,label_487_v135
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_487_v135
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v135,$zero,label_67_elseLabel
la $t5,label_487_v135
lw $t5,0($t5)
beq $t5,$zero,label_67_elseLabel
# get address of variable
# get address of the variable
# Original instruction: la v140,label_27_a11
la $t5,label_27_a11
la $t0,label_493_v140
sw $t5,0($t0)
# get value to assign
# get address of the variable
# get address of the variable
# Original instruction: addiu v141,$fp,8
addiu $t5,$fp,8
la $t0,label_490_v141
sw $t5,0($t0)
# Original instruction: lb v142,0(v141)
la $t5,label_490_v141
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_492_v142
sw $t4,0($t0)
# assign value to variable address
# Original instruction: sb v142,0(v140)
la $t5,label_492_v142
lw $t5,0($t5)
la $t4,label_493_v140
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: b label_68_endLabel
b label_68_endLabel
# else branch
label_67_elseLabel:
# get address of variable
# get address of the variable
# Original instruction: addiu v143,$fp,-8
addiu $t5,$fp,-8
la $t0,label_501_v143
sw $t5,0($t0)
# get value to assign
# compute the left operand
# Original instruction: li v145,0
li $t5,0
la $t0,label_497_v145
sw $t5,0($t0)
# compute the right operand
# Original instruction: li v146,1
li $t5,1
la $t0,label_498_v146
sw $t5,0($t0)
# Original instruction: sub v144,v145,v146
la $t5,label_497_v145
lw $t5,0($t5)
la $t4,label_498_v146
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_500_v144
sw $t3,0($t0)
# assign value to variable address
# Original instruction: sw v144,0(v143)
la $t5,label_500_v144
lw $t5,0($t5)
la $t4,label_501_v143
lw $t4,0($t4)
sw $t5,0($t4)
label_68_endLabel:
# Original instruction: b label_66_endLabel
b label_66_endLabel
# else branch
label_65_elseLabel:
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v148,$fp,12
addiu $t5,$fp,12
la $t0,label_503_v148
sw $t5,0($t0)
# Original instruction: lw v149,0(v148)
la $t5,label_503_v148
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_506_v149
sw $t4,0($t0)
# compute the right operand
# Original instruction: li v150,2
li $t5,2
la $t0,label_507_v150
sw $t5,0($t0)
# Original instruction: xor v147,v149,v150
la $t5,label_506_v149
lw $t5,0($t5)
la $t4,label_507_v150
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_511_v147
sw $t3,0($t0)
# Original instruction: sltiu v147,v147,1
la $t4,label_511_v147
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_511_v147
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v147,$zero,label_69_elseLabel
la $t5,label_511_v147
lw $t5,0($t5)
beq $t5,$zero,label_69_elseLabel
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: la v152,label_28_a12
la $t5,label_28_a12
la $t0,label_513_v152
sw $t5,0($t0)
# Original instruction: lb v153,0(v152)
la $t5,label_513_v152
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_518_v153
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: la v154,label_36_empty
la $t5,label_36_empty
la $t0,label_516_v154
sw $t5,0($t0)
# Original instruction: lb v155,0(v154)
la $t5,label_516_v154
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_519_v155
sw $t4,0($t0)
# Original instruction: xor v151,v153,v155
la $t5,label_518_v153
lw $t5,0($t5)
la $t4,label_519_v155
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_523_v151
sw $t3,0($t0)
# Original instruction: sltiu v151,v151,1
la $t4,label_523_v151
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_523_v151
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v151,$zero,label_71_elseLabel
la $t5,label_523_v151
lw $t5,0($t5)
beq $t5,$zero,label_71_elseLabel
# get address of variable
# get address of the variable
# Original instruction: la v156,label_28_a12
la $t5,label_28_a12
la $t0,label_529_v156
sw $t5,0($t0)
# get value to assign
# get address of the variable
# get address of the variable
# Original instruction: addiu v157,$fp,8
addiu $t5,$fp,8
la $t0,label_526_v157
sw $t5,0($t0)
# Original instruction: lb v158,0(v157)
la $t5,label_526_v157
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_528_v158
sw $t4,0($t0)
# assign value to variable address
# Original instruction: sb v158,0(v156)
la $t5,label_528_v158
lw $t5,0($t5)
la $t4,label_529_v156
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: b label_72_endLabel
b label_72_endLabel
# else branch
label_71_elseLabel:
# get address of variable
# get address of the variable
# Original instruction: addiu v159,$fp,-8
addiu $t5,$fp,-8
la $t0,label_537_v159
sw $t5,0($t0)
# get value to assign
# compute the left operand
# Original instruction: li v161,0
li $t5,0
la $t0,label_533_v161
sw $t5,0($t0)
# compute the right operand
# Original instruction: li v162,1
li $t5,1
la $t0,label_534_v162
sw $t5,0($t0)
# Original instruction: sub v160,v161,v162
la $t5,label_533_v161
lw $t5,0($t5)
la $t4,label_534_v162
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_536_v160
sw $t3,0($t0)
# assign value to variable address
# Original instruction: sw v160,0(v159)
la $t5,label_536_v160
lw $t5,0($t5)
la $t4,label_537_v159
lw $t4,0($t4)
sw $t5,0($t4)
label_72_endLabel:
# Original instruction: b label_70_endLabel
b label_70_endLabel
# else branch
label_69_elseLabel:
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v164,$fp,12
addiu $t5,$fp,12
la $t0,label_539_v164
sw $t5,0($t0)
# Original instruction: lw v165,0(v164)
la $t5,label_539_v164
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_542_v165
sw $t4,0($t0)
# compute the right operand
# Original instruction: li v166,3
li $t5,3
la $t0,label_543_v166
sw $t5,0($t0)
# Original instruction: xor v163,v165,v166
la $t5,label_542_v165
lw $t5,0($t5)
la $t4,label_543_v166
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_547_v163
sw $t3,0($t0)
# Original instruction: sltiu v163,v163,1
la $t4,label_547_v163
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_547_v163
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v163,$zero,label_73_elseLabel
la $t5,label_547_v163
lw $t5,0($t5)
beq $t5,$zero,label_73_elseLabel
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: la v168,label_29_a13
la $t5,label_29_a13
la $t0,label_549_v168
sw $t5,0($t0)
# Original instruction: lb v169,0(v168)
la $t5,label_549_v168
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_554_v169
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: la v170,label_36_empty
la $t5,label_36_empty
la $t0,label_552_v170
sw $t5,0($t0)
# Original instruction: lb v171,0(v170)
la $t5,label_552_v170
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_555_v171
sw $t4,0($t0)
# Original instruction: xor v167,v169,v171
la $t5,label_554_v169
lw $t5,0($t5)
la $t4,label_555_v171
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_559_v167
sw $t3,0($t0)
# Original instruction: sltiu v167,v167,1
la $t4,label_559_v167
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_559_v167
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v167,$zero,label_75_elseLabel
la $t5,label_559_v167
lw $t5,0($t5)
beq $t5,$zero,label_75_elseLabel
# get address of variable
# get address of the variable
# Original instruction: la v172,label_29_a13
la $t5,label_29_a13
la $t0,label_565_v172
sw $t5,0($t0)
# get value to assign
# get address of the variable
# get address of the variable
# Original instruction: addiu v173,$fp,8
addiu $t5,$fp,8
la $t0,label_562_v173
sw $t5,0($t0)
# Original instruction: lb v174,0(v173)
la $t5,label_562_v173
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_564_v174
sw $t4,0($t0)
# assign value to variable address
# Original instruction: sb v174,0(v172)
la $t5,label_564_v174
lw $t5,0($t5)
la $t4,label_565_v172
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: b label_76_endLabel
b label_76_endLabel
# else branch
label_75_elseLabel:
# get address of variable
# get address of the variable
# Original instruction: addiu v175,$fp,-8
addiu $t5,$fp,-8
la $t0,label_573_v175
sw $t5,0($t0)
# get value to assign
# compute the left operand
# Original instruction: li v177,0
li $t5,0
la $t0,label_569_v177
sw $t5,0($t0)
# compute the right operand
# Original instruction: li v178,1
li $t5,1
la $t0,label_570_v178
sw $t5,0($t0)
# Original instruction: sub v176,v177,v178
la $t5,label_569_v177
lw $t5,0($t5)
la $t4,label_570_v178
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_572_v176
sw $t3,0($t0)
# assign value to variable address
# Original instruction: sw v176,0(v175)
la $t5,label_572_v176
lw $t5,0($t5)
la $t4,label_573_v175
lw $t4,0($t4)
sw $t5,0($t4)
label_76_endLabel:
# Original instruction: b label_74_endLabel
b label_74_endLabel
# else branch
label_73_elseLabel:
# get address of variable
# get address of the variable
# Original instruction: addiu v179,$fp,-8
addiu $t5,$fp,-8
la $t0,label_577_v179
sw $t5,0($t0)
# get value to assign
# Original instruction: li v180,0
li $t5,0
la $t0,label_576_v180
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sw v180,0(v179)
la $t5,label_576_v180
lw $t5,0($t5)
la $t4,label_577_v179
lw $t4,0($t4)
sw $t5,0($t4)
label_74_endLabel:
label_70_endLabel:
label_66_endLabel:
# Original instruction: b label_64_endLabel
b label_64_endLabel
# else branch
label_63_elseLabel:
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v182,$fp,16
addiu $t5,$fp,16
la $t0,label_579_v182
sw $t5,0($t0)
# Original instruction: lb v183,0(v182)
la $t5,label_579_v182
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_582_v183
sw $t4,0($t0)
# compute the right operand
# Original instruction: li v184,98
li $t5,98
la $t0,label_583_v184
sw $t5,0($t0)
# Original instruction: xor v181,v183,v184
la $t5,label_582_v183
lw $t5,0($t5)
la $t4,label_583_v184
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_587_v181
sw $t3,0($t0)
# Original instruction: sltiu v181,v181,1
la $t4,label_587_v181
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_587_v181
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v181,$zero,label_77_elseLabel
la $t5,label_587_v181
lw $t5,0($t5)
beq $t5,$zero,label_77_elseLabel
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v186,$fp,12
addiu $t5,$fp,12
la $t0,label_589_v186
sw $t5,0($t0)
# Original instruction: lw v187,0(v186)
la $t5,label_589_v186
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_592_v187
sw $t4,0($t0)
# compute the right operand
# Original instruction: li v188,1
li $t5,1
la $t0,label_593_v188
sw $t5,0($t0)
# Original instruction: xor v185,v187,v188
la $t5,label_592_v187
lw $t5,0($t5)
la $t4,label_593_v188
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_597_v185
sw $t3,0($t0)
# Original instruction: sltiu v185,v185,1
la $t4,label_597_v185
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_597_v185
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v185,$zero,label_79_elseLabel
la $t5,label_597_v185
lw $t5,0($t5)
beq $t5,$zero,label_79_elseLabel
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: la v190,label_30_a21
la $t5,label_30_a21
la $t0,label_599_v190
sw $t5,0($t0)
# Original instruction: lb v191,0(v190)
la $t5,label_599_v190
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_604_v191
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: la v192,label_36_empty
la $t5,label_36_empty
la $t0,label_602_v192
sw $t5,0($t0)
# Original instruction: lb v193,0(v192)
la $t5,label_602_v192
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_605_v193
sw $t4,0($t0)
# Original instruction: xor v189,v191,v193
la $t5,label_604_v191
lw $t5,0($t5)
la $t4,label_605_v193
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_609_v189
sw $t3,0($t0)
# Original instruction: sltiu v189,v189,1
la $t4,label_609_v189
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_609_v189
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v189,$zero,label_81_elseLabel
la $t5,label_609_v189
lw $t5,0($t5)
beq $t5,$zero,label_81_elseLabel
# get address of variable
# get address of the variable
# Original instruction: la v194,label_30_a21
la $t5,label_30_a21
la $t0,label_615_v194
sw $t5,0($t0)
# get value to assign
# get address of the variable
# get address of the variable
# Original instruction: addiu v195,$fp,8
addiu $t5,$fp,8
la $t0,label_612_v195
sw $t5,0($t0)
# Original instruction: lb v196,0(v195)
la $t5,label_612_v195
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_614_v196
sw $t4,0($t0)
# assign value to variable address
# Original instruction: sb v196,0(v194)
la $t5,label_614_v196
lw $t5,0($t5)
la $t4,label_615_v194
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: b label_82_endLabel
b label_82_endLabel
# else branch
label_81_elseLabel:
# get address of variable
# get address of the variable
# Original instruction: addiu v197,$fp,-8
addiu $t5,$fp,-8
la $t0,label_623_v197
sw $t5,0($t0)
# get value to assign
# compute the left operand
# Original instruction: li v199,0
li $t5,0
la $t0,label_619_v199
sw $t5,0($t0)
# compute the right operand
# Original instruction: li v200,1
li $t5,1
la $t0,label_620_v200
sw $t5,0($t0)
# Original instruction: sub v198,v199,v200
la $t5,label_619_v199
lw $t5,0($t5)
la $t4,label_620_v200
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_622_v198
sw $t3,0($t0)
# assign value to variable address
# Original instruction: sw v198,0(v197)
la $t5,label_622_v198
lw $t5,0($t5)
la $t4,label_623_v197
lw $t4,0($t4)
sw $t5,0($t4)
label_82_endLabel:
# Original instruction: b label_80_endLabel
b label_80_endLabel
# else branch
label_79_elseLabel:
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v202,$fp,12
addiu $t5,$fp,12
la $t0,label_625_v202
sw $t5,0($t0)
# Original instruction: lw v203,0(v202)
la $t5,label_625_v202
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_628_v203
sw $t4,0($t0)
# compute the right operand
# Original instruction: li v204,2
li $t5,2
la $t0,label_629_v204
sw $t5,0($t0)
# Original instruction: xor v201,v203,v204
la $t5,label_628_v203
lw $t5,0($t5)
la $t4,label_629_v204
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_633_v201
sw $t3,0($t0)
# Original instruction: sltiu v201,v201,1
la $t4,label_633_v201
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_633_v201
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v201,$zero,label_83_elseLabel
la $t5,label_633_v201
lw $t5,0($t5)
beq $t5,$zero,label_83_elseLabel
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: la v206,label_31_a22
la $t5,label_31_a22
la $t0,label_635_v206
sw $t5,0($t0)
# Original instruction: lb v207,0(v206)
la $t5,label_635_v206
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_640_v207
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: la v208,label_36_empty
la $t5,label_36_empty
la $t0,label_638_v208
sw $t5,0($t0)
# Original instruction: lb v209,0(v208)
la $t5,label_638_v208
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_641_v209
sw $t4,0($t0)
# Original instruction: xor v205,v207,v209
la $t5,label_640_v207
lw $t5,0($t5)
la $t4,label_641_v209
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_645_v205
sw $t3,0($t0)
# Original instruction: sltiu v205,v205,1
la $t4,label_645_v205
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_645_v205
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v205,$zero,label_85_elseLabel
la $t5,label_645_v205
lw $t5,0($t5)
beq $t5,$zero,label_85_elseLabel
# get address of variable
# get address of the variable
# Original instruction: la v210,label_31_a22
la $t5,label_31_a22
la $t0,label_651_v210
sw $t5,0($t0)
# get value to assign
# get address of the variable
# get address of the variable
# Original instruction: addiu v211,$fp,8
addiu $t5,$fp,8
la $t0,label_648_v211
sw $t5,0($t0)
# Original instruction: lb v212,0(v211)
la $t5,label_648_v211
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_650_v212
sw $t4,0($t0)
# assign value to variable address
# Original instruction: sb v212,0(v210)
la $t5,label_650_v212
lw $t5,0($t5)
la $t4,label_651_v210
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: b label_86_endLabel
b label_86_endLabel
# else branch
label_85_elseLabel:
# get address of variable
# get address of the variable
# Original instruction: addiu v213,$fp,-8
addiu $t5,$fp,-8
la $t0,label_659_v213
sw $t5,0($t0)
# get value to assign
# compute the left operand
# Original instruction: li v215,0
li $t5,0
la $t0,label_655_v215
sw $t5,0($t0)
# compute the right operand
# Original instruction: li v216,1
li $t5,1
la $t0,label_656_v216
sw $t5,0($t0)
# Original instruction: sub v214,v215,v216
la $t5,label_655_v215
lw $t5,0($t5)
la $t4,label_656_v216
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_658_v214
sw $t3,0($t0)
# assign value to variable address
# Original instruction: sw v214,0(v213)
la $t5,label_658_v214
lw $t5,0($t5)
la $t4,label_659_v213
lw $t4,0($t4)
sw $t5,0($t4)
label_86_endLabel:
# Original instruction: b label_84_endLabel
b label_84_endLabel
# else branch
label_83_elseLabel:
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v218,$fp,12
addiu $t5,$fp,12
la $t0,label_661_v218
sw $t5,0($t0)
# Original instruction: lw v219,0(v218)
la $t5,label_661_v218
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_664_v219
sw $t4,0($t0)
# compute the right operand
# Original instruction: li v220,3
li $t5,3
la $t0,label_665_v220
sw $t5,0($t0)
# Original instruction: xor v217,v219,v220
la $t5,label_664_v219
lw $t5,0($t5)
la $t4,label_665_v220
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_669_v217
sw $t3,0($t0)
# Original instruction: sltiu v217,v217,1
la $t4,label_669_v217
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_669_v217
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v217,$zero,label_87_elseLabel
la $t5,label_669_v217
lw $t5,0($t5)
beq $t5,$zero,label_87_elseLabel
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: la v222,label_32_a23
la $t5,label_32_a23
la $t0,label_671_v222
sw $t5,0($t0)
# Original instruction: lb v223,0(v222)
la $t5,label_671_v222
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_676_v223
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: la v224,label_36_empty
la $t5,label_36_empty
la $t0,label_674_v224
sw $t5,0($t0)
# Original instruction: lb v225,0(v224)
la $t5,label_674_v224
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_677_v225
sw $t4,0($t0)
# Original instruction: xor v221,v223,v225
la $t5,label_676_v223
lw $t5,0($t5)
la $t4,label_677_v225
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_681_v221
sw $t3,0($t0)
# Original instruction: sltiu v221,v221,1
la $t4,label_681_v221
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_681_v221
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v221,$zero,label_89_elseLabel
la $t5,label_681_v221
lw $t5,0($t5)
beq $t5,$zero,label_89_elseLabel
# get address of variable
# get address of the variable
# Original instruction: la v226,label_32_a23
la $t5,label_32_a23
la $t0,label_687_v226
sw $t5,0($t0)
# get value to assign
# get address of the variable
# get address of the variable
# Original instruction: addiu v227,$fp,8
addiu $t5,$fp,8
la $t0,label_684_v227
sw $t5,0($t0)
# Original instruction: lb v228,0(v227)
la $t5,label_684_v227
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_686_v228
sw $t4,0($t0)
# assign value to variable address
# Original instruction: sb v228,0(v226)
la $t5,label_686_v228
lw $t5,0($t5)
la $t4,label_687_v226
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: b label_90_endLabel
b label_90_endLabel
# else branch
label_89_elseLabel:
# get address of variable
# get address of the variable
# Original instruction: addiu v229,$fp,-8
addiu $t5,$fp,-8
la $t0,label_695_v229
sw $t5,0($t0)
# get value to assign
# compute the left operand
# Original instruction: li v231,0
li $t5,0
la $t0,label_691_v231
sw $t5,0($t0)
# compute the right operand
# Original instruction: li v232,1
li $t5,1
la $t0,label_692_v232
sw $t5,0($t0)
# Original instruction: sub v230,v231,v232
la $t5,label_691_v231
lw $t5,0($t5)
la $t4,label_692_v232
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_694_v230
sw $t3,0($t0)
# assign value to variable address
# Original instruction: sw v230,0(v229)
la $t5,label_694_v230
lw $t5,0($t5)
la $t4,label_695_v229
lw $t4,0($t4)
sw $t5,0($t4)
label_90_endLabel:
# Original instruction: b label_88_endLabel
b label_88_endLabel
# else branch
label_87_elseLabel:
# get address of variable
# get address of the variable
# Original instruction: addiu v233,$fp,-8
addiu $t5,$fp,-8
la $t0,label_699_v233
sw $t5,0($t0)
# get value to assign
# Original instruction: li v234,0
li $t5,0
la $t0,label_698_v234
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sw v234,0(v233)
la $t5,label_698_v234
lw $t5,0($t5)
la $t4,label_699_v233
lw $t4,0($t4)
sw $t5,0($t4)
label_88_endLabel:
label_84_endLabel:
label_80_endLabel:
# Original instruction: b label_78_endLabel
b label_78_endLabel
# else branch
label_77_elseLabel:
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v236,$fp,16
addiu $t5,$fp,16
la $t0,label_701_v236
sw $t5,0($t0)
# Original instruction: lb v237,0(v236)
la $t5,label_701_v236
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_704_v237
sw $t4,0($t0)
# compute the right operand
# Original instruction: li v238,99
li $t5,99
la $t0,label_705_v238
sw $t5,0($t0)
# Original instruction: xor v235,v237,v238
la $t5,label_704_v237
lw $t5,0($t5)
la $t4,label_705_v238
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_709_v235
sw $t3,0($t0)
# Original instruction: sltiu v235,v235,1
la $t4,label_709_v235
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_709_v235
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v235,$zero,label_91_elseLabel
la $t5,label_709_v235
lw $t5,0($t5)
beq $t5,$zero,label_91_elseLabel
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v240,$fp,12
addiu $t5,$fp,12
la $t0,label_711_v240
sw $t5,0($t0)
# Original instruction: lw v241,0(v240)
la $t5,label_711_v240
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_714_v241
sw $t4,0($t0)
# compute the right operand
# Original instruction: li v242,1
li $t5,1
la $t0,label_715_v242
sw $t5,0($t0)
# Original instruction: xor v239,v241,v242
la $t5,label_714_v241
lw $t5,0($t5)
la $t4,label_715_v242
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_719_v239
sw $t3,0($t0)
# Original instruction: sltiu v239,v239,1
la $t4,label_719_v239
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_719_v239
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v239,$zero,label_93_elseLabel
la $t5,label_719_v239
lw $t5,0($t5)
beq $t5,$zero,label_93_elseLabel
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: la v244,label_33_a31
la $t5,label_33_a31
la $t0,label_721_v244
sw $t5,0($t0)
# Original instruction: lb v245,0(v244)
la $t5,label_721_v244
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_726_v245
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: la v246,label_36_empty
la $t5,label_36_empty
la $t0,label_724_v246
sw $t5,0($t0)
# Original instruction: lb v247,0(v246)
la $t5,label_724_v246
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_727_v247
sw $t4,0($t0)
# Original instruction: xor v243,v245,v247
la $t5,label_726_v245
lw $t5,0($t5)
la $t4,label_727_v247
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_731_v243
sw $t3,0($t0)
# Original instruction: sltiu v243,v243,1
la $t4,label_731_v243
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_731_v243
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v243,$zero,label_95_elseLabel
la $t5,label_731_v243
lw $t5,0($t5)
beq $t5,$zero,label_95_elseLabel
# get address of variable
# get address of the variable
# Original instruction: la v248,label_33_a31
la $t5,label_33_a31
la $t0,label_737_v248
sw $t5,0($t0)
# get value to assign
# get address of the variable
# get address of the variable
# Original instruction: addiu v249,$fp,8
addiu $t5,$fp,8
la $t0,label_734_v249
sw $t5,0($t0)
# Original instruction: lb v250,0(v249)
la $t5,label_734_v249
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_736_v250
sw $t4,0($t0)
# assign value to variable address
# Original instruction: sb v250,0(v248)
la $t5,label_736_v250
lw $t5,0($t5)
la $t4,label_737_v248
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: b label_96_endLabel
b label_96_endLabel
# else branch
label_95_elseLabel:
# get address of variable
# get address of the variable
# Original instruction: addiu v251,$fp,-8
addiu $t5,$fp,-8
la $t0,label_745_v251
sw $t5,0($t0)
# get value to assign
# compute the left operand
# Original instruction: li v253,0
li $t5,0
la $t0,label_741_v253
sw $t5,0($t0)
# compute the right operand
# Original instruction: li v254,1
li $t5,1
la $t0,label_742_v254
sw $t5,0($t0)
# Original instruction: sub v252,v253,v254
la $t5,label_741_v253
lw $t5,0($t5)
la $t4,label_742_v254
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_744_v252
sw $t3,0($t0)
# assign value to variable address
# Original instruction: sw v252,0(v251)
la $t5,label_744_v252
lw $t5,0($t5)
la $t4,label_745_v251
lw $t4,0($t4)
sw $t5,0($t4)
label_96_endLabel:
# Original instruction: b label_94_endLabel
b label_94_endLabel
# else branch
label_93_elseLabel:
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v256,$fp,12
addiu $t5,$fp,12
la $t0,label_747_v256
sw $t5,0($t0)
# Original instruction: lw v257,0(v256)
la $t5,label_747_v256
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_750_v257
sw $t4,0($t0)
# compute the right operand
# Original instruction: li v258,2
li $t5,2
la $t0,label_751_v258
sw $t5,0($t0)
# Original instruction: xor v255,v257,v258
la $t5,label_750_v257
lw $t5,0($t5)
la $t4,label_751_v258
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_755_v255
sw $t3,0($t0)
# Original instruction: sltiu v255,v255,1
la $t4,label_755_v255
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_755_v255
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v255,$zero,label_97_elseLabel
la $t5,label_755_v255
lw $t5,0($t5)
beq $t5,$zero,label_97_elseLabel
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: la v260,label_34_a32
la $t5,label_34_a32
la $t0,label_757_v260
sw $t5,0($t0)
# Original instruction: lb v261,0(v260)
la $t5,label_757_v260
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_762_v261
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: la v262,label_36_empty
la $t5,label_36_empty
la $t0,label_760_v262
sw $t5,0($t0)
# Original instruction: lb v263,0(v262)
la $t5,label_760_v262
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_763_v263
sw $t4,0($t0)
# Original instruction: xor v259,v261,v263
la $t5,label_762_v261
lw $t5,0($t5)
la $t4,label_763_v263
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_767_v259
sw $t3,0($t0)
# Original instruction: sltiu v259,v259,1
la $t4,label_767_v259
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_767_v259
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v259,$zero,label_99_elseLabel
la $t5,label_767_v259
lw $t5,0($t5)
beq $t5,$zero,label_99_elseLabel
# get address of variable
# get address of the variable
# Original instruction: la v264,label_34_a32
la $t5,label_34_a32
la $t0,label_773_v264
sw $t5,0($t0)
# get value to assign
# get address of the variable
# get address of the variable
# Original instruction: addiu v265,$fp,8
addiu $t5,$fp,8
la $t0,label_770_v265
sw $t5,0($t0)
# Original instruction: lb v266,0(v265)
la $t5,label_770_v265
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_772_v266
sw $t4,0($t0)
# assign value to variable address
# Original instruction: sb v266,0(v264)
la $t5,label_772_v266
lw $t5,0($t5)
la $t4,label_773_v264
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: b label_100_endLabel
b label_100_endLabel
# else branch
label_99_elseLabel:
# get address of variable
# get address of the variable
# Original instruction: addiu v267,$fp,-8
addiu $t5,$fp,-8
la $t0,label_781_v267
sw $t5,0($t0)
# get value to assign
# compute the left operand
# Original instruction: li v269,0
li $t5,0
la $t0,label_777_v269
sw $t5,0($t0)
# compute the right operand
# Original instruction: li v270,1
li $t5,1
la $t0,label_778_v270
sw $t5,0($t0)
# Original instruction: sub v268,v269,v270
la $t5,label_777_v269
lw $t5,0($t5)
la $t4,label_778_v270
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_780_v268
sw $t3,0($t0)
# assign value to variable address
# Original instruction: sw v268,0(v267)
la $t5,label_780_v268
lw $t5,0($t5)
la $t4,label_781_v267
lw $t4,0($t4)
sw $t5,0($t4)
label_100_endLabel:
# Original instruction: b label_98_endLabel
b label_98_endLabel
# else branch
label_97_elseLabel:
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v272,$fp,12
addiu $t5,$fp,12
la $t0,label_783_v272
sw $t5,0($t0)
# Original instruction: lw v273,0(v272)
la $t5,label_783_v272
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_786_v273
sw $t4,0($t0)
# compute the right operand
# Original instruction: li v274,3
li $t5,3
la $t0,label_787_v274
sw $t5,0($t0)
# Original instruction: xor v271,v273,v274
la $t5,label_786_v273
lw $t5,0($t5)
la $t4,label_787_v274
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_791_v271
sw $t3,0($t0)
# Original instruction: sltiu v271,v271,1
la $t4,label_791_v271
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_791_v271
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v271,$zero,label_101_elseLabel
la $t5,label_791_v271
lw $t5,0($t5)
beq $t5,$zero,label_101_elseLabel
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: la v276,label_35_a33
la $t5,label_35_a33
la $t0,label_793_v276
sw $t5,0($t0)
# Original instruction: lb v277,0(v276)
la $t5,label_793_v276
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_798_v277
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: la v278,label_36_empty
la $t5,label_36_empty
la $t0,label_796_v278
sw $t5,0($t0)
# Original instruction: lb v279,0(v278)
la $t5,label_796_v278
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_799_v279
sw $t4,0($t0)
# Original instruction: xor v275,v277,v279
la $t5,label_798_v277
lw $t5,0($t5)
la $t4,label_799_v279
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_803_v275
sw $t3,0($t0)
# Original instruction: sltiu v275,v275,1
la $t4,label_803_v275
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_803_v275
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v275,$zero,label_103_elseLabel
la $t5,label_803_v275
lw $t5,0($t5)
beq $t5,$zero,label_103_elseLabel
# get address of variable
# get address of the variable
# Original instruction: la v280,label_35_a33
la $t5,label_35_a33
la $t0,label_809_v280
sw $t5,0($t0)
# get value to assign
# get address of the variable
# get address of the variable
# Original instruction: addiu v281,$fp,8
addiu $t5,$fp,8
la $t0,label_806_v281
sw $t5,0($t0)
# Original instruction: lb v282,0(v281)
la $t5,label_806_v281
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_808_v282
sw $t4,0($t0)
# assign value to variable address
# Original instruction: sb v282,0(v280)
la $t5,label_808_v282
lw $t5,0($t5)
la $t4,label_809_v280
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: b label_104_endLabel
b label_104_endLabel
# else branch
label_103_elseLabel:
# get address of variable
# get address of the variable
# Original instruction: addiu v283,$fp,-8
addiu $t5,$fp,-8
la $t0,label_817_v283
sw $t5,0($t0)
# get value to assign
# compute the left operand
# Original instruction: li v285,0
li $t5,0
la $t0,label_813_v285
sw $t5,0($t0)
# compute the right operand
# Original instruction: li v286,1
li $t5,1
la $t0,label_814_v286
sw $t5,0($t0)
# Original instruction: sub v284,v285,v286
la $t5,label_813_v285
lw $t5,0($t5)
la $t4,label_814_v286
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_816_v284
sw $t3,0($t0)
# assign value to variable address
# Original instruction: sw v284,0(v283)
la $t5,label_816_v284
lw $t5,0($t5)
la $t4,label_817_v283
lw $t4,0($t4)
sw $t5,0($t4)
label_104_endLabel:
# Original instruction: b label_102_endLabel
b label_102_endLabel
# else branch
label_101_elseLabel:
# get address of variable
# get address of the variable
# Original instruction: addiu v287,$fp,-8
addiu $t5,$fp,-8
la $t0,label_821_v287
sw $t5,0($t0)
# get value to assign
# Original instruction: li v288,0
li $t5,0
la $t0,label_820_v288
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sw v288,0(v287)
la $t5,label_820_v288
lw $t5,0($t5)
la $t4,label_821_v287
lw $t4,0($t4)
sw $t5,0($t4)
label_102_endLabel:
label_98_endLabel:
label_94_endLabel:
# Original instruction: b label_92_endLabel
b label_92_endLabel
# else branch
label_91_elseLabel:
# get address of variable
# get address of the variable
# Original instruction: addiu v289,$fp,-8
addiu $t5,$fp,-8
la $t0,label_825_v289
sw $t5,0($t0)
# get value to assign
# Original instruction: li v290,0
li $t5,0
la $t0,label_824_v290
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sw v290,0(v289)
la $t5,label_824_v290
lw $t5,0($t5)
la $t4,label_825_v289
lw $t4,0($t4)
sw $t5,0($t4)
label_92_endLabel:
label_78_endLabel:
label_64_endLabel:
# computing the return value
# get address of the variable
# get address of the variable
# Original instruction: addiu v291,$fp,-8
addiu $t5,$fp,-8
la $t0,label_827_v291
sw $t5,0($t0)
# Original instruction: lw v292,0(v291)
la $t5,label_827_v291
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_829_v292
sw $t4,0($t0)
# copying the return value into the previous frame
# Original instruction: sw v292,4($fp)
la $t5,label_829_v292
lw $t5,0($t5)
sw $t5,4($fp)
# jumping to the return label
# Original instruction: j label_62_return
j label_62_return
# return label of the function set
label_62_return:
# popping all used registers from the stack
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_455_v125
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_542_v165
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_711_v240
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_620_v200
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_793_v276
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_477_v136
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_701_v236
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_641_v209
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_664_v219
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_747_v256
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_694_v230
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_599_v190
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_587_v181
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_506_v149
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_669_v217
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_579_v182
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_796_v278
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_629_v204
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_471_v134
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_454_v126
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_762_v261
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_705_v238
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_461_v130
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_651_v210
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_806_v281
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_686_v228
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_536_v160
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_808_v282
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_592_v187
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_820_v288
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_791_v271
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_498_v146
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_780_v268
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_602_v192
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_569_v177
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_772_v266
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_755_v255
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_534_v162
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_633_v201
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_593_v188
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_750_v257
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_507_v150
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_503_v148
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_684_v227
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_824_v290
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_519_v155
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_817_v283
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_572_v176
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_457_v128
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_777_v269
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_781_v267
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_741_v253
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_783_v272
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_714_v241
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_460_v129
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_724_v246
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_736_v250
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_526_v157
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_565_v172
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_829_v292
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_625_v202
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_533_v161
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_767_v259
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_698_v234
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_734_v249
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_609_v189
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_814_v286
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_475_v131
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_614_v196
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_497_v145
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_480_v138
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_511_v147
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_825_v289
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_513_v152
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_692_v232
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_803_v275
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_583_v184
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_554_v169
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_721_v244
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_827_v291
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_605_v193
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_799_v279
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_674_v224
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_665_v220
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_659_v213
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_648_v211
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_742_v254
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_523_v151
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_487_v135
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_582_v183
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_500_v144
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_638_v208
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_676_v223
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_623_v197
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_529_v156
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_798_v277
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_467_v132
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_687_v226
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_760_v262
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_628_v203
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_518_v153
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_719_v239
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_677_v225
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_539_v164
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_778_v270
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_604_v191
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_562_v173
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_577_v179
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_695_v229
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_492_v142
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_661_v218
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_552_v170
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_640_v207
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_493_v140
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_745_v251
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_751_v258
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_727_v247
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_691_v231
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_564_v174
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_731_v243
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_597_v185
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_543_v166
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_650_v212
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_715_v242
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_770_v265
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_773_v264
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_576_v180
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_757_v260
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_570_v178
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_528_v158
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_573_v175
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_559_v167
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_645_v205
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_787_v274
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_589_v186
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_615_v194
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_465_v127
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_821_v287
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_744_v252
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_709_v235
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_547_v163
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_656_v216
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_809_v280
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_619_v199
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_699_v233
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_737_v248
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_470_v133
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_681_v221
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_555_v171
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_655_v215
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_482_v137
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_537_v159
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_635_v206
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_786_v273
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_726_v245
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_704_v237
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_483_v139
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_671_v222
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_549_v168
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_763_v263
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_658_v214
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_516_v154
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_816_v284
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_612_v195
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_501_v143
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_813_v285
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_490_v141
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_622_v198
sw $t0,0($t1)
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

.data
# Allocated labels for virtual registers
label_837_v296:
.space 4
label_861_v308:
.space 4
label_875_v315:
.space 4
label_885_v320:
.space 4
label_867_v311:
.space 4
label_855_v305:
.space 4
label_899_v327:
.space 4
label_835_v295:
.space 4
label_843_v299:
.space 4
label_851_v303:
.space 4
label_869_v312:
.space 4
label_877_v316:
.space 4
label_841_v298:
.space 4
label_879_v317:
.space 4
label_889_v322:
.space 4
label_893_v324:
.space 4
label_891_v323:
.space 4
label_845_v300:
.space 4
label_895_v325:
.space 4
label_873_v314:
.space 4
label_887_v321:
.space 4
label_833_v294:
.space 4
label_883_v319:
.space 4
label_903_v329:
.space 4
label_897_v326:
.space 4
label_901_v328:
.space 4
label_839_v297:
.space 4
label_857_v306:
.space 4
label_871_v313:
.space 4
label_881_v318:
.space 4
label_853_v304:
.space 4
label_863_v309:
.space 4
label_831_v293:
.space 4
label_849_v302:
.space 4
label_859_v307:
.space 4
label_847_v301:
.space 4
label_865_v310:
.space 4

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
la $t0,label_837_v296
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_861_v308
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_875_v315
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_885_v320
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_867_v311
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_855_v305
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_899_v327
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_835_v295
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_843_v299
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_851_v303
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_869_v312
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_877_v316
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_841_v298
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_879_v317
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_889_v322
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_893_v324
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_891_v323
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_845_v300
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_895_v325
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_873_v314
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_887_v321
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_833_v294
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_883_v319
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_903_v329
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_897_v326
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_901_v328
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_839_v297
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_857_v306
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_871_v313
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_881_v318
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_853_v304
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_863_v309
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_831_v293
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_849_v302
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_859_v307
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_847_v301
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_865_v310
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: la v293,label_0_
la $t5,label_0_
la $t0,label_831_v293
sw $t5,0($t0)
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v293
la $t5,label_831_v293
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: la v294,label_1_
la $t5,label_1_
la $t0,label_833_v294
sw $t5,0($t0)
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v294
la $t5,label_833_v294
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: la v295,label_2_
la $t5,label_2_
la $t0,label_835_v295
sw $t5,0($t0)
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v295
la $t5,label_835_v295
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: la v296,label_3_
la $t5,label_3_
la $t0,label_837_v296
sw $t5,0($t0)
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v296
la $t5,label_837_v296
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# get address of the variable
# get address of the variable
# Original instruction: la v297,label_27_a11
la $t5,label_27_a11
la $t0,label_839_v297
sw $t5,0($t0)
# Original instruction: lb v298,0(v297)
la $t5,label_839_v297
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_841_v298
sw $t4,0($t0)
# Original instruction: li $v0,11
li $v0,11
# Original instruction: add $a0,$zero,v298
la $t5,label_841_v298
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: la v299,label_4_
la $t5,label_4_
la $t0,label_843_v299
sw $t5,0($t0)
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v299
la $t5,label_843_v299
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# get address of the variable
# get address of the variable
# Original instruction: la v300,label_28_a12
la $t5,label_28_a12
la $t0,label_845_v300
sw $t5,0($t0)
# Original instruction: lb v301,0(v300)
la $t5,label_845_v300
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_847_v301
sw $t4,0($t0)
# Original instruction: li $v0,11
li $v0,11
# Original instruction: add $a0,$zero,v301
la $t5,label_847_v301
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: la v302,label_5_
la $t5,label_5_
la $t0,label_849_v302
sw $t5,0($t0)
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v302
la $t5,label_849_v302
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# get address of the variable
# get address of the variable
# Original instruction: la v303,label_29_a13
la $t5,label_29_a13
la $t0,label_851_v303
sw $t5,0($t0)
# Original instruction: lb v304,0(v303)
la $t5,label_851_v303
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_853_v304
sw $t4,0($t0)
# Original instruction: li $v0,11
li $v0,11
# Original instruction: add $a0,$zero,v304
la $t5,label_853_v304
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: la v305,label_6_
la $t5,label_6_
la $t0,label_855_v305
sw $t5,0($t0)
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v305
la $t5,label_855_v305
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: la v306,label_7_
la $t5,label_7_
la $t0,label_857_v306
sw $t5,0($t0)
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v306
la $t5,label_857_v306
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: la v307,label_8_
la $t5,label_8_
la $t0,label_859_v307
sw $t5,0($t0)
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v307
la $t5,label_859_v307
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# get address of the variable
# get address of the variable
# Original instruction: la v308,label_30_a21
la $t5,label_30_a21
la $t0,label_861_v308
sw $t5,0($t0)
# Original instruction: lb v309,0(v308)
la $t5,label_861_v308
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_863_v309
sw $t4,0($t0)
# Original instruction: li $v0,11
li $v0,11
# Original instruction: add $a0,$zero,v309
la $t5,label_863_v309
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: la v310,label_9_
la $t5,label_9_
la $t0,label_865_v310
sw $t5,0($t0)
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v310
la $t5,label_865_v310
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# get address of the variable
# get address of the variable
# Original instruction: la v311,label_31_a22
la $t5,label_31_a22
la $t0,label_867_v311
sw $t5,0($t0)
# Original instruction: lb v312,0(v311)
la $t5,label_867_v311
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_869_v312
sw $t4,0($t0)
# Original instruction: li $v0,11
li $v0,11
# Original instruction: add $a0,$zero,v312
la $t5,label_869_v312
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: la v313,label_10_
la $t5,label_10_
la $t0,label_871_v313
sw $t5,0($t0)
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v313
la $t5,label_871_v313
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# get address of the variable
# get address of the variable
# Original instruction: la v314,label_32_a23
la $t5,label_32_a23
la $t0,label_873_v314
sw $t5,0($t0)
# Original instruction: lb v315,0(v314)
la $t5,label_873_v314
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_875_v315
sw $t4,0($t0)
# Original instruction: li $v0,11
li $v0,11
# Original instruction: add $a0,$zero,v315
la $t5,label_875_v315
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: la v316,label_11_
la $t5,label_11_
la $t0,label_877_v316
sw $t5,0($t0)
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v316
la $t5,label_877_v316
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: la v317,label_12_
la $t5,label_12_
la $t0,label_879_v317
sw $t5,0($t0)
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v317
la $t5,label_879_v317
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: la v318,label_13_
la $t5,label_13_
la $t0,label_881_v318
sw $t5,0($t0)
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v318
la $t5,label_881_v318
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# get address of the variable
# get address of the variable
# Original instruction: la v319,label_33_a31
la $t5,label_33_a31
la $t0,label_883_v319
sw $t5,0($t0)
# Original instruction: lb v320,0(v319)
la $t5,label_883_v319
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_885_v320
sw $t4,0($t0)
# Original instruction: li $v0,11
li $v0,11
# Original instruction: add $a0,$zero,v320
la $t5,label_885_v320
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: la v321,label_14_
la $t5,label_14_
la $t0,label_887_v321
sw $t5,0($t0)
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v321
la $t5,label_887_v321
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# get address of the variable
# get address of the variable
# Original instruction: la v322,label_34_a32
la $t5,label_34_a32
la $t0,label_889_v322
sw $t5,0($t0)
# Original instruction: lb v323,0(v322)
la $t5,label_889_v322
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_891_v323
sw $t4,0($t0)
# Original instruction: li $v0,11
li $v0,11
# Original instruction: add $a0,$zero,v323
la $t5,label_891_v323
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: la v324,label_15_
la $t5,label_15_
la $t0,label_893_v324
sw $t5,0($t0)
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v324
la $t5,label_893_v324
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# get address of the variable
# get address of the variable
# Original instruction: la v325,label_35_a33
la $t5,label_35_a33
la $t0,label_895_v325
sw $t5,0($t0)
# Original instruction: lb v326,0(v325)
la $t5,label_895_v325
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_897_v326
sw $t4,0($t0)
# Original instruction: li $v0,11
li $v0,11
# Original instruction: add $a0,$zero,v326
la $t5,label_897_v326
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: la v327,label_16_
la $t5,label_16_
la $t0,label_899_v327
sw $t5,0($t0)
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v327
la $t5,label_899_v327
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: la v328,label_17_
la $t5,label_17_
la $t0,label_901_v328
sw $t5,0($t0)
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v328
la $t5,label_901_v328
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: la v329,label_18_
la $t5,label_18_
la $t0,label_903_v329
sw $t5,0($t0)
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v329
la $t5,label_903_v329
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# return label of the function printGame
label_106_return:
# popping all used registers from the stack
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_865_v310
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_847_v301
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_859_v307
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_849_v302
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_831_v293
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_863_v309
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_853_v304
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_881_v318
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_871_v313
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_857_v306
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_839_v297
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_901_v328
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_897_v326
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_903_v329
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_883_v319
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_833_v294
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_887_v321
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_873_v314
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_895_v325
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_845_v300
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_891_v323
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_893_v324
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_889_v322
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_879_v317
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_841_v298
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_877_v316
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_869_v312
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_851_v303
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_843_v299
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_835_v295
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_899_v327
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_855_v305
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_867_v311
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_885_v320
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_875_v315
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_861_v308
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_837_v296
sw $t0,0($t1)
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

.data
# Allocated labels for virtual registers
label_907_v331:
.space 4
label_905_v330:
.space 4
label_909_v332:
.space 4
label_911_v333:
.space 4

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
la $t0,label_907_v331
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_905_v330
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_909_v332
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_911_v333
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: la v330,label_19_
la $t5,label_19_
la $t0,label_905_v330
sw $t5,0($t0)
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v330
la $t5,label_905_v330
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# get address of the variable
# get address of the variable
# Original instruction: addiu v331,$fp,4
addiu $t5,$fp,4
la $t0,label_907_v331
sw $t5,0($t0)
# Original instruction: lw v332,0(v331)
la $t5,label_907_v331
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_909_v332
sw $t4,0($t0)
# Original instruction: li $v0,1
li $v0,1
# Original instruction: add $a0,$zero,v332
la $t5,label_909_v332
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: la v333,label_20_
la $t5,label_20_
la $t0,label_911_v333
sw $t5,0($t0)
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v333
la $t5,label_911_v333
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# return label of the function printWinner
label_108_return:
# popping all used registers from the stack
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_911_v333
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_909_v332
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_905_v330
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_907_v331
sw $t0,0($t1)
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

.data
# Allocated labels for virtual registers
label_921_v334:
.space 4
label_925_v339:
.space 4
label_913_v335:
.space 4
label_917_v337:
.space 4
label_916_v336:
.space 4
label_923_v338:
.space 4

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
la $t0,label_921_v334
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_925_v339
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_913_v335
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_917_v337
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_916_v336
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_923_v338
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v335,$fp,8
addiu $t5,$fp,8
la $t0,label_913_v335
sw $t5,0($t0)
# Original instruction: lw v336,0(v335)
la $t5,label_913_v335
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_916_v336
sw $t4,0($t0)
# compute the right operand
# Original instruction: li v337,1
li $t5,1
la $t0,label_917_v337
sw $t5,0($t0)
# Original instruction: xor v334,v336,v337
la $t5,label_916_v336
lw $t5,0($t5)
la $t4,label_917_v337
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_921_v334
sw $t3,0($t0)
# Original instruction: sltiu v334,v334,1
la $t4,label_921_v334
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_921_v334
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v334,$zero,label_111_elseLabel
la $t5,label_921_v334
lw $t5,0($t5)
beq $t5,$zero,label_111_elseLabel
# computing the return value
# Original instruction: li v338,2
li $t5,2
la $t0,label_923_v338
sw $t5,0($t0)
# copying the return value into the previous frame
# Original instruction: sw v338,4($fp)
la $t5,label_923_v338
lw $t5,0($t5)
sw $t5,4($fp)
# jumping to the return label
# Original instruction: j label_110_return
j label_110_return
# Original instruction: b label_112_endLabel
b label_112_endLabel
# else branch
label_111_elseLabel:
# computing the return value
# Original instruction: li v339,1
li $t5,1
la $t0,label_925_v339
sw $t5,0($t0)
# copying the return value into the previous frame
# Original instruction: sw v339,4($fp)
la $t5,label_925_v339
lw $t5,0($t5)
sw $t5,4($fp)
# jumping to the return label
# Original instruction: j label_110_return
j label_110_return
label_112_endLabel:
# return label of the function switchPlayer
label_110_return:
# popping all used registers from the stack
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_923_v338
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_916_v336
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_917_v337
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_913_v335
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_925_v339
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_921_v334
sw $t0,0($t1)
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

.data
# Allocated labels for virtual registers
label_931_v343:
.space 4
label_935_v340:
.space 4
label_927_v341:
.space 4
label_937_v344:
.space 4
label_930_v342:
.space 4
label_939_v345:
.space 4

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
la $t0,label_931_v343
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_935_v340
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_927_v341
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_937_v344
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_930_v342
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_939_v345
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v341,$fp,8
addiu $t5,$fp,8
la $t0,label_927_v341
sw $t5,0($t0)
# Original instruction: lw v342,0(v341)
la $t5,label_927_v341
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_930_v342
sw $t4,0($t0)
# compute the right operand
# Original instruction: li v343,1
li $t5,1
la $t0,label_931_v343
sw $t5,0($t0)
# Original instruction: xor v340,v342,v343
la $t5,label_930_v342
lw $t5,0($t5)
la $t4,label_931_v343
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_935_v340
sw $t3,0($t0)
# Original instruction: sltiu v340,v340,1
la $t4,label_935_v340
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_935_v340
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v340,$zero,label_115_elseLabel
la $t5,label_935_v340
lw $t5,0($t5)
beq $t5,$zero,label_115_elseLabel
# computing the return value
# Original instruction: li v344,88
li $t5,88
la $t0,label_937_v344
sw $t5,0($t0)
# copying the return value into the previous frame
# Original instruction: sb v344,4($fp)
la $t5,label_937_v344
lw $t5,0($t5)
sb $t5,4($fp)
# jumping to the return label
# Original instruction: j label_114_return
j label_114_return
# Original instruction: b label_116_endLabel
b label_116_endLabel
# else branch
label_115_elseLabel:
# computing the return value
# Original instruction: li v345,79
li $t5,79
la $t0,label_939_v345
sw $t5,0($t0)
# copying the return value into the previous frame
# Original instruction: sb v345,4($fp)
la $t5,label_939_v345
lw $t5,0($t5)
sb $t5,4($fp)
# jumping to the return label
# Original instruction: j label_114_return
j label_114_return
label_116_endLabel:
# return label of the function get_mark
label_114_return:
# popping all used registers from the stack
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_939_v345
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_930_v342
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_937_v344
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_927_v341
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_935_v340
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_931_v343
sw $t0,0($t1)
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

.data
# Allocated labels for virtual registers
label_968_v361:
.space 4
label_953_v352:
.space 4
label_982_v368:
.space 4
label_1015_v381:
.space 4
label_999_v374:
.space 4
label_970_v359:
.space 4
label_987_v362:
.space 4
label_1001_v376:
.space 4
label_958_v355:
.space 4
label_949_v350:
.space 4
label_1005_v379:
.space 4
label_978_v366:
.space 4
label_992_v372:
.space 4
label_947_v349:
.space 4
label_1018_v383:
.space 4
label_966_v360:
.space 4
label_976_v365:
.space 4
label_942_v347:
.space 4
label_951_v351:
.space 4
label_963_v356:
.space 4
label_971_v358:
.space 4
label_955_v353:
.space 4
label_989_v371:
.space 4
label_984_v369:
.space 4
label_986_v363:
.space 4
label_1009_v378:
.space 4
label_974_v364:
.space 4
label_943_v346:
.space 4
label_993_v373:
.space 4
label_959_v354:
.space 4
label_997_v370:
.space 4
label_945_v348:
.space 4
label_1008_v377:
.space 4
label_962_v357:
.space 4
label_980_v367:
.space 4
label_1006_v380:
.space 4
label_1019_v382:
.space 4
label_1013_v375:
.space 4

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
la $t0,label_968_v361
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_953_v352
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_982_v368
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1015_v381
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_999_v374
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_970_v359
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_987_v362
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1001_v376
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_958_v355
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_949_v350
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1005_v379
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_978_v366
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_992_v372
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_947_v349
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1018_v383
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_966_v360
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_976_v365
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_942_v347
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_951_v351
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_963_v356
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_971_v358
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_955_v353
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_989_v371
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_984_v369
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_986_v363
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1009_v378
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_974_v364
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_943_v346
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_993_v373
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_959_v354
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_997_v370
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_945_v348
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1008_v377
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_962_v357
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_980_v367
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1006_v380
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1019_v382
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1013_v375
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
# get address of variable
# get address of the variable
# Original instruction: addiu v346,$fp,-16
addiu $t5,$fp,-16
la $t0,label_943_v346
sw $t5,0($t0)
# get value to assign
# Original instruction: li v347,1
li $t5,1
la $t0,label_942_v347
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sw v347,0(v346)
la $t5,label_942_v347
lw $t5,0($t5)
la $t4,label_943_v346
lw $t4,0($t4)
sw $t5,0($t4)
label_119_loop:
# get address of the variable
# get address of the variable
# Original instruction: addiu v348,$fp,-16
addiu $t5,$fp,-16
la $t0,label_945_v348
sw $t5,0($t0)
# Original instruction: lw v349,0(v348)
la $t5,label_945_v348
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_947_v349
sw $t4,0($t0)
# check if condition is true, branch to end if false
# Original instruction: beq v349,$zero,label_120_endLabel
la $t5,label_947_v349
lw $t5,0($t5)
beq $t5,$zero,label_120_endLabel
# Original instruction: la v350,label_21_
la $t5,label_21_
la $t0,label_949_v350
sw $t5,0($t0)
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v350
la $t5,label_949_v350
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# get address of the variable
# get address of the variable
# Original instruction: addiu v351,$fp,4
addiu $t5,$fp,4
la $t0,label_951_v351
sw $t5,0($t0)
# Original instruction: lw v352,0(v351)
la $t5,label_951_v351
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_953_v352
sw $t4,0($t0)
# Original instruction: li $v0,1
li $v0,1
# Original instruction: add $a0,$zero,v352
la $t5,label_953_v352
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: la v353,label_22_
la $t5,label_22_
la $t0,label_955_v353
sw $t5,0($t0)
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v353
la $t5,label_955_v353
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# get address of variable
# get address of the variable
# Original instruction: addiu v354,$fp,-8
addiu $t5,$fp,-8
la $t0,label_959_v354
sw $t5,0($t0)
# get value to assign
# Original instruction: li $v0,12
li $v0,12
# Original instruction: syscall
syscall
# Original instruction: add v355,$v0,$zero
add $t5,$v0,$zero
la $t0,label_958_v355
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sb v355,0(v354)
la $t5,label_958_v355
lw $t5,0($t5)
la $t4,label_959_v354
lw $t4,0($t4)
sb $t5,0($t4)
# get address of variable
# get address of the variable
# Original instruction: addiu v356,$fp,-12
addiu $t5,$fp,-12
la $t0,label_963_v356
sw $t5,0($t0)
# get value to assign
# Original instruction: li $v0,5
li $v0,5
# Original instruction: syscall
syscall
# Original instruction: add v357,$v0,$zero
add $t5,$v0,$zero
la $t0,label_962_v357
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sw v357,0(v356)
la $t5,label_962_v357
lw $t5,0($t5)
la $t4,label_963_v356
lw $t4,0($t4)
sw $t5,0($t4)
# get address of variable
# get address of the variable
# Original instruction: addiu v358,$fp,-24
addiu $t5,$fp,-24
la $t0,label_971_v358
sw $t5,0($t0)
# get value to assign
# move sp by the to allocate space for the args and return value
# Original instruction: addiu $sp,$sp,-8
addiu $sp,$sp,-8
# move sp onto the new frame
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# copy args onto the stack
# get address of the variable
# get address of the variable
# Original instruction: addiu v360,$fp,4
addiu $t5,$fp,4
la $t0,label_966_v360
sw $t5,0($t0)
# Original instruction: lw v361,0(v360)
la $t5,label_966_v360
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_968_v361
sw $t4,0($t0)
# Original instruction: sw v361,8($sp)
la $t5,label_968_v361
lw $t5,0($t5)
sw $t5,8($sp)
# Original instruction: jal label_113_get_mark
jal label_113_get_mark
# read return value from the stack
# Original instruction: lb v359,0($sp)
lb $t5,0($sp)
la $t0,label_970_v359
sw $t5,0($t0)
# move sp to deallocate the space of the args and return value
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# assign value to variable address
# Original instruction: sb v359,0(v358)
la $t5,label_970_v359
lw $t5,0($t5)
la $t4,label_971_v358
lw $t4,0($t4)
sb $t5,0($t4)
# get address of variable
# get address of the variable
# Original instruction: addiu v362,$fp,-20
addiu $t5,$fp,-20
la $t0,label_987_v362
sw $t5,0($t0)
# get value to assign
# move sp by the to allocate space for the args and return value
# Original instruction: addiu $sp,$sp,-16
addiu $sp,$sp,-16
# move sp onto the new frame
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# copy args onto the stack
# get address of the variable
# get address of the variable
# Original instruction: addiu v364,$fp,-8
addiu $t5,$fp,-8
la $t0,label_974_v364
sw $t5,0($t0)
# Original instruction: lb v365,0(v364)
la $t5,label_974_v364
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_976_v365
sw $t4,0($t0)
# Original instruction: sb v365,16($sp)
la $t5,label_976_v365
lw $t5,0($t5)
sb $t5,16($sp)
# get address of the variable
# get address of the variable
# Original instruction: addiu v366,$fp,-12
addiu $t5,$fp,-12
la $t0,label_978_v366
sw $t5,0($t0)
# Original instruction: lw v367,0(v366)
la $t5,label_978_v366
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_980_v367
sw $t4,0($t0)
# Original instruction: sw v367,12($sp)
la $t5,label_980_v367
lw $t5,0($t5)
sw $t5,12($sp)
# get address of the variable
# get address of the variable
# Original instruction: addiu v368,$fp,-24
addiu $t5,$fp,-24
la $t0,label_982_v368
sw $t5,0($t0)
# Original instruction: lb v369,0(v368)
la $t5,label_982_v368
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_984_v369
sw $t4,0($t0)
# Original instruction: sb v369,8($sp)
la $t5,label_984_v369
lw $t5,0($t5)
sb $t5,8($sp)
# Original instruction: jal label_61_set
jal label_61_set
# read return value from the stack
# Original instruction: lw v363,0($sp)
lw $t5,0($sp)
la $t0,label_986_v363
sw $t5,0($t0)
# move sp to deallocate the space of the args and return value
# Original instruction: addiu $sp,$sp,16
addiu $sp,$sp,16
# assign value to variable address
# Original instruction: sw v363,0(v362)
la $t5,label_986_v363
lw $t5,0($t5)
la $t4,label_987_v362
lw $t4,0($t4)
sw $t5,0($t4)
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v371,$fp,-20
addiu $t5,$fp,-20
la $t0,label_989_v371
sw $t5,0($t0)
# Original instruction: lw v372,0(v371)
la $t5,label_989_v371
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_992_v372
sw $t4,0($t0)
# compute the right operand
# Original instruction: li v373,0
li $t5,0
la $t0,label_993_v373
sw $t5,0($t0)
# Original instruction: xor v370,v372,v373
la $t5,label_992_v372
lw $t5,0($t5)
la $t4,label_993_v373
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_997_v370
sw $t3,0($t0)
# Original instruction: sltiu v370,v370,1
la $t4,label_997_v370
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_997_v370
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v370,$zero,label_121_elseLabel
la $t5,label_997_v370
lw $t5,0($t5)
beq $t5,$zero,label_121_elseLabel
# Original instruction: la v374,label_23_
la $t5,label_23_
la $t0,label_999_v374
sw $t5,0($t0)
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v374
la $t5,label_999_v374
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: b label_122_endLabel
b label_122_endLabel
# else branch
label_121_elseLabel:
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v376,$fp,-20
addiu $t5,$fp,-20
la $t0,label_1001_v376
sw $t5,0($t0)
# Original instruction: lw v377,0(v376)
la $t5,label_1001_v376
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_1008_v377
sw $t4,0($t0)
# compute the right operand
# compute the left operand
# Original instruction: li v379,0
li $t5,0
la $t0,label_1005_v379
sw $t5,0($t0)
# compute the right operand
# Original instruction: li v380,1
li $t5,1
la $t0,label_1006_v380
sw $t5,0($t0)
# Original instruction: sub v378,v379,v380
la $t5,label_1005_v379
lw $t5,0($t5)
la $t4,label_1006_v380
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_1009_v378
sw $t3,0($t0)
# Original instruction: xor v375,v377,v378
la $t5,label_1008_v377
lw $t5,0($t5)
la $t4,label_1009_v378
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1013_v375
sw $t3,0($t0)
# Original instruction: sltiu v375,v375,1
la $t4,label_1013_v375
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_1013_v375
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v375,$zero,label_123_elseLabel
la $t5,label_1013_v375
lw $t5,0($t5)
beq $t5,$zero,label_123_elseLabel
# Original instruction: la v381,label_24_
la $t5,label_24_
la $t0,label_1015_v381
sw $t5,0($t0)
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v381
la $t5,label_1015_v381
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# Original instruction: b label_124_endLabel
b label_124_endLabel
# else branch
label_123_elseLabel:
# get address of variable
# get address of the variable
# Original instruction: addiu v382,$fp,-16
addiu $t5,$fp,-16
la $t0,label_1019_v382
sw $t5,0($t0)
# get value to assign
# Original instruction: li v383,0
li $t5,0
la $t0,label_1018_v383
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sw v383,0(v382)
la $t5,label_1018_v383
lw $t5,0($t5)
la $t4,label_1019_v382
lw $t4,0($t4)
sw $t5,0($t4)
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
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1013_v375
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1019_v382
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1006_v380
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_980_v367
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_962_v357
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1008_v377
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_945_v348
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_997_v370
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_959_v354
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_993_v373
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_943_v346
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_974_v364
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1009_v378
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_986_v363
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_984_v369
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_989_v371
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_955_v353
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_971_v358
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_963_v356
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_951_v351
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_942_v347
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_976_v365
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_966_v360
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1018_v383
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_947_v349
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_992_v372
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_978_v366
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1005_v379
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_949_v350
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_958_v355
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1001_v376
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_987_v362
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_970_v359
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_999_v374
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1015_v381
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_982_v368
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_953_v352
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_968_v361
sw $t0,0($t1)
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

.data
# Allocated labels for virtual registers
label_1037_v392:
.space 4
label_1190_v456:
.space 4
label_1167_v448:
.space 4
label_1286_v497:
.space 4
label_1115_v420:
.space 4
label_1103_v415:
.space 4
label_1235_v477:
.space 4
label_1096_v418:
.space 4
label_1028_v389:
.space 4
label_1148_v440:
.space 4
label_1139_v436:
.space 4
label_1179_v453:
.space 4
label_1049_v397:
.space 4
label_1258_v485:
.space 4
label_1293_v501:
.space 4
label_1040_v394:
.space 4
label_1124_v430:
.space 4
label_1178_v451:
.space 4
label_1110_v422:
.space 4
label_1145_v438:
.space 4
label_1226_v472:
.space 4
label_1291_v495:
.space 4
label_1218_v468:
.space 4
label_1206_v463:
.space 4
label_1136_v435:
.space 4
label_1188_v457:
.space 4
label_1234_v475:
.space 4
label_1047_v391:
.space 4
label_1161_v445:
.space 4
label_1275_v494:
.space 4
label_1091_v413:
.space 4
label_1043_v395:
.space 4
label_1022_v385:
.space 4
label_1223_v466:
.space 4
label_1054_v398:
.space 4
label_1256_v486:
.space 4
label_1281_v496:
.space 4
label_1159_v442:
.space 4
label_1279_v490:
.space 4
label_1138_v434:
.space 4
label_1127_v431:
.space 4
label_1111_v424:
.space 4
label_1083_v412:
.space 4
label_1042_v393:
.space 4
label_1133_v433:
.space 4
label_1311_v508:
.space 4
label_1251_v478:
.space 4
label_1063_v401:
.space 4
label_1093_v416:
.space 4
label_1269_v491:
.space 4
label_1191_v458:
.space 4
label_1204_v464:
.space 4
label_1259_v487:
.space 4
label_1155_v437:
.space 4
label_1158_v443:
.space 4
label_1075_v403:
.space 4
label_1121_v428:
.space 4
label_1241_v479:
.space 4
label_1077_v409:
.space 4
label_1119_v425:
.space 4
label_1272_v493:
.space 4
label_1166_v446:
.space 4
label_1108_v423:
.space 4
label_1239_v473:
.space 4
label_1183_v449:
.space 4
label_1062_v402:
.space 4
label_1185_v455:
.space 4
label_1306_v506:
.space 4
label_1171_v444:
.space 4
label_1131_v427:
.space 4
label_1307_v505:
.space 4
label_1055_v400:
.space 4
label_1099_v419:
.space 4
label_1030_v388:
.space 4
label_1303_v500:
.space 4
label_1216_v469:
.space 4
label_1263_v483:
.space 4
label_1173_v450:
.space 4
label_1025_v387:
.space 4
label_1052_v399:
.space 4
label_1232_v476:
.space 4
label_1082_v410:
.space 4
label_1068_v406:
.space 4
label_1219_v470:
.space 4
label_1126_v429:
.space 4
label_1246_v480:
.space 4
label_1296_v503:
.space 4
label_1071_v407:
.space 4
label_1267_v488:
.space 4
label_1298_v502:
.space 4
label_1207_v465:
.space 4
label_1090_v414:
.space 4
label_1198_v460:
.space 4
label_1287_v499:
.space 4
label_1274_v492:
.space 4
label_1031_v390:
.space 4
label_1164_v447:
.space 4
label_1176_v452:
.space 4
label_1244_v481:
.space 4
label_1299_v504:
.space 4
label_1118_v426:
.space 4
label_1143_v432:
.space 4
label_1023_v384:
.space 4
label_1227_v471:
.space 4
label_1247_v482:
.space 4
label_1087_v408:
.space 4
label_1070_v405:
.space 4
label_1229_v474:
.space 4
label_1199_v459:
.space 4
label_1059_v396:
.space 4
label_1309_v507:
.space 4
label_1211_v461:
.space 4
label_1065_v404:
.space 4
label_1151_v441:
.space 4
label_1150_v439:
.space 4
label_1080_v411:
.space 4
label_1098_v417:
.space 4
label_1266_v489:
.space 4
label_1201_v462:
.space 4
label_1253_v484:
.space 4
label_1284_v498:
.space 4
label_1195_v454:
.space 4
label_1213_v467:
.space 4
label_1035_v386:
.space 4
label_1105_v421:
.space 4

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
la $t0,label_1037_v392
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1190_v456
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1167_v448
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1286_v497
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1115_v420
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1103_v415
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1235_v477
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1096_v418
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1028_v389
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1148_v440
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1139_v436
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1179_v453
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1049_v397
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1258_v485
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1293_v501
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1040_v394
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1124_v430
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1178_v451
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1110_v422
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1145_v438
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1226_v472
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1291_v495
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1218_v468
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1206_v463
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1136_v435
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1188_v457
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1234_v475
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1047_v391
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1161_v445
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1275_v494
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1091_v413
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1043_v395
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1022_v385
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1223_v466
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1054_v398
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1256_v486
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1281_v496
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1159_v442
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1279_v490
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1138_v434
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1127_v431
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1111_v424
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1083_v412
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1042_v393
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1133_v433
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1311_v508
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1251_v478
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1063_v401
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1093_v416
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1269_v491
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1191_v458
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1204_v464
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1259_v487
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1155_v437
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1158_v443
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1075_v403
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1121_v428
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1241_v479
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1077_v409
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1119_v425
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1272_v493
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1166_v446
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1108_v423
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1239_v473
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1183_v449
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1062_v402
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1185_v455
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1306_v506
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1171_v444
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1131_v427
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1307_v505
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1055_v400
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1099_v419
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1030_v388
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1303_v500
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1216_v469
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1263_v483
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1173_v450
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1025_v387
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1052_v399
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1232_v476
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1082_v410
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1068_v406
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1219_v470
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1126_v429
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1246_v480
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1296_v503
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1071_v407
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1267_v488
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1298_v502
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1207_v465
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1090_v414
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1198_v460
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1287_v499
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1274_v492
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1031_v390
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1164_v447
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1176_v452
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1244_v481
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1299_v504
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1118_v426
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1143_v432
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1023_v384
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1227_v471
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1247_v482
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1087_v408
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1070_v405
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1229_v474
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1199_v459
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1059_v396
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1309_v507
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1211_v461
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1065_v404
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1151_v441
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1150_v439
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1080_v411
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1098_v417
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1266_v489
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1201_v462
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1253_v484
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1284_v498
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1195_v454
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1213_v467
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1035_v386
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_1105_v421
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
# get address of variable
# get address of the variable
# Original instruction: addiu v384,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1023_v384
sw $t5,0($t0)
# get value to assign
# Original instruction: li v385,0
li $t5,0
la $t0,label_1022_v385
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sw v385,0(v384)
la $t5,label_1022_v385
lw $t5,0($t5)
la $t4,label_1023_v384
lw $t4,0($t4)
sw $t5,0($t4)
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: la v387,label_27_a11
la $t5,label_27_a11
la $t0,label_1025_v387
sw $t5,0($t0)
# Original instruction: lb v388,0(v387)
la $t5,label_1025_v387
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1030_v388
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v389,$fp,8
addiu $t5,$fp,8
la $t0,label_1028_v389
sw $t5,0($t0)
# Original instruction: lb v390,0(v389)
la $t5,label_1028_v389
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1031_v390
sw $t4,0($t0)
# Original instruction: xor v386,v388,v390
la $t5,label_1030_v388
lw $t5,0($t5)
la $t4,label_1031_v390
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1035_v386
sw $t3,0($t0)
# Original instruction: sltiu v386,v386,1
la $t4,label_1035_v386
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_1035_v386
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v386,$zero,label_127_elseLabel
la $t5,label_1035_v386
lw $t5,0($t5)
beq $t5,$zero,label_127_elseLabel
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: la v392,label_30_a21
la $t5,label_30_a21
la $t0,label_1037_v392
sw $t5,0($t0)
# Original instruction: lb v393,0(v392)
la $t5,label_1037_v392
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1042_v393
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v394,$fp,8
addiu $t5,$fp,8
la $t0,label_1040_v394
sw $t5,0($t0)
# Original instruction: lb v395,0(v394)
la $t5,label_1040_v394
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1043_v395
sw $t4,0($t0)
# Original instruction: xor v391,v393,v395
la $t5,label_1042_v393
lw $t5,0($t5)
la $t4,label_1043_v395
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1047_v391
sw $t3,0($t0)
# Original instruction: sltiu v391,v391,1
la $t4,label_1047_v391
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_1047_v391
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v391,$zero,label_129_elseLabel
la $t5,label_1047_v391
lw $t5,0($t5)
beq $t5,$zero,label_129_elseLabel
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: la v397,label_33_a31
la $t5,label_33_a31
la $t0,label_1049_v397
sw $t5,0($t0)
# Original instruction: lb v398,0(v397)
la $t5,label_1049_v397
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1054_v398
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v399,$fp,8
addiu $t5,$fp,8
la $t0,label_1052_v399
sw $t5,0($t0)
# Original instruction: lb v400,0(v399)
la $t5,label_1052_v399
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1055_v400
sw $t4,0($t0)
# Original instruction: xor v396,v398,v400
la $t5,label_1054_v398
lw $t5,0($t5)
la $t4,label_1055_v400
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1059_v396
sw $t3,0($t0)
# Original instruction: sltiu v396,v396,1
la $t4,label_1059_v396
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_1059_v396
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v396,$zero,label_131_elseLabel
la $t5,label_1059_v396
lw $t5,0($t5)
beq $t5,$zero,label_131_elseLabel
# get address of variable
# get address of the variable
# Original instruction: addiu v401,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1063_v401
sw $t5,0($t0)
# get value to assign
# Original instruction: li v402,1
li $t5,1
la $t0,label_1062_v402
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sw v402,0(v401)
la $t5,label_1062_v402
lw $t5,0($t5)
la $t4,label_1063_v401
lw $t4,0($t4)
sw $t5,0($t4)
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
# get address of the variable
# Original instruction: la v404,label_31_a22
la $t5,label_31_a22
la $t0,label_1065_v404
sw $t5,0($t0)
# Original instruction: lb v405,0(v404)
la $t5,label_1065_v404
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1070_v405
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v406,$fp,8
addiu $t5,$fp,8
la $t0,label_1068_v406
sw $t5,0($t0)
# Original instruction: lb v407,0(v406)
la $t5,label_1068_v406
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1071_v407
sw $t4,0($t0)
# Original instruction: xor v403,v405,v407
la $t5,label_1070_v405
lw $t5,0($t5)
la $t4,label_1071_v407
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1075_v403
sw $t3,0($t0)
# Original instruction: sltiu v403,v403,1
la $t4,label_1075_v403
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_1075_v403
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v403,$zero,label_133_elseLabel
la $t5,label_1075_v403
lw $t5,0($t5)
beq $t5,$zero,label_133_elseLabel
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: la v409,label_35_a33
la $t5,label_35_a33
la $t0,label_1077_v409
sw $t5,0($t0)
# Original instruction: lb v410,0(v409)
la $t5,label_1077_v409
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1082_v410
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v411,$fp,8
addiu $t5,$fp,8
la $t0,label_1080_v411
sw $t5,0($t0)
# Original instruction: lb v412,0(v411)
la $t5,label_1080_v411
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1083_v412
sw $t4,0($t0)
# Original instruction: xor v408,v410,v412
la $t5,label_1082_v410
lw $t5,0($t5)
la $t4,label_1083_v412
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1087_v408
sw $t3,0($t0)
# Original instruction: sltiu v408,v408,1
la $t4,label_1087_v408
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_1087_v408
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v408,$zero,label_135_elseLabel
la $t5,label_1087_v408
lw $t5,0($t5)
beq $t5,$zero,label_135_elseLabel
# get address of variable
# get address of the variable
# Original instruction: addiu v413,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1091_v413
sw $t5,0($t0)
# get value to assign
# Original instruction: li v414,1
li $t5,1
la $t0,label_1090_v414
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sw v414,0(v413)
la $t5,label_1090_v414
lw $t5,0($t5)
la $t4,label_1091_v413
lw $t4,0($t4)
sw $t5,0($t4)
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
# get address of the variable
# Original instruction: la v416,label_28_a12
la $t5,label_28_a12
la $t0,label_1093_v416
sw $t5,0($t0)
# Original instruction: lb v417,0(v416)
la $t5,label_1093_v416
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1098_v417
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v418,$fp,8
addiu $t5,$fp,8
la $t0,label_1096_v418
sw $t5,0($t0)
# Original instruction: lb v419,0(v418)
la $t5,label_1096_v418
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1099_v419
sw $t4,0($t0)
# Original instruction: xor v415,v417,v419
la $t5,label_1098_v417
lw $t5,0($t5)
la $t4,label_1099_v419
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1103_v415
sw $t3,0($t0)
# Original instruction: sltiu v415,v415,1
la $t4,label_1103_v415
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_1103_v415
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v415,$zero,label_137_elseLabel
la $t5,label_1103_v415
lw $t5,0($t5)
beq $t5,$zero,label_137_elseLabel
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: la v421,label_29_a13
la $t5,label_29_a13
la $t0,label_1105_v421
sw $t5,0($t0)
# Original instruction: lb v422,0(v421)
la $t5,label_1105_v421
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1110_v422
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v423,$fp,8
addiu $t5,$fp,8
la $t0,label_1108_v423
sw $t5,0($t0)
# Original instruction: lb v424,0(v423)
la $t5,label_1108_v423
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1111_v424
sw $t4,0($t0)
# Original instruction: xor v420,v422,v424
la $t5,label_1110_v422
lw $t5,0($t5)
la $t4,label_1111_v424
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1115_v420
sw $t3,0($t0)
# Original instruction: sltiu v420,v420,1
la $t4,label_1115_v420
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_1115_v420
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v420,$zero,label_139_elseLabel
la $t5,label_1115_v420
lw $t5,0($t5)
beq $t5,$zero,label_139_elseLabel
# get address of variable
# get address of the variable
# Original instruction: addiu v425,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1119_v425
sw $t5,0($t0)
# get value to assign
# Original instruction: li v426,1
li $t5,1
la $t0,label_1118_v426
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sw v426,0(v425)
la $t5,label_1118_v426
lw $t5,0($t5)
la $t4,label_1119_v425
lw $t4,0($t4)
sw $t5,0($t4)
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
# get address of the variable
# Original instruction: la v428,label_28_a12
la $t5,label_28_a12
la $t0,label_1121_v428
sw $t5,0($t0)
# Original instruction: lb v429,0(v428)
la $t5,label_1121_v428
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1126_v429
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v430,$fp,8
addiu $t5,$fp,8
la $t0,label_1124_v430
sw $t5,0($t0)
# Original instruction: lb v431,0(v430)
la $t5,label_1124_v430
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1127_v431
sw $t4,0($t0)
# Original instruction: xor v427,v429,v431
la $t5,label_1126_v429
lw $t5,0($t5)
la $t4,label_1127_v431
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1131_v427
sw $t3,0($t0)
# Original instruction: sltiu v427,v427,1
la $t4,label_1131_v427
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_1131_v427
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v427,$zero,label_141_elseLabel
la $t5,label_1131_v427
lw $t5,0($t5)
beq $t5,$zero,label_141_elseLabel
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: la v433,label_31_a22
la $t5,label_31_a22
la $t0,label_1133_v433
sw $t5,0($t0)
# Original instruction: lb v434,0(v433)
la $t5,label_1133_v433
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1138_v434
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v435,$fp,8
addiu $t5,$fp,8
la $t0,label_1136_v435
sw $t5,0($t0)
# Original instruction: lb v436,0(v435)
la $t5,label_1136_v435
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1139_v436
sw $t4,0($t0)
# Original instruction: xor v432,v434,v436
la $t5,label_1138_v434
lw $t5,0($t5)
la $t4,label_1139_v436
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1143_v432
sw $t3,0($t0)
# Original instruction: sltiu v432,v432,1
la $t4,label_1143_v432
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_1143_v432
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v432,$zero,label_143_elseLabel
la $t5,label_1143_v432
lw $t5,0($t5)
beq $t5,$zero,label_143_elseLabel
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: la v438,label_34_a32
la $t5,label_34_a32
la $t0,label_1145_v438
sw $t5,0($t0)
# Original instruction: lb v439,0(v438)
la $t5,label_1145_v438
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1150_v439
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v440,$fp,8
addiu $t5,$fp,8
la $t0,label_1148_v440
sw $t5,0($t0)
# Original instruction: lb v441,0(v440)
la $t5,label_1148_v440
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1151_v441
sw $t4,0($t0)
# Original instruction: xor v437,v439,v441
la $t5,label_1150_v439
lw $t5,0($t5)
la $t4,label_1151_v441
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1155_v437
sw $t3,0($t0)
# Original instruction: sltiu v437,v437,1
la $t4,label_1155_v437
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_1155_v437
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v437,$zero,label_145_elseLabel
la $t5,label_1155_v437
lw $t5,0($t5)
beq $t5,$zero,label_145_elseLabel
# get address of variable
# get address of the variable
# Original instruction: addiu v442,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1159_v442
sw $t5,0($t0)
# get value to assign
# Original instruction: li v443,1
li $t5,1
la $t0,label_1158_v443
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sw v443,0(v442)
la $t5,label_1158_v443
lw $t5,0($t5)
la $t4,label_1159_v442
lw $t4,0($t4)
sw $t5,0($t4)
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
# get address of the variable
# Original instruction: la v445,label_29_a13
la $t5,label_29_a13
la $t0,label_1161_v445
sw $t5,0($t0)
# Original instruction: lb v446,0(v445)
la $t5,label_1161_v445
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1166_v446
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v447,$fp,8
addiu $t5,$fp,8
la $t0,label_1164_v447
sw $t5,0($t0)
# Original instruction: lb v448,0(v447)
la $t5,label_1164_v447
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1167_v448
sw $t4,0($t0)
# Original instruction: xor v444,v446,v448
la $t5,label_1166_v446
lw $t5,0($t5)
la $t4,label_1167_v448
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1171_v444
sw $t3,0($t0)
# Original instruction: sltiu v444,v444,1
la $t4,label_1171_v444
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_1171_v444
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v444,$zero,label_147_elseLabel
la $t5,label_1171_v444
lw $t5,0($t5)
beq $t5,$zero,label_147_elseLabel
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: la v450,label_32_a23
la $t5,label_32_a23
la $t0,label_1173_v450
sw $t5,0($t0)
# Original instruction: lb v451,0(v450)
la $t5,label_1173_v450
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1178_v451
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v452,$fp,8
addiu $t5,$fp,8
la $t0,label_1176_v452
sw $t5,0($t0)
# Original instruction: lb v453,0(v452)
la $t5,label_1176_v452
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1179_v453
sw $t4,0($t0)
# Original instruction: xor v449,v451,v453
la $t5,label_1178_v451
lw $t5,0($t5)
la $t4,label_1179_v453
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1183_v449
sw $t3,0($t0)
# Original instruction: sltiu v449,v449,1
la $t4,label_1183_v449
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_1183_v449
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v449,$zero,label_149_elseLabel
la $t5,label_1183_v449
lw $t5,0($t5)
beq $t5,$zero,label_149_elseLabel
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: la v455,label_35_a33
la $t5,label_35_a33
la $t0,label_1185_v455
sw $t5,0($t0)
# Original instruction: lb v456,0(v455)
la $t5,label_1185_v455
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1190_v456
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v457,$fp,8
addiu $t5,$fp,8
la $t0,label_1188_v457
sw $t5,0($t0)
# Original instruction: lb v458,0(v457)
la $t5,label_1188_v457
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1191_v458
sw $t4,0($t0)
# Original instruction: xor v454,v456,v458
la $t5,label_1190_v456
lw $t5,0($t5)
la $t4,label_1191_v458
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1195_v454
sw $t3,0($t0)
# Original instruction: sltiu v454,v454,1
la $t4,label_1195_v454
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_1195_v454
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v454,$zero,label_151_elseLabel
la $t5,label_1195_v454
lw $t5,0($t5)
beq $t5,$zero,label_151_elseLabel
# get address of variable
# get address of the variable
# Original instruction: addiu v459,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1199_v459
sw $t5,0($t0)
# get value to assign
# Original instruction: li v460,1
li $t5,1
la $t0,label_1198_v460
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sw v460,0(v459)
la $t5,label_1198_v460
lw $t5,0($t5)
la $t4,label_1199_v459
lw $t4,0($t4)
sw $t5,0($t4)
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
# get address of the variable
# Original instruction: la v462,label_31_a22
la $t5,label_31_a22
la $t0,label_1201_v462
sw $t5,0($t0)
# Original instruction: lb v463,0(v462)
la $t5,label_1201_v462
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1206_v463
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v464,$fp,8
addiu $t5,$fp,8
la $t0,label_1204_v464
sw $t5,0($t0)
# Original instruction: lb v465,0(v464)
la $t5,label_1204_v464
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1207_v465
sw $t4,0($t0)
# Original instruction: xor v461,v463,v465
la $t5,label_1206_v463
lw $t5,0($t5)
la $t4,label_1207_v465
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1211_v461
sw $t3,0($t0)
# Original instruction: sltiu v461,v461,1
la $t4,label_1211_v461
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_1211_v461
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v461,$zero,label_153_elseLabel
la $t5,label_1211_v461
lw $t5,0($t5)
beq $t5,$zero,label_153_elseLabel
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: la v467,label_33_a31
la $t5,label_33_a31
la $t0,label_1213_v467
sw $t5,0($t0)
# Original instruction: lb v468,0(v467)
la $t5,label_1213_v467
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1218_v468
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v469,$fp,8
addiu $t5,$fp,8
la $t0,label_1216_v469
sw $t5,0($t0)
# Original instruction: lb v470,0(v469)
la $t5,label_1216_v469
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1219_v470
sw $t4,0($t0)
# Original instruction: xor v466,v468,v470
la $t5,label_1218_v468
lw $t5,0($t5)
la $t4,label_1219_v470
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1223_v466
sw $t3,0($t0)
# Original instruction: sltiu v466,v466,1
la $t4,label_1223_v466
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_1223_v466
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v466,$zero,label_155_elseLabel
la $t5,label_1223_v466
lw $t5,0($t5)
beq $t5,$zero,label_155_elseLabel
# get address of variable
# get address of the variable
# Original instruction: addiu v471,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1227_v471
sw $t5,0($t0)
# get value to assign
# Original instruction: li v472,1
li $t5,1
la $t0,label_1226_v472
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sw v472,0(v471)
la $t5,label_1226_v472
lw $t5,0($t5)
la $t4,label_1227_v471
lw $t4,0($t4)
sw $t5,0($t4)
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
# get address of the variable
# Original instruction: la v474,label_30_a21
la $t5,label_30_a21
la $t0,label_1229_v474
sw $t5,0($t0)
# Original instruction: lb v475,0(v474)
la $t5,label_1229_v474
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1234_v475
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v476,$fp,8
addiu $t5,$fp,8
la $t0,label_1232_v476
sw $t5,0($t0)
# Original instruction: lb v477,0(v476)
la $t5,label_1232_v476
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1235_v477
sw $t4,0($t0)
# Original instruction: xor v473,v475,v477
la $t5,label_1234_v475
lw $t5,0($t5)
la $t4,label_1235_v477
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1239_v473
sw $t3,0($t0)
# Original instruction: sltiu v473,v473,1
la $t4,label_1239_v473
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_1239_v473
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v473,$zero,label_157_elseLabel
la $t5,label_1239_v473
lw $t5,0($t5)
beq $t5,$zero,label_157_elseLabel
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: la v479,label_31_a22
la $t5,label_31_a22
la $t0,label_1241_v479
sw $t5,0($t0)
# Original instruction: lb v480,0(v479)
la $t5,label_1241_v479
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1246_v480
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v481,$fp,8
addiu $t5,$fp,8
la $t0,label_1244_v481
sw $t5,0($t0)
# Original instruction: lb v482,0(v481)
la $t5,label_1244_v481
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1247_v482
sw $t4,0($t0)
# Original instruction: xor v478,v480,v482
la $t5,label_1246_v480
lw $t5,0($t5)
la $t4,label_1247_v482
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1251_v478
sw $t3,0($t0)
# Original instruction: sltiu v478,v478,1
la $t4,label_1251_v478
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_1251_v478
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v478,$zero,label_159_elseLabel
la $t5,label_1251_v478
lw $t5,0($t5)
beq $t5,$zero,label_159_elseLabel
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: la v484,label_32_a23
la $t5,label_32_a23
la $t0,label_1253_v484
sw $t5,0($t0)
# Original instruction: lb v485,0(v484)
la $t5,label_1253_v484
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1258_v485
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v486,$fp,8
addiu $t5,$fp,8
la $t0,label_1256_v486
sw $t5,0($t0)
# Original instruction: lb v487,0(v486)
la $t5,label_1256_v486
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1259_v487
sw $t4,0($t0)
# Original instruction: xor v483,v485,v487
la $t5,label_1258_v485
lw $t5,0($t5)
la $t4,label_1259_v487
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1263_v483
sw $t3,0($t0)
# Original instruction: sltiu v483,v483,1
la $t4,label_1263_v483
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_1263_v483
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v483,$zero,label_161_elseLabel
la $t5,label_1263_v483
lw $t5,0($t5)
beq $t5,$zero,label_161_elseLabel
# get address of variable
# get address of the variable
# Original instruction: addiu v488,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1267_v488
sw $t5,0($t0)
# get value to assign
# Original instruction: li v489,1
li $t5,1
la $t0,label_1266_v489
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sw v489,0(v488)
la $t5,label_1266_v489
lw $t5,0($t5)
la $t4,label_1267_v488
lw $t4,0($t4)
sw $t5,0($t4)
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
# get address of the variable
# Original instruction: la v491,label_33_a31
la $t5,label_33_a31
la $t0,label_1269_v491
sw $t5,0($t0)
# Original instruction: lb v492,0(v491)
la $t5,label_1269_v491
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1274_v492
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v493,$fp,8
addiu $t5,$fp,8
la $t0,label_1272_v493
sw $t5,0($t0)
# Original instruction: lb v494,0(v493)
la $t5,label_1272_v493
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1275_v494
sw $t4,0($t0)
# Original instruction: xor v490,v492,v494
la $t5,label_1274_v492
lw $t5,0($t5)
la $t4,label_1275_v494
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1279_v490
sw $t3,0($t0)
# Original instruction: sltiu v490,v490,1
la $t4,label_1279_v490
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_1279_v490
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v490,$zero,label_163_elseLabel
la $t5,label_1279_v490
lw $t5,0($t5)
beq $t5,$zero,label_163_elseLabel
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: la v496,label_34_a32
la $t5,label_34_a32
la $t0,label_1281_v496
sw $t5,0($t0)
# Original instruction: lb v497,0(v496)
la $t5,label_1281_v496
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1286_v497
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v498,$fp,8
addiu $t5,$fp,8
la $t0,label_1284_v498
sw $t5,0($t0)
# Original instruction: lb v499,0(v498)
la $t5,label_1284_v498
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1287_v499
sw $t4,0($t0)
# Original instruction: xor v495,v497,v499
la $t5,label_1286_v497
lw $t5,0($t5)
la $t4,label_1287_v499
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1291_v495
sw $t3,0($t0)
# Original instruction: sltiu v495,v495,1
la $t4,label_1291_v495
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_1291_v495
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v495,$zero,label_165_elseLabel
la $t5,label_1291_v495
lw $t5,0($t5)
beq $t5,$zero,label_165_elseLabel
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: la v501,label_35_a33
la $t5,label_35_a33
la $t0,label_1293_v501
sw $t5,0($t0)
# Original instruction: lb v502,0(v501)
la $t5,label_1293_v501
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1298_v502
sw $t4,0($t0)
# compute the right operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v503,$fp,8
addiu $t5,$fp,8
la $t0,label_1296_v503
sw $t5,0($t0)
# Original instruction: lb v504,0(v503)
la $t5,label_1296_v503
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1299_v504
sw $t4,0($t0)
# Original instruction: xor v500,v502,v504
la $t5,label_1298_v502
lw $t5,0($t5)
la $t4,label_1299_v504
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1303_v500
sw $t3,0($t0)
# Original instruction: sltiu v500,v500,1
la $t4,label_1303_v500
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_1303_v500
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v500,$zero,label_167_elseLabel
la $t5,label_1303_v500
lw $t5,0($t5)
beq $t5,$zero,label_167_elseLabel
# get address of variable
# get address of the variable
# Original instruction: addiu v505,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1307_v505
sw $t5,0($t0)
# get value to assign
# Original instruction: li v506,1
li $t5,1
la $t0,label_1306_v506
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sw v506,0(v505)
la $t5,label_1306_v506
lw $t5,0($t5)
la $t4,label_1307_v505
lw $t4,0($t4)
sw $t5,0($t4)
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
# get address of the variable
# Original instruction: addiu v507,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1309_v507
sw $t5,0($t0)
# Original instruction: lw v508,0(v507)
la $t5,label_1309_v507
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_1311_v508
sw $t4,0($t0)
# copying the return value into the previous frame
# Original instruction: sw v508,4($fp)
la $t5,label_1311_v508
lw $t5,0($t5)
sw $t5,4($fp)
# jumping to the return label
# Original instruction: j label_126_return
j label_126_return
# return label of the function won
label_126_return:
# popping all used registers from the stack
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1105_v421
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1035_v386
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1213_v467
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1195_v454
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1284_v498
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1253_v484
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1201_v462
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1266_v489
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1098_v417
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1080_v411
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1150_v439
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1151_v441
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1065_v404
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1211_v461
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1309_v507
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1059_v396
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1199_v459
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1229_v474
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1070_v405
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1087_v408
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1247_v482
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1227_v471
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1023_v384
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1143_v432
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1118_v426
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1299_v504
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1244_v481
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1176_v452
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1164_v447
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1031_v390
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1274_v492
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1287_v499
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1198_v460
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1090_v414
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1207_v465
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1298_v502
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1267_v488
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1071_v407
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1296_v503
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1246_v480
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1126_v429
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1219_v470
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1068_v406
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1082_v410
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1232_v476
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1052_v399
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1025_v387
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1173_v450
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1263_v483
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1216_v469
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1303_v500
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1030_v388
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1099_v419
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1055_v400
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1307_v505
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1131_v427
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1171_v444
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1306_v506
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1185_v455
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1062_v402
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1183_v449
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1239_v473
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1108_v423
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1166_v446
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1272_v493
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1119_v425
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1077_v409
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1241_v479
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1121_v428
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1075_v403
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1158_v443
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1155_v437
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1259_v487
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1204_v464
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1191_v458
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1269_v491
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1093_v416
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1063_v401
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1251_v478
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1311_v508
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1133_v433
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1042_v393
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1083_v412
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1111_v424
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1127_v431
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1138_v434
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1279_v490
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1159_v442
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1281_v496
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1256_v486
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1054_v398
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1223_v466
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1022_v385
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1043_v395
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1091_v413
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1275_v494
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1161_v445
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1047_v391
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1234_v475
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1188_v457
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1136_v435
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1206_v463
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1218_v468
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1291_v495
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1226_v472
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1145_v438
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1110_v422
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1178_v451
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1124_v430
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1040_v394
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1293_v501
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1258_v485
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1049_v397
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1179_v453
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1139_v436
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1148_v440
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1028_v389
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1096_v418
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1235_v477
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1103_v415
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1115_v420
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1286_v497
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1167_v448
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1190_v456
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_1037_v392
sw $t0,0($t1)
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

.data
# Allocated labels for virtual registers
label_1314_v510:
.space 4
label_1393_v553:
.space 4
label_1375_v541:
.space 4
label_1391_v550:
.space 4
label_1419_v563:
.space 4
label_1334_v524:
.space 4
label_1345_v527:
.space 4
label_1367_v539:
.space 4
label_1372_v544:
.space 4
label_1415_v559:
.space 4
label_1352_v534:
.space 4
label_1325_v517:
.space 4
label_1338_v523:
.space 4
label_1397_v555:
.space 4
label_1407_v560:
.space 4
label_1339_v522:
.space 4
label_1343_v529:
.space 4
label_1366_v540:
.space 4
label_1377_v546:
.space 4
label_1341_v528:
.space 4
label_1331_v521:
.space 4
label_1347_v531:
.space 4
label_1319_v511:
.space 4
label_1353_v533:
.space 4
label_1385_v545:
.space 4
label_1390_v551:
.space 4
label_1405_v556:
.space 4
label_1357_v537:
.space 4
label_1318_v512:
.space 4
label_1349_v532:
.space 4
label_1404_v557:
.space 4
label_1370_v543:
.space 4
label_1410_v561:
.space 4
label_1380_v547:
.space 4
label_1396_v554:
.space 4
label_1418_v564:
.space 4
label_1329_v520:
.space 4
label_1336_v525:
.space 4
label_1322_v516:
.space 4
label_1356_v536:
.space 4
label_1381_v548:
.space 4
label_1411_v562:
.space 4
label_1327_v518:
.space 4
label_1315_v509:
.space 4
label_1401_v552:
.space 4
label_1387_v549:
.space 4
label_1363_v538:
.space 4
label_1374_v542:
.space 4
label_1323_v515:
.space 4
label_1361_v535:
.space 4

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
# get address of the variable
# Original instruction: la v509,label_36_empty
la $t5,label_36_empty
la $t0,label_1315_v509
sw $t5,0($t0)
# get value to assign
# Original instruction: li v510,32
li $t5,32
la $t0,label_1314_v510
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sb v510,0(v509)
la $t5,label_1314_v510
lw $t5,0($t5)
la $t4,label_1315_v509
lw $t4,0($t4)
sb $t5,0($t4)
# get address of variable
# get address of the variable
# Original instruction: addiu v511,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1319_v511
sw $t5,0($t0)
# get value to assign
# Original instruction: li v512,1
li $t5,1
la $t0,label_1318_v512
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sw v512,0(v511)
la $t5,label_1318_v512
lw $t5,0($t5)
la $t4,label_1319_v511
lw $t4,0($t4)
sw $t5,0($t4)
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
# get address of the variable
# Original instruction: addiu v515,$fp,-12
addiu $t5,$fp,-12
la $t0,label_1323_v515
sw $t5,0($t0)
# get value to assign
# Original instruction: li v516,1
li $t5,1
la $t0,label_1322_v516
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sw v516,0(v515)
la $t5,label_1322_v516
lw $t5,0($t5)
la $t4,label_1323_v515
lw $t4,0($t4)
sw $t5,0($t4)
label_170_loop:
# get address of the variable
# get address of the variable
# Original instruction: addiu v517,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1325_v517
sw $t5,0($t0)
# Original instruction: lw v518,0(v517)
la $t5,label_1325_v517
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_1327_v518
sw $t4,0($t0)
# check if condition is true, branch to end if false
# Original instruction: beq v518,$zero,label_171_endLabel
la $t5,label_1327_v518
lw $t5,0($t5)
beq $t5,$zero,label_171_endLabel
# move sp by the to allocate space for the args and return value
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# move sp onto the new frame
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# copy args onto the stack
# get address of the variable
# get address of the variable
# Original instruction: addiu v520,$fp,-12
addiu $t5,$fp,-12
la $t0,label_1329_v520
sw $t5,0($t0)
# Original instruction: lw v521,0(v520)
la $t5,label_1329_v520
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_1331_v521
sw $t4,0($t0)
# Original instruction: sw v521,4($sp)
la $t5,label_1331_v521
lw $t5,0($t5)
sw $t5,4($sp)
# Original instruction: jal label_117_selectmove
jal label_117_selectmove
# read return value from the stack
# move sp to deallocate the space of the args and return value
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# get address of variable
# get address of the variable
# Original instruction: addiu v522,$fp,-16
addiu $t5,$fp,-16
la $t0,label_1339_v522
sw $t5,0($t0)
# get value to assign
# move sp by the to allocate space for the args and return value
# Original instruction: addiu $sp,$sp,-8
addiu $sp,$sp,-8
# move sp onto the new frame
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# copy args onto the stack
# get address of the variable
# get address of the variable
# Original instruction: addiu v524,$fp,-12
addiu $t5,$fp,-12
la $t0,label_1334_v524
sw $t5,0($t0)
# Original instruction: lw v525,0(v524)
la $t5,label_1334_v524
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_1336_v525
sw $t4,0($t0)
# Original instruction: sw v525,8($sp)
la $t5,label_1336_v525
lw $t5,0($t5)
sw $t5,8($sp)
# Original instruction: jal label_113_get_mark
jal label_113_get_mark
# read return value from the stack
# Original instruction: lb v523,0($sp)
lb $t5,0($sp)
la $t0,label_1338_v523
sw $t5,0($t0)
# move sp to deallocate the space of the args and return value
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# assign value to variable address
# Original instruction: sb v523,0(v522)
la $t5,label_1338_v523
lw $t5,0($t5)
la $t4,label_1339_v522
lw $t4,0($t4)
sb $t5,0($t4)
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
# get address of the variable
# Original instruction: addiu v528,$fp,-16
addiu $t5,$fp,-16
la $t0,label_1341_v528
sw $t5,0($t0)
# Original instruction: lb v529,0(v528)
la $t5,label_1341_v528
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1343_v529
sw $t4,0($t0)
# Original instruction: sb v529,8($sp)
la $t5,label_1343_v529
lw $t5,0($t5)
sb $t5,8($sp)
# Original instruction: jal label_125_won
jal label_125_won
# read return value from the stack
# Original instruction: lw v527,0($sp)
lw $t5,0($sp)
la $t0,label_1345_v527
sw $t5,0($t0)
# move sp to deallocate the space of the args and return value
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# check if condition is true, branch to else if false
# Original instruction: beq v527,$zero,label_172_elseLabel
la $t5,label_1345_v527
lw $t5,0($t5)
beq $t5,$zero,label_172_elseLabel
# move sp by the to allocate space for the args and return value
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# move sp onto the new frame
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# copy args onto the stack
# get address of the variable
# get address of the variable
# Original instruction: addiu v531,$fp,-12
addiu $t5,$fp,-12
la $t0,label_1347_v531
sw $t5,0($t0)
# Original instruction: lw v532,0(v531)
la $t5,label_1347_v531
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_1349_v532
sw $t4,0($t0)
# Original instruction: sw v532,4($sp)
la $t5,label_1349_v532
lw $t5,0($t5)
sw $t5,4($sp)
# Original instruction: jal label_107_printWinner
jal label_107_printWinner
# read return value from the stack
# move sp to deallocate the space of the args and return value
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# get address of variable
# get address of the variable
# Original instruction: addiu v533,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1353_v533
sw $t5,0($t0)
# get value to assign
# Original instruction: li v534,0
li $t5,0
la $t0,label_1352_v534
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sw v534,0(v533)
la $t5,label_1352_v534
lw $t5,0($t5)
la $t4,label_1353_v533
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: b label_173_endLabel
b label_173_endLabel
# else branch
label_172_elseLabel:
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
lw $t5,0($sp)
la $t0,label_1356_v536
sw $t5,0($t0)
# move sp to deallocate the space of the args and return value
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# compute the right operand
# Original instruction: li v537,1
li $t5,1
la $t0,label_1357_v537
sw $t5,0($t0)
# Original instruction: xor v535,v536,v537
la $t5,label_1356_v536
lw $t5,0($t5)
la $t4,label_1357_v537
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1361_v535
sw $t3,0($t0)
# Original instruction: sltiu v535,v535,1
la $t4,label_1361_v535
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_1361_v535
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v535,$zero,label_174_elseLabel
la $t5,label_1361_v535
lw $t5,0($t5)
beq $t5,$zero,label_174_elseLabel
# Original instruction: la v538,label_25_
la $t5,label_25_
la $t0,label_1363_v538
sw $t5,0($t0)
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v538
la $t5,label_1363_v538
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# get address of variable
# get address of the variable
# Original instruction: addiu v539,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1367_v539
sw $t5,0($t0)
# get value to assign
# Original instruction: li v540,0
li $t5,0
la $t0,label_1366_v540
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sw v540,0(v539)
la $t5,label_1366_v540
lw $t5,0($t5)
la $t4,label_1367_v539
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: b label_175_endLabel
b label_175_endLabel
# else branch
label_174_elseLabel:
# get address of variable
# get address of the variable
# Original instruction: addiu v541,$fp,-12
addiu $t5,$fp,-12
la $t0,label_1375_v541
sw $t5,0($t0)
# get value to assign
# move sp by the to allocate space for the args and return value
# Original instruction: addiu $sp,$sp,-8
addiu $sp,$sp,-8
# move sp onto the new frame
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# copy args onto the stack
# get address of the variable
# get address of the variable
# Original instruction: addiu v543,$fp,-12
addiu $t5,$fp,-12
la $t0,label_1370_v543
sw $t5,0($t0)
# Original instruction: lw v544,0(v543)
la $t5,label_1370_v543
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_1372_v544
sw $t4,0($t0)
# Original instruction: sw v544,8($sp)
la $t5,label_1372_v544
lw $t5,0($t5)
sw $t5,8($sp)
# Original instruction: jal label_109_switchPlayer
jal label_109_switchPlayer
# read return value from the stack
# Original instruction: lw v542,0($sp)
lw $t5,0($sp)
la $t0,label_1374_v542
sw $t5,0($t0)
# move sp to deallocate the space of the args and return value
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# assign value to variable address
# Original instruction: sw v542,0(v541)
la $t5,label_1374_v542
lw $t5,0($t5)
la $t4,label_1375_v541
lw $t4,0($t4)
sw $t5,0($t4)
label_175_endLabel:
label_173_endLabel:
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v546,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1377_v546
sw $t5,0($t0)
# Original instruction: lw v547,0(v546)
la $t5,label_1377_v546
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_1380_v547
sw $t4,0($t0)
# compute the right operand
# Original instruction: li v548,0
li $t5,0
la $t0,label_1381_v548
sw $t5,0($t0)
# Original instruction: xor v545,v547,v548
la $t5,label_1380_v547
lw $t5,0($t5)
la $t4,label_1381_v548
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1385_v545
sw $t3,0($t0)
# Original instruction: sltiu v545,v545,1
la $t4,label_1385_v545
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_1385_v545
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v545,$zero,label_176_elseLabel
la $t5,label_1385_v545
lw $t5,0($t5)
beq $t5,$zero,label_176_elseLabel
# Original instruction: la v549,label_26_
la $t5,label_26_
la $t0,label_1387_v549
sw $t5,0($t0)
# Original instruction: li $v0,4
li $v0,4
# Original instruction: add $a0,$zero,v549
la $t5,label_1387_v549
lw $t5,0($t5)
add $a0,$zero,$t5
# Original instruction: syscall
syscall
# get address of variable
# get address of the variable
# Original instruction: addiu v550,$fp,-20
addiu $t5,$fp,-20
la $t0,label_1391_v550
sw $t5,0($t0)
# get value to assign
# Original instruction: li $v0,12
li $v0,12
# Original instruction: syscall
syscall
# Original instruction: add v551,$v0,$zero
add $t5,$v0,$zero
la $t0,label_1390_v551
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sb v551,0(v550)
la $t5,label_1390_v551
lw $t5,0($t5)
la $t4,label_1391_v550
lw $t4,0($t4)
sb $t5,0($t4)
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v553,$fp,-20
addiu $t5,$fp,-20
la $t0,label_1393_v553
sw $t5,0($t0)
# Original instruction: lb v554,0(v553)
la $t5,label_1393_v553
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1396_v554
sw $t4,0($t0)
# compute the right operand
# Original instruction: li v555,121
li $t5,121
la $t0,label_1397_v555
sw $t5,0($t0)
# Original instruction: xor v552,v554,v555
la $t5,label_1396_v554
lw $t5,0($t5)
la $t4,label_1397_v555
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1401_v552
sw $t3,0($t0)
# Original instruction: sltiu v552,v552,1
la $t4,label_1401_v552
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_1401_v552
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v552,$zero,label_178_elseLabel
la $t5,label_1401_v552
lw $t5,0($t5)
beq $t5,$zero,label_178_elseLabel
# get address of variable
# get address of the variable
# Original instruction: addiu v556,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1405_v556
sw $t5,0($t0)
# get value to assign
# Original instruction: li v557,1
li $t5,1
la $t0,label_1404_v557
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sw v557,0(v556)
la $t5,label_1404_v557
lw $t5,0($t5)
la $t4,label_1405_v556
lw $t4,0($t4)
sw $t5,0($t4)
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
# Original instruction: b label_179_endLabel
b label_179_endLabel
# else branch
label_178_elseLabel:
# compute the left operand
# get address of the variable
# get address of the variable
# Original instruction: addiu v560,$fp,-20
addiu $t5,$fp,-20
la $t0,label_1407_v560
sw $t5,0($t0)
# Original instruction: lb v561,0(v560)
la $t5,label_1407_v560
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_1410_v561
sw $t4,0($t0)
# compute the right operand
# Original instruction: li v562,89
li $t5,89
la $t0,label_1411_v562
sw $t5,0($t0)
# Original instruction: xor v559,v561,v562
la $t5,label_1410_v561
lw $t5,0($t5)
la $t4,label_1411_v562
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_1415_v559
sw $t3,0($t0)
# Original instruction: sltiu v559,v559,1
la $t4,label_1415_v559
lw $t4,0($t4)
sltiu $t4,$t4,1
la $t0,label_1415_v559
sw $t4,0($t0)
# check if condition is true, branch to else if false
# Original instruction: beq v559,$zero,label_180_elseLabel
la $t5,label_1415_v559
lw $t5,0($t5)
beq $t5,$zero,label_180_elseLabel
# get address of variable
# get address of the variable
# Original instruction: addiu v563,$fp,-8
addiu $t5,$fp,-8
la $t0,label_1419_v563
sw $t5,0($t0)
# get value to assign
# Original instruction: li v564,1
li $t5,1
la $t0,label_1418_v564
sw $t5,0($t0)
# assign value to variable address
# Original instruction: sw v564,0(v563)
la $t5,label_1418_v564
lw $t5,0($t5)
la $t4,label_1419_v563
lw $t4,0($t4)
sw $t5,0($t4)
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
# Original instruction: b label_181_endLabel
b label_181_endLabel
# else branch
label_180_elseLabel:
label_181_endLabel:
label_179_endLabel:
# Original instruction: b label_177_endLabel
b label_177_endLabel
# else branch
label_176_elseLabel:
label_177_endLabel:
# branch to start of loop to check condition
# Original instruction: b label_170_loop
b label_170_loop
label_171_endLabel:
# exiting the program
# Original instruction: li $v0,10
li $v0,10
# Original instruction: syscall
syscall

