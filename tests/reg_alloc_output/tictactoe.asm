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
sw $fp,0($sp)
# setting the new fp to the value of the sp
addu $fp,$sp,$zero
# moving sp by a word to reserve space for the return address
addiu $sp,$sp,-4
# storing the return address in the frame
sw $ra,0($sp)
# moving sp by the size of the local variables
addiu $sp,$sp,0
# pushing all used registers onto the stack
pushRegisters
# get address of variable
la v0,label_27_a11
# get value to assign
# get address of the variable
# get address of variable
la v1,label_36_empty
lb v2,0(v1)
# assign value to variable address
sb v2,0(v0)
# get address of variable
la v3,label_28_a12
# get value to assign
# get address of the variable
# get address of variable
la v4,label_36_empty
lb v5,0(v4)
# assign value to variable address
sb v5,0(v3)
# get address of variable
la v6,label_29_a13
# get value to assign
# get address of the variable
# get address of variable
la v7,label_36_empty
lb v8,0(v7)
# assign value to variable address
sb v8,0(v6)
# get address of variable
la v9,label_30_a21
# get value to assign
# get address of the variable
# get address of variable
la v10,label_36_empty
lb v11,0(v10)
# assign value to variable address
sb v11,0(v9)
# get address of variable
la v12,label_31_a22
# get value to assign
# get address of the variable
# get address of variable
la v13,label_36_empty
lb v14,0(v13)
# assign value to variable address
sb v14,0(v12)
# get address of variable
la v15,label_32_a23
# get value to assign
# get address of the variable
# get address of variable
la v16,label_36_empty
lb v17,0(v16)
# assign value to variable address
sb v17,0(v15)
# get address of variable
la v18,label_33_a31
# get value to assign
# get address of the variable
# get address of variable
la v19,label_36_empty
lb v20,0(v19)
# assign value to variable address
sb v20,0(v18)
# get address of variable
la v21,label_34_a32
# get value to assign
# get address of the variable
# get address of variable
la v22,label_36_empty
lb v23,0(v22)
# assign value to variable address
sb v23,0(v21)
# get address of variable
la v24,label_35_a33
# get value to assign
# get address of the variable
# get address of variable
la v25,label_36_empty
lb v26,0(v25)
# assign value to variable address
sb v26,0(v24)
# return label of the function reset
label_38_return:
# popping all used registers from the stack
popRegisters
# setting the sp to the top of the old frame
addiu $sp,$fp,4
# load the return address from the stack
lw $ra,-4($fp)
# load the old frame pointer into fp
lw $fp,0($fp)
# jump to the return address
jr $ra

.text
label_39_full:
# storing the old fp value at the start of the frame
sw $fp,0($sp)
# setting the new fp to the value of the sp
addu $fp,$sp,$zero
# moving sp by a word to reserve space for the return address
addiu $sp,$sp,-4
# storing the return address in the frame
sw $ra,0($sp)
# moving sp by the size of the local variables
addiu $sp,$sp,-4
# pushing all used registers onto the stack
pushRegisters
# get address of variable
addiu v27,$fp,-8
# get value to assign
li v28,0
# assign value to variable address
sw v28,0(v27)
# compute the left operand
# get address of the variable
# get address of variable
la v30,label_27_a11
lb v31,0(v30)
# compute the right operand
# get address of the variable
# get address of variable
la v32,label_36_empty
lb v33,0(v32)
xor v29,v31,v33
sltu v29,$zero,v29
# check if condition is true, branch to else if false
beq v29,$zero,label_41_elseLabel
# get address of variable
addiu v34,$fp,-8
# get value to assign
# compute the left operand
# get address of the variable
# get address of variable
addiu v36,$fp,-8
lw v37,0(v36)
# compute the right operand
li v38,1
add v35,v37,v38
# assign value to variable address
sw v35,0(v34)
b label_42_endLabel
# else branch
label_41_elseLabel:
label_42_endLabel:
# compute the left operand
# get address of the variable
# get address of variable
la v40,label_30_a21
lb v41,0(v40)
# compute the right operand
# get address of the variable
# get address of variable
la v42,label_36_empty
lb v43,0(v42)
xor v39,v41,v43
sltu v39,$zero,v39
# check if condition is true, branch to else if false
beq v39,$zero,label_43_elseLabel
# get address of variable
addiu v44,$fp,-8
# get value to assign
# compute the left operand
# get address of the variable
# get address of variable
addiu v46,$fp,-8
lw v47,0(v46)
# compute the right operand
li v48,1
add v45,v47,v48
# assign value to variable address
sw v45,0(v44)
b label_44_endLabel
# else branch
label_43_elseLabel:
label_44_endLabel:
# compute the left operand
# get address of the variable
# get address of variable
la v50,label_33_a31
lb v51,0(v50)
# compute the right operand
# get address of the variable
# get address of variable
la v52,label_36_empty
lb v53,0(v52)
xor v49,v51,v53
sltu v49,$zero,v49
# check if condition is true, branch to else if false
beq v49,$zero,label_45_elseLabel
# get address of variable
addiu v54,$fp,-8
# get value to assign
# compute the left operand
# get address of the variable
# get address of variable
addiu v56,$fp,-8
lw v57,0(v56)
# compute the right operand
li v58,1
add v55,v57,v58
# assign value to variable address
sw v55,0(v54)
b label_46_endLabel
# else branch
label_45_elseLabel:
label_46_endLabel:
# compute the left operand
# get address of the variable
# get address of variable
la v60,label_28_a12
lb v61,0(v60)
# compute the right operand
# get address of the variable
# get address of variable
la v62,label_36_empty
lb v63,0(v62)
xor v59,v61,v63
sltu v59,$zero,v59
# check if condition is true, branch to else if false
beq v59,$zero,label_47_elseLabel
# get address of variable
addiu v64,$fp,-8
# get value to assign
# compute the left operand
# get address of the variable
# get address of variable
addiu v66,$fp,-8
lw v67,0(v66)
# compute the right operand
li v68,1
add v65,v67,v68
# assign value to variable address
sw v65,0(v64)
b label_48_endLabel
# else branch
label_47_elseLabel:
label_48_endLabel:
# compute the left operand
# get address of the variable
# get address of variable
la v70,label_31_a22
lb v71,0(v70)
# compute the right operand
# get address of the variable
# get address of variable
la v72,label_36_empty
lb v73,0(v72)
xor v69,v71,v73
sltu v69,$zero,v69
# check if condition is true, branch to else if false
beq v69,$zero,label_49_elseLabel
# get address of variable
addiu v74,$fp,-8
# get value to assign
# compute the left operand
# get address of the variable
# get address of variable
addiu v76,$fp,-8
lw v77,0(v76)
# compute the right operand
li v78,1
add v75,v77,v78
# assign value to variable address
sw v75,0(v74)
b label_50_endLabel
# else branch
label_49_elseLabel:
label_50_endLabel:
# compute the left operand
# get address of the variable
# get address of variable
la v80,label_34_a32
lb v81,0(v80)
# compute the right operand
# get address of the variable
# get address of variable
la v82,label_36_empty
lb v83,0(v82)
xor v79,v81,v83
sltu v79,$zero,v79
# check if condition is true, branch to else if false
beq v79,$zero,label_51_elseLabel
# get address of variable
addiu v84,$fp,-8
# get value to assign
# compute the left operand
# get address of the variable
# get address of variable
addiu v86,$fp,-8
lw v87,0(v86)
# compute the right operand
li v88,1
add v85,v87,v88
# assign value to variable address
sw v85,0(v84)
b label_52_endLabel
# else branch
label_51_elseLabel:
label_52_endLabel:
# compute the left operand
# get address of the variable
# get address of variable
la v90,label_29_a13
lb v91,0(v90)
# compute the right operand
# get address of the variable
# get address of variable
la v92,label_36_empty
lb v93,0(v92)
xor v89,v91,v93
sltu v89,$zero,v89
# check if condition is true, branch to else if false
beq v89,$zero,label_53_elseLabel
# get address of variable
addiu v94,$fp,-8
# get value to assign
# compute the left operand
# get address of the variable
# get address of variable
addiu v96,$fp,-8
lw v97,0(v96)
# compute the right operand
li v98,1
add v95,v97,v98
# assign value to variable address
sw v95,0(v94)
b label_54_endLabel
# else branch
label_53_elseLabel:
label_54_endLabel:
# compute the left operand
# get address of the variable
# get address of variable
la v100,label_32_a23
lb v101,0(v100)
# compute the right operand
# get address of the variable
# get address of variable
la v102,label_36_empty
lb v103,0(v102)
xor v99,v101,v103
sltu v99,$zero,v99
# check if condition is true, branch to else if false
beq v99,$zero,label_55_elseLabel
# get address of variable
addiu v104,$fp,-8
# get value to assign
# compute the left operand
# get address of the variable
# get address of variable
addiu v106,$fp,-8
lw v107,0(v106)
# compute the right operand
li v108,1
add v105,v107,v108
# assign value to variable address
sw v105,0(v104)
b label_56_endLabel
# else branch
label_55_elseLabel:
label_56_endLabel:
# compute the left operand
# get address of the variable
# get address of variable
la v110,label_35_a33
lb v111,0(v110)
# compute the right operand
# get address of the variable
# get address of variable
la v112,label_36_empty
lb v113,0(v112)
xor v109,v111,v113
sltu v109,$zero,v109
# check if condition is true, branch to else if false
beq v109,$zero,label_57_elseLabel
# get address of variable
addiu v114,$fp,-8
# get value to assign
# compute the left operand
# get address of the variable
# get address of variable
addiu v116,$fp,-8
lw v117,0(v116)
# compute the right operand
li v118,1
add v115,v117,v118
# assign value to variable address
sw v115,0(v114)
b label_58_endLabel
# else branch
label_57_elseLabel:
label_58_endLabel:
# compute the left operand
# get address of the variable
# get address of variable
addiu v120,$fp,-8
lw v121,0(v120)
# compute the right operand
li v122,9
xor v119,v121,v122
sltiu v119,v119,1
# check if condition is true, branch to else if false
beq v119,$zero,label_59_elseLabel
# computing the return value
li v123,1
# copying the return value into the previous frame
sw v123,4($fp)
# branching to the return label
b label_40_return
b label_60_endLabel
# else branch
label_59_elseLabel:
# computing the return value
li v124,0
# copying the return value into the previous frame
sw v124,4($fp)
# branching to the return label
b label_40_return
label_60_endLabel:
# return label of the function full
label_40_return:
# popping all used registers from the stack
popRegisters
# setting the sp to the top of the old frame
addiu $sp,$fp,4
# load the return address from the stack
lw $ra,-4($fp)
# load the old frame pointer into fp
lw $fp,0($fp)
# jump to the return address
jr $ra

.text
label_61_set:
# storing the old fp value at the start of the frame
sw $fp,0($sp)
# setting the new fp to the value of the sp
addu $fp,$sp,$zero
# moving sp by a word to reserve space for the return address
addiu $sp,$sp,-4
# storing the return address in the frame
sw $ra,0($sp)
# moving sp by the size of the local variables
addiu $sp,$sp,-4
# pushing all used registers onto the stack
pushRegisters
# get address of variable
addiu v125,$fp,-8
# get value to assign
li v126,1
# assign value to variable address
sw v126,0(v125)
# compute the left operand
# get address of the variable
# get address of variable
addiu v128,$fp,16
lb v129,0(v128)
# compute the right operand
li v130,97
xor v127,v129,v130
sltiu v127,v127,1
# check if condition is true, branch to else if false
beq v127,$zero,label_63_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
addiu v132,$fp,12
lw v133,0(v132)
# compute the right operand
li v134,1
xor v131,v133,v134
sltiu v131,v131,1
# check if condition is true, branch to else if false
beq v131,$zero,label_65_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
la v136,label_27_a11
lb v137,0(v136)
# compute the right operand
# get address of the variable
# get address of variable
la v138,label_36_empty
lb v139,0(v138)
xor v135,v137,v139
sltiu v135,v135,1
# check if condition is true, branch to else if false
beq v135,$zero,label_67_elseLabel
# get address of variable
la v140,label_27_a11
# get value to assign
# get address of the variable
# get address of variable
addiu v141,$fp,8
lb v142,0(v141)
# assign value to variable address
sb v142,0(v140)
b label_68_endLabel
# else branch
label_67_elseLabel:
# get address of variable
addiu v143,$fp,-8
# get value to assign
# compute the left operand
li v145,0
# compute the right operand
li v146,1
sub v144,v145,v146
# assign value to variable address
sw v144,0(v143)
label_68_endLabel:
b label_66_endLabel
# else branch
label_65_elseLabel:
# compute the left operand
# get address of the variable
# get address of variable
addiu v148,$fp,12
lw v149,0(v148)
# compute the right operand
li v150,2
xor v147,v149,v150
sltiu v147,v147,1
# check if condition is true, branch to else if false
beq v147,$zero,label_69_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
la v152,label_28_a12
lb v153,0(v152)
# compute the right operand
# get address of the variable
# get address of variable
la v154,label_36_empty
lb v155,0(v154)
xor v151,v153,v155
sltiu v151,v151,1
# check if condition is true, branch to else if false
beq v151,$zero,label_71_elseLabel
# get address of variable
la v156,label_28_a12
# get value to assign
# get address of the variable
# get address of variable
addiu v157,$fp,8
lb v158,0(v157)
# assign value to variable address
sb v158,0(v156)
b label_72_endLabel
# else branch
label_71_elseLabel:
# get address of variable
addiu v159,$fp,-8
# get value to assign
# compute the left operand
li v161,0
# compute the right operand
li v162,1
sub v160,v161,v162
# assign value to variable address
sw v160,0(v159)
label_72_endLabel:
b label_70_endLabel
# else branch
label_69_elseLabel:
# compute the left operand
# get address of the variable
# get address of variable
addiu v164,$fp,12
lw v165,0(v164)
# compute the right operand
li v166,3
xor v163,v165,v166
sltiu v163,v163,1
# check if condition is true, branch to else if false
beq v163,$zero,label_73_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
la v168,label_29_a13
lb v169,0(v168)
# compute the right operand
# get address of the variable
# get address of variable
la v170,label_36_empty
lb v171,0(v170)
xor v167,v169,v171
sltiu v167,v167,1
# check if condition is true, branch to else if false
beq v167,$zero,label_75_elseLabel
# get address of variable
la v172,label_29_a13
# get value to assign
# get address of the variable
# get address of variable
addiu v173,$fp,8
lb v174,0(v173)
# assign value to variable address
sb v174,0(v172)
b label_76_endLabel
# else branch
label_75_elseLabel:
# get address of variable
addiu v175,$fp,-8
# get value to assign
# compute the left operand
li v177,0
# compute the right operand
li v178,1
sub v176,v177,v178
# assign value to variable address
sw v176,0(v175)
label_76_endLabel:
b label_74_endLabel
# else branch
label_73_elseLabel:
# get address of variable
addiu v179,$fp,-8
# get value to assign
li v180,0
# assign value to variable address
sw v180,0(v179)
label_74_endLabel:
label_70_endLabel:
label_66_endLabel:
b label_64_endLabel
# else branch
label_63_elseLabel:
# compute the left operand
# get address of the variable
# get address of variable
addiu v182,$fp,16
lb v183,0(v182)
# compute the right operand
li v184,98
xor v181,v183,v184
sltiu v181,v181,1
# check if condition is true, branch to else if false
beq v181,$zero,label_77_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
addiu v186,$fp,12
lw v187,0(v186)
# compute the right operand
li v188,1
xor v185,v187,v188
sltiu v185,v185,1
# check if condition is true, branch to else if false
beq v185,$zero,label_79_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
la v190,label_30_a21
lb v191,0(v190)
# compute the right operand
# get address of the variable
# get address of variable
la v192,label_36_empty
lb v193,0(v192)
xor v189,v191,v193
sltiu v189,v189,1
# check if condition is true, branch to else if false
beq v189,$zero,label_81_elseLabel
# get address of variable
la v194,label_30_a21
# get value to assign
# get address of the variable
# get address of variable
addiu v195,$fp,8
lb v196,0(v195)
# assign value to variable address
sb v196,0(v194)
b label_82_endLabel
# else branch
label_81_elseLabel:
# get address of variable
addiu v197,$fp,-8
# get value to assign
# compute the left operand
li v199,0
# compute the right operand
li v200,1
sub v198,v199,v200
# assign value to variable address
sw v198,0(v197)
label_82_endLabel:
b label_80_endLabel
# else branch
label_79_elseLabel:
# compute the left operand
# get address of the variable
# get address of variable
addiu v202,$fp,12
lw v203,0(v202)
# compute the right operand
li v204,2
xor v201,v203,v204
sltiu v201,v201,1
# check if condition is true, branch to else if false
beq v201,$zero,label_83_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
la v206,label_31_a22
lb v207,0(v206)
# compute the right operand
# get address of the variable
# get address of variable
la v208,label_36_empty
lb v209,0(v208)
xor v205,v207,v209
sltiu v205,v205,1
# check if condition is true, branch to else if false
beq v205,$zero,label_85_elseLabel
# get address of variable
la v210,label_31_a22
# get value to assign
# get address of the variable
# get address of variable
addiu v211,$fp,8
lb v212,0(v211)
# assign value to variable address
sb v212,0(v210)
b label_86_endLabel
# else branch
label_85_elseLabel:
# get address of variable
addiu v213,$fp,-8
# get value to assign
# compute the left operand
li v215,0
# compute the right operand
li v216,1
sub v214,v215,v216
# assign value to variable address
sw v214,0(v213)
label_86_endLabel:
b label_84_endLabel
# else branch
label_83_elseLabel:
# compute the left operand
# get address of the variable
# get address of variable
addiu v218,$fp,12
lw v219,0(v218)
# compute the right operand
li v220,3
xor v217,v219,v220
sltiu v217,v217,1
# check if condition is true, branch to else if false
beq v217,$zero,label_87_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
la v222,label_32_a23
lb v223,0(v222)
# compute the right operand
# get address of the variable
# get address of variable
la v224,label_36_empty
lb v225,0(v224)
xor v221,v223,v225
sltiu v221,v221,1
# check if condition is true, branch to else if false
beq v221,$zero,label_89_elseLabel
# get address of variable
la v226,label_32_a23
# get value to assign
# get address of the variable
# get address of variable
addiu v227,$fp,8
lb v228,0(v227)
# assign value to variable address
sb v228,0(v226)
b label_90_endLabel
# else branch
label_89_elseLabel:
# get address of variable
addiu v229,$fp,-8
# get value to assign
# compute the left operand
li v231,0
# compute the right operand
li v232,1
sub v230,v231,v232
# assign value to variable address
sw v230,0(v229)
label_90_endLabel:
b label_88_endLabel
# else branch
label_87_elseLabel:
# get address of variable
addiu v233,$fp,-8
# get value to assign
li v234,0
# assign value to variable address
sw v234,0(v233)
label_88_endLabel:
label_84_endLabel:
label_80_endLabel:
b label_78_endLabel
# else branch
label_77_elseLabel:
# compute the left operand
# get address of the variable
# get address of variable
addiu v236,$fp,16
lb v237,0(v236)
# compute the right operand
li v238,99
xor v235,v237,v238
sltiu v235,v235,1
# check if condition is true, branch to else if false
beq v235,$zero,label_91_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
addiu v240,$fp,12
lw v241,0(v240)
# compute the right operand
li v242,1
xor v239,v241,v242
sltiu v239,v239,1
# check if condition is true, branch to else if false
beq v239,$zero,label_93_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
la v244,label_33_a31
lb v245,0(v244)
# compute the right operand
# get address of the variable
# get address of variable
la v246,label_36_empty
lb v247,0(v246)
xor v243,v245,v247
sltiu v243,v243,1
# check if condition is true, branch to else if false
beq v243,$zero,label_95_elseLabel
# get address of variable
la v248,label_33_a31
# get value to assign
# get address of the variable
# get address of variable
addiu v249,$fp,8
lb v250,0(v249)
# assign value to variable address
sb v250,0(v248)
b label_96_endLabel
# else branch
label_95_elseLabel:
# get address of variable
addiu v251,$fp,-8
# get value to assign
# compute the left operand
li v253,0
# compute the right operand
li v254,1
sub v252,v253,v254
# assign value to variable address
sw v252,0(v251)
label_96_endLabel:
b label_94_endLabel
# else branch
label_93_elseLabel:
# compute the left operand
# get address of the variable
# get address of variable
addiu v256,$fp,12
lw v257,0(v256)
# compute the right operand
li v258,2
xor v255,v257,v258
sltiu v255,v255,1
# check if condition is true, branch to else if false
beq v255,$zero,label_97_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
la v260,label_34_a32
lb v261,0(v260)
# compute the right operand
# get address of the variable
# get address of variable
la v262,label_36_empty
lb v263,0(v262)
xor v259,v261,v263
sltiu v259,v259,1
# check if condition is true, branch to else if false
beq v259,$zero,label_99_elseLabel
# get address of variable
la v264,label_34_a32
# get value to assign
# get address of the variable
# get address of variable
addiu v265,$fp,8
lb v266,0(v265)
# assign value to variable address
sb v266,0(v264)
b label_100_endLabel
# else branch
label_99_elseLabel:
# get address of variable
addiu v267,$fp,-8
# get value to assign
# compute the left operand
li v269,0
# compute the right operand
li v270,1
sub v268,v269,v270
# assign value to variable address
sw v268,0(v267)
label_100_endLabel:
b label_98_endLabel
# else branch
label_97_elseLabel:
# compute the left operand
# get address of the variable
# get address of variable
addiu v272,$fp,12
lw v273,0(v272)
# compute the right operand
li v274,3
xor v271,v273,v274
sltiu v271,v271,1
# check if condition is true, branch to else if false
beq v271,$zero,label_101_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
la v276,label_35_a33
lb v277,0(v276)
# compute the right operand
# get address of the variable
# get address of variable
la v278,label_36_empty
lb v279,0(v278)
xor v275,v277,v279
sltiu v275,v275,1
# check if condition is true, branch to else if false
beq v275,$zero,label_103_elseLabel
# get address of variable
la v280,label_35_a33
# get value to assign
# get address of the variable
# get address of variable
addiu v281,$fp,8
lb v282,0(v281)
# assign value to variable address
sb v282,0(v280)
b label_104_endLabel
# else branch
label_103_elseLabel:
# get address of variable
addiu v283,$fp,-8
# get value to assign
# compute the left operand
li v285,0
# compute the right operand
li v286,1
sub v284,v285,v286
# assign value to variable address
sw v284,0(v283)
label_104_endLabel:
b label_102_endLabel
# else branch
label_101_elseLabel:
# get address of variable
addiu v287,$fp,-8
# get value to assign
li v288,0
# assign value to variable address
sw v288,0(v287)
label_102_endLabel:
label_98_endLabel:
label_94_endLabel:
b label_92_endLabel
# else branch
label_91_elseLabel:
# get address of variable
addiu v289,$fp,-8
# get value to assign
li v290,0
# assign value to variable address
sw v290,0(v289)
label_92_endLabel:
label_78_endLabel:
label_64_endLabel:
# computing the return value
# get address of the variable
# get address of variable
addiu v291,$fp,-8
lw v292,0(v291)
# copying the return value into the previous frame
sw v292,4($fp)
# branching to the return label
b label_62_return
# return label of the function set
label_62_return:
# popping all used registers from the stack
popRegisters
# setting the sp to the top of the old frame
addiu $sp,$fp,4
# load the return address from the stack
lw $ra,-4($fp)
# load the old frame pointer into fp
lw $fp,0($fp)
# jump to the return address
jr $ra

.text
label_105_printGame:
# storing the old fp value at the start of the frame
sw $fp,0($sp)
# setting the new fp to the value of the sp
addu $fp,$sp,$zero
# moving sp by a word to reserve space for the return address
addiu $sp,$sp,-4
# storing the return address in the frame
sw $ra,0($sp)
# moving sp by the size of the local variables
addiu $sp,$sp,0
# pushing all used registers onto the stack
pushRegisters
la v293,label_0_
li $v0,4
add $a0,$zero,v293
syscall
la v294,label_1_
li $v0,4
add $a0,$zero,v294
syscall
la v295,label_2_
li $v0,4
add $a0,$zero,v295
syscall
la v296,label_3_
li $v0,4
add $a0,$zero,v296
syscall
# get address of the variable
# get address of variable
la v297,label_27_a11
lb v298,0(v297)
li $v0,11
add $a0,$zero,v298
syscall
la v299,label_4_
li $v0,4
add $a0,$zero,v299
syscall
# get address of the variable
# get address of variable
la v300,label_28_a12
lb v301,0(v300)
li $v0,11
add $a0,$zero,v301
syscall
la v302,label_5_
li $v0,4
add $a0,$zero,v302
syscall
# get address of the variable
# get address of variable
la v303,label_29_a13
lb v304,0(v303)
li $v0,11
add $a0,$zero,v304
syscall
la v305,label_6_
li $v0,4
add $a0,$zero,v305
syscall
la v306,label_7_
li $v0,4
add $a0,$zero,v306
syscall
la v307,label_8_
li $v0,4
add $a0,$zero,v307
syscall
# get address of the variable
# get address of variable
la v308,label_30_a21
lb v309,0(v308)
li $v0,11
add $a0,$zero,v309
syscall
la v310,label_9_
li $v0,4
add $a0,$zero,v310
syscall
# get address of the variable
# get address of variable
la v311,label_31_a22
lb v312,0(v311)
li $v0,11
add $a0,$zero,v312
syscall
la v313,label_10_
li $v0,4
add $a0,$zero,v313
syscall
# get address of the variable
# get address of variable
la v314,label_32_a23
lb v315,0(v314)
li $v0,11
add $a0,$zero,v315
syscall
la v316,label_11_
li $v0,4
add $a0,$zero,v316
syscall
la v317,label_12_
li $v0,4
add $a0,$zero,v317
syscall
la v318,label_13_
li $v0,4
add $a0,$zero,v318
syscall
# get address of the variable
# get address of variable
la v319,label_33_a31
lb v320,0(v319)
li $v0,11
add $a0,$zero,v320
syscall
la v321,label_14_
li $v0,4
add $a0,$zero,v321
syscall
# get address of the variable
# get address of variable
la v322,label_34_a32
lb v323,0(v322)
li $v0,11
add $a0,$zero,v323
syscall
la v324,label_15_
li $v0,4
add $a0,$zero,v324
syscall
# get address of the variable
# get address of variable
la v325,label_35_a33
lb v326,0(v325)
li $v0,11
add $a0,$zero,v326
syscall
la v327,label_16_
li $v0,4
add $a0,$zero,v327
syscall
la v328,label_17_
li $v0,4
add $a0,$zero,v328
syscall
la v329,label_18_
li $v0,4
add $a0,$zero,v329
syscall
# return label of the function printGame
label_106_return:
# popping all used registers from the stack
popRegisters
# setting the sp to the top of the old frame
addiu $sp,$fp,4
# load the return address from the stack
lw $ra,-4($fp)
# load the old frame pointer into fp
lw $fp,0($fp)
# jump to the return address
jr $ra

.text
label_107_printWinner:
# storing the old fp value at the start of the frame
sw $fp,0($sp)
# setting the new fp to the value of the sp
addu $fp,$sp,$zero
# moving sp by a word to reserve space for the return address
addiu $sp,$sp,-4
# storing the return address in the frame
sw $ra,0($sp)
# moving sp by the size of the local variables
addiu $sp,$sp,0
# pushing all used registers onto the stack
pushRegisters
la v330,label_19_
li $v0,4
add $a0,$zero,v330
syscall
# get address of the variable
# get address of variable
addiu v331,$fp,4
lw v332,0(v331)
li $v0,1
add $a0,$zero,v332
syscall
la v333,label_20_
li $v0,4
add $a0,$zero,v333
syscall
# return label of the function printWinner
label_108_return:
# popping all used registers from the stack
popRegisters
# setting the sp to the top of the old frame
addiu $sp,$fp,4
# load the return address from the stack
lw $ra,-4($fp)
# load the old frame pointer into fp
lw $fp,0($fp)
# jump to the return address
jr $ra

.text
label_109_switchPlayer:
# storing the old fp value at the start of the frame
sw $fp,0($sp)
# setting the new fp to the value of the sp
addu $fp,$sp,$zero
# moving sp by a word to reserve space for the return address
addiu $sp,$sp,-4
# storing the return address in the frame
sw $ra,0($sp)
# moving sp by the size of the local variables
addiu $sp,$sp,0
# pushing all used registers onto the stack
pushRegisters
# compute the left operand
# get address of the variable
# get address of variable
addiu v335,$fp,8
lw v336,0(v335)
# compute the right operand
li v337,1
xor v334,v336,v337
sltiu v334,v334,1
# check if condition is true, branch to else if false
beq v334,$zero,label_111_elseLabel
# computing the return value
li v338,2
# copying the return value into the previous frame
sw v338,4($fp)
# branching to the return label
b label_110_return
b label_112_endLabel
# else branch
label_111_elseLabel:
# computing the return value
li v339,1
# copying the return value into the previous frame
sw v339,4($fp)
# branching to the return label
b label_110_return
label_112_endLabel:
# return label of the function switchPlayer
label_110_return:
# popping all used registers from the stack
popRegisters
# setting the sp to the top of the old frame
addiu $sp,$fp,4
# load the return address from the stack
lw $ra,-4($fp)
# load the old frame pointer into fp
lw $fp,0($fp)
# jump to the return address
jr $ra

.text
label_113_get_mark:
# storing the old fp value at the start of the frame
sw $fp,0($sp)
# setting the new fp to the value of the sp
addu $fp,$sp,$zero
# moving sp by a word to reserve space for the return address
addiu $sp,$sp,-4
# storing the return address in the frame
sw $ra,0($sp)
# moving sp by the size of the local variables
addiu $sp,$sp,0
# pushing all used registers onto the stack
pushRegisters
# compute the left operand
# get address of the variable
# get address of variable
addiu v341,$fp,8
lw v342,0(v341)
# compute the right operand
li v343,1
xor v340,v342,v343
sltiu v340,v340,1
# check if condition is true, branch to else if false
beq v340,$zero,label_115_elseLabel
# computing the return value
li v344,88
# copying the return value into the previous frame
sb v344,4($fp)
# branching to the return label
b label_114_return
b label_116_endLabel
# else branch
label_115_elseLabel:
# computing the return value
li v345,79
# copying the return value into the previous frame
sb v345,4($fp)
# branching to the return label
b label_114_return
label_116_endLabel:
# return label of the function get_mark
label_114_return:
# popping all used registers from the stack
popRegisters
# setting the sp to the top of the old frame
addiu $sp,$fp,4
# load the return address from the stack
lw $ra,-4($fp)
# load the old frame pointer into fp
lw $fp,0($fp)
# jump to the return address
jr $ra

.text
label_117_selectmove:
# storing the old fp value at the start of the frame
sw $fp,0($sp)
# setting the new fp to the value of the sp
addu $fp,$sp,$zero
# moving sp by a word to reserve space for the return address
addiu $sp,$sp,-4
# storing the return address in the frame
sw $ra,0($sp)
# moving sp by the size of the local variables
addiu $sp,$sp,-20
# pushing all used registers onto the stack
pushRegisters
# get address of variable
addiu v346,$fp,-16
# get value to assign
li v347,1
# assign value to variable address
sw v347,0(v346)
label_119_loop:
# get address of the variable
# get address of variable
addiu v348,$fp,-16
lw v349,0(v348)
# check if condition is true, branch to end if false
beq v349,$zero,label_120_endLabel
la v350,label_21_
li $v0,4
add $a0,$zero,v350
syscall
# get address of the variable
# get address of variable
addiu v351,$fp,4
lw v352,0(v351)
li $v0,1
add $a0,$zero,v352
syscall
la v353,label_22_
li $v0,4
add $a0,$zero,v353
syscall
# get address of variable
addiu v354,$fp,-8
# get value to assign
li $v0,12
syscall
add v355,$v0,$zero
# assign value to variable address
sb v355,0(v354)
# get address of variable
addiu v356,$fp,-12
# get value to assign
li $v0,5
syscall
add v357,$v0,$zero
# assign value to variable address
sw v357,0(v356)
# get address of variable
addiu v358,$fp,-24
# get value to assign
# move sp by the to allocate space for the args and return value
addiu $sp,$sp,-8
# move sp onto the new frame
addiu $sp,$sp,-4
# copy args onto the stack
# get address of the variable
# get address of variable
addiu v360,$fp,4
lw v361,0(v360)
sw v361,8($sp)
jal label_113_get_mark
# read return value from the stack
lb v359,0($sp)
# move sp to deallocate the space of the args and return value
addiu $sp,$sp,8
# assign value to variable address
sb v359,0(v358)
# get address of variable
addiu v362,$fp,-20
# get value to assign
# move sp by the to allocate space for the args and return value
addiu $sp,$sp,-16
# move sp onto the new frame
addiu $sp,$sp,-4
# copy args onto the stack
# get address of the variable
# get address of variable
addiu v364,$fp,-8
lb v365,0(v364)
sb v365,16($sp)
# get address of the variable
# get address of variable
addiu v366,$fp,-12
lw v367,0(v366)
sw v367,12($sp)
# get address of the variable
# get address of variable
addiu v368,$fp,-24
lb v369,0(v368)
sb v369,8($sp)
jal label_61_set
# read return value from the stack
lw v363,0($sp)
# move sp to deallocate the space of the args and return value
addiu $sp,$sp,16
# assign value to variable address
sw v363,0(v362)
# compute the left operand
# get address of the variable
# get address of variable
addiu v371,$fp,-20
lw v372,0(v371)
# compute the right operand
li v373,0
xor v370,v372,v373
sltiu v370,v370,1
# check if condition is true, branch to else if false
beq v370,$zero,label_121_elseLabel
la v374,label_23_
li $v0,4
add $a0,$zero,v374
syscall
b label_122_endLabel
# else branch
label_121_elseLabel:
# compute the left operand
# get address of the variable
# get address of variable
addiu v376,$fp,-20
lw v377,0(v376)
# compute the right operand
# compute the left operand
li v379,0
# compute the right operand
li v380,1
sub v378,v379,v380
xor v375,v377,v378
sltiu v375,v375,1
# check if condition is true, branch to else if false
beq v375,$zero,label_123_elseLabel
la v381,label_24_
li $v0,4
add $a0,$zero,v381
syscall
b label_124_endLabel
# else branch
label_123_elseLabel:
# get address of variable
addiu v382,$fp,-16
# get value to assign
li v383,0
# assign value to variable address
sw v383,0(v382)
label_124_endLabel:
label_122_endLabel:
# branch to start of loop to check condition
b label_119_loop
label_120_endLabel:
# return label of the function selectmove
label_118_return:
# popping all used registers from the stack
popRegisters
# setting the sp to the top of the old frame
addiu $sp,$fp,4
# load the return address from the stack
lw $ra,-4($fp)
# load the old frame pointer into fp
lw $fp,0($fp)
# jump to the return address
jr $ra

.text
label_125_won:
# storing the old fp value at the start of the frame
sw $fp,0($sp)
# setting the new fp to the value of the sp
addu $fp,$sp,$zero
# moving sp by a word to reserve space for the return address
addiu $sp,$sp,-4
# storing the return address in the frame
sw $ra,0($sp)
# moving sp by the size of the local variables
addiu $sp,$sp,-4
# pushing all used registers onto the stack
pushRegisters
# get address of variable
addiu v384,$fp,-8
# get value to assign
li v385,0
# assign value to variable address
sw v385,0(v384)
# compute the left operand
# get address of the variable
# get address of variable
la v387,label_27_a11
lb v388,0(v387)
# compute the right operand
# get address of the variable
# get address of variable
addiu v389,$fp,8
lb v390,0(v389)
xor v386,v388,v390
sltiu v386,v386,1
# check if condition is true, branch to else if false
beq v386,$zero,label_127_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
la v392,label_30_a21
lb v393,0(v392)
# compute the right operand
# get address of the variable
# get address of variable
addiu v394,$fp,8
lb v395,0(v394)
xor v391,v393,v395
sltiu v391,v391,1
# check if condition is true, branch to else if false
beq v391,$zero,label_129_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
la v397,label_33_a31
lb v398,0(v397)
# compute the right operand
# get address of the variable
# get address of variable
addiu v399,$fp,8
lb v400,0(v399)
xor v396,v398,v400
sltiu v396,v396,1
# check if condition is true, branch to else if false
beq v396,$zero,label_131_elseLabel
# get address of variable
addiu v401,$fp,-8
# get value to assign
li v402,1
# assign value to variable address
sw v402,0(v401)
b label_132_endLabel
# else branch
label_131_elseLabel:
label_132_endLabel:
b label_130_endLabel
# else branch
label_129_elseLabel:
# compute the left operand
# get address of the variable
# get address of variable
la v404,label_31_a22
lb v405,0(v404)
# compute the right operand
# get address of the variable
# get address of variable
addiu v406,$fp,8
lb v407,0(v406)
xor v403,v405,v407
sltiu v403,v403,1
# check if condition is true, branch to else if false
beq v403,$zero,label_133_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
la v409,label_35_a33
lb v410,0(v409)
# compute the right operand
# get address of the variable
# get address of variable
addiu v411,$fp,8
lb v412,0(v411)
xor v408,v410,v412
sltiu v408,v408,1
# check if condition is true, branch to else if false
beq v408,$zero,label_135_elseLabel
# get address of variable
addiu v413,$fp,-8
# get value to assign
li v414,1
# assign value to variable address
sw v414,0(v413)
b label_136_endLabel
# else branch
label_135_elseLabel:
label_136_endLabel:
b label_134_endLabel
# else branch
label_133_elseLabel:
# compute the left operand
# get address of the variable
# get address of variable
la v416,label_28_a12
lb v417,0(v416)
# compute the right operand
# get address of the variable
# get address of variable
addiu v418,$fp,8
lb v419,0(v418)
xor v415,v417,v419
sltiu v415,v415,1
# check if condition is true, branch to else if false
beq v415,$zero,label_137_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
la v421,label_29_a13
lb v422,0(v421)
# compute the right operand
# get address of the variable
# get address of variable
addiu v423,$fp,8
lb v424,0(v423)
xor v420,v422,v424
sltiu v420,v420,1
# check if condition is true, branch to else if false
beq v420,$zero,label_139_elseLabel
# get address of variable
addiu v425,$fp,-8
# get value to assign
li v426,1
# assign value to variable address
sw v426,0(v425)
b label_140_endLabel
# else branch
label_139_elseLabel:
label_140_endLabel:
b label_138_endLabel
# else branch
label_137_elseLabel:
label_138_endLabel:
label_134_endLabel:
label_130_endLabel:
b label_128_endLabel
# else branch
label_127_elseLabel:
label_128_endLabel:
# compute the left operand
# get address of the variable
# get address of variable
la v428,label_28_a12
lb v429,0(v428)
# compute the right operand
# get address of the variable
# get address of variable
addiu v430,$fp,8
lb v431,0(v430)
xor v427,v429,v431
sltiu v427,v427,1
# check if condition is true, branch to else if false
beq v427,$zero,label_141_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
la v433,label_31_a22
lb v434,0(v433)
# compute the right operand
# get address of the variable
# get address of variable
addiu v435,$fp,8
lb v436,0(v435)
xor v432,v434,v436
sltiu v432,v432,1
# check if condition is true, branch to else if false
beq v432,$zero,label_143_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
la v438,label_34_a32
lb v439,0(v438)
# compute the right operand
# get address of the variable
# get address of variable
addiu v440,$fp,8
lb v441,0(v440)
xor v437,v439,v441
sltiu v437,v437,1
# check if condition is true, branch to else if false
beq v437,$zero,label_145_elseLabel
# get address of variable
addiu v442,$fp,-8
# get value to assign
li v443,1
# assign value to variable address
sw v443,0(v442)
b label_146_endLabel
# else branch
label_145_elseLabel:
label_146_endLabel:
b label_144_endLabel
# else branch
label_143_elseLabel:
label_144_endLabel:
b label_142_endLabel
# else branch
label_141_elseLabel:
label_142_endLabel:
# compute the left operand
# get address of the variable
# get address of variable
la v445,label_29_a13
lb v446,0(v445)
# compute the right operand
# get address of the variable
# get address of variable
addiu v447,$fp,8
lb v448,0(v447)
xor v444,v446,v448
sltiu v444,v444,1
# check if condition is true, branch to else if false
beq v444,$zero,label_147_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
la v450,label_32_a23
lb v451,0(v450)
# compute the right operand
# get address of the variable
# get address of variable
addiu v452,$fp,8
lb v453,0(v452)
xor v449,v451,v453
sltiu v449,v449,1
# check if condition is true, branch to else if false
beq v449,$zero,label_149_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
la v455,label_35_a33
lb v456,0(v455)
# compute the right operand
# get address of the variable
# get address of variable
addiu v457,$fp,8
lb v458,0(v457)
xor v454,v456,v458
sltiu v454,v454,1
# check if condition is true, branch to else if false
beq v454,$zero,label_151_elseLabel
# get address of variable
addiu v459,$fp,-8
# get value to assign
li v460,1
# assign value to variable address
sw v460,0(v459)
b label_152_endLabel
# else branch
label_151_elseLabel:
label_152_endLabel:
b label_150_endLabel
# else branch
label_149_elseLabel:
# compute the left operand
# get address of the variable
# get address of variable
la v462,label_31_a22
lb v463,0(v462)
# compute the right operand
# get address of the variable
# get address of variable
addiu v464,$fp,8
lb v465,0(v464)
xor v461,v463,v465
sltiu v461,v461,1
# check if condition is true, branch to else if false
beq v461,$zero,label_153_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
la v467,label_33_a31
lb v468,0(v467)
# compute the right operand
# get address of the variable
# get address of variable
addiu v469,$fp,8
lb v470,0(v469)
xor v466,v468,v470
sltiu v466,v466,1
# check if condition is true, branch to else if false
beq v466,$zero,label_155_elseLabel
# get address of variable
addiu v471,$fp,-8
# get value to assign
li v472,1
# assign value to variable address
sw v472,0(v471)
b label_156_endLabel
# else branch
label_155_elseLabel:
label_156_endLabel:
b label_154_endLabel
# else branch
label_153_elseLabel:
label_154_endLabel:
label_150_endLabel:
b label_148_endLabel
# else branch
label_147_elseLabel:
label_148_endLabel:
# compute the left operand
# get address of the variable
# get address of variable
la v474,label_30_a21
lb v475,0(v474)
# compute the right operand
# get address of the variable
# get address of variable
addiu v476,$fp,8
lb v477,0(v476)
xor v473,v475,v477
sltiu v473,v473,1
# check if condition is true, branch to else if false
beq v473,$zero,label_157_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
la v479,label_31_a22
lb v480,0(v479)
# compute the right operand
# get address of the variable
# get address of variable
addiu v481,$fp,8
lb v482,0(v481)
xor v478,v480,v482
sltiu v478,v478,1
# check if condition is true, branch to else if false
beq v478,$zero,label_159_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
la v484,label_32_a23
lb v485,0(v484)
# compute the right operand
# get address of the variable
# get address of variable
addiu v486,$fp,8
lb v487,0(v486)
xor v483,v485,v487
sltiu v483,v483,1
# check if condition is true, branch to else if false
beq v483,$zero,label_161_elseLabel
# get address of variable
addiu v488,$fp,-8
# get value to assign
li v489,1
# assign value to variable address
sw v489,0(v488)
b label_162_endLabel
# else branch
label_161_elseLabel:
label_162_endLabel:
b label_160_endLabel
# else branch
label_159_elseLabel:
label_160_endLabel:
b label_158_endLabel
# else branch
label_157_elseLabel:
label_158_endLabel:
# compute the left operand
# get address of the variable
# get address of variable
la v491,label_33_a31
lb v492,0(v491)
# compute the right operand
# get address of the variable
# get address of variable
addiu v493,$fp,8
lb v494,0(v493)
xor v490,v492,v494
sltiu v490,v490,1
# check if condition is true, branch to else if false
beq v490,$zero,label_163_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
la v496,label_34_a32
lb v497,0(v496)
# compute the right operand
# get address of the variable
# get address of variable
addiu v498,$fp,8
lb v499,0(v498)
xor v495,v497,v499
sltiu v495,v495,1
# check if condition is true, branch to else if false
beq v495,$zero,label_165_elseLabel
# compute the left operand
# get address of the variable
# get address of variable
la v501,label_35_a33
lb v502,0(v501)
# compute the right operand
# get address of the variable
# get address of variable
addiu v503,$fp,8
lb v504,0(v503)
xor v500,v502,v504
sltiu v500,v500,1
# check if condition is true, branch to else if false
beq v500,$zero,label_167_elseLabel
# get address of variable
addiu v505,$fp,-8
# get value to assign
li v506,1
# assign value to variable address
sw v506,0(v505)
b label_168_endLabel
# else branch
label_167_elseLabel:
label_168_endLabel:
b label_166_endLabel
# else branch
label_165_elseLabel:
label_166_endLabel:
b label_164_endLabel
# else branch
label_163_elseLabel:
label_164_endLabel:
# computing the return value
# get address of the variable
# get address of variable
addiu v507,$fp,-8
lw v508,0(v507)
# copying the return value into the previous frame
sw v508,4($fp)
# branching to the return label
b label_126_return
# return label of the function won
label_126_return:
# popping all used registers from the stack
popRegisters
# setting the sp to the top of the old frame
addiu $sp,$fp,4
# load the return address from the stack
lw $ra,-4($fp)
# load the old frame pointer into fp
lw $fp,0($fp)
# jump to the return address
jr $ra

.text
# entry point main function 
.globl main
main:
# initialising frame pointer as the value of the stack
addu $fp,$sp,$zero
# moving sp by a word
addiu $sp,$sp,-4
# moving sp by the size of the local variables
addiu $sp,$sp,-16
# get address of variable
la v509,label_36_empty
# get value to assign
li v510,32
# assign value to variable address
sb v510,0(v509)
# get address of variable
addiu v511,$fp,-8
# get value to assign
li v512,1
# assign value to variable address
sw v512,0(v511)
# move sp by the to allocate space for the args and return value
addiu $sp,$sp,0
# move sp onto the new frame
addiu $sp,$sp,-4
# copy args onto the stack
jal label_37_reset
# read return value from the stack
# move sp to deallocate the space of the args and return value
addiu $sp,$sp,0
# move sp by the to allocate space for the args and return value
addiu $sp,$sp,0
# move sp onto the new frame
addiu $sp,$sp,-4
# copy args onto the stack
jal label_105_printGame
# read return value from the stack
# move sp to deallocate the space of the args and return value
addiu $sp,$sp,0
# get address of variable
addiu v515,$fp,-12
# get value to assign
li v516,1
# assign value to variable address
sw v516,0(v515)
label_171_loop:
# get address of the variable
# get address of variable
addiu v517,$fp,-8
lw v518,0(v517)
# check if condition is true, branch to end if false
beq v518,$zero,label_172_endLabel
# move sp by the to allocate space for the args and return value
addiu $sp,$sp,-4
# move sp onto the new frame
addiu $sp,$sp,-4
# copy args onto the stack
# get address of the variable
# get address of variable
addiu v520,$fp,-12
lw v521,0(v520)
sw v521,4($sp)
jal label_117_selectmove
# read return value from the stack
# move sp to deallocate the space of the args and return value
addiu $sp,$sp,4
# get address of variable
addiu v522,$fp,-16
# get value to assign
# move sp by the to allocate space for the args and return value
addiu $sp,$sp,-8
# move sp onto the new frame
addiu $sp,$sp,-4
# copy args onto the stack
# get address of the variable
# get address of variable
addiu v524,$fp,-12
lw v525,0(v524)
sw v525,8($sp)
jal label_113_get_mark
# read return value from the stack
lb v523,0($sp)
# move sp to deallocate the space of the args and return value
addiu $sp,$sp,8
# assign value to variable address
sb v523,0(v522)
# move sp by the to allocate space for the args and return value
addiu $sp,$sp,0
# move sp onto the new frame
addiu $sp,$sp,-4
# copy args onto the stack
jal label_105_printGame
# read return value from the stack
# move sp to deallocate the space of the args and return value
addiu $sp,$sp,0
# move sp by the to allocate space for the args and return value
addiu $sp,$sp,-8
# move sp onto the new frame
addiu $sp,$sp,-4
# copy args onto the stack
# get address of the variable
# get address of variable
addiu v528,$fp,-16
lb v529,0(v528)
sb v529,8($sp)
jal label_125_won
# read return value from the stack
lw v527,0($sp)
# move sp to deallocate the space of the args and return value
addiu $sp,$sp,8
# check if condition is true, branch to else if false
beq v527,$zero,label_173_elseLabel
# move sp by the to allocate space for the args and return value
addiu $sp,$sp,-4
# move sp onto the new frame
addiu $sp,$sp,-4
# copy args onto the stack
# get address of the variable
# get address of variable
addiu v531,$fp,-12
lw v532,0(v531)
sw v532,4($sp)
jal label_107_printWinner
# read return value from the stack
# move sp to deallocate the space of the args and return value
addiu $sp,$sp,4
# get address of variable
addiu v533,$fp,-8
# get value to assign
li v534,0
# assign value to variable address
sw v534,0(v533)
b label_174_endLabel
# else branch
label_173_elseLabel:
# compute the left operand
# move sp by the to allocate space for the args and return value
addiu $sp,$sp,-4
# move sp onto the new frame
addiu $sp,$sp,-4
# copy args onto the stack
jal label_39_full
# read return value from the stack
lw v536,0($sp)
# move sp to deallocate the space of the args and return value
addiu $sp,$sp,4
# compute the right operand
li v537,1
xor v535,v536,v537
sltiu v535,v535,1
# check if condition is true, branch to else if false
beq v535,$zero,label_175_elseLabel
la v538,label_25_
li $v0,4
add $a0,$zero,v538
syscall
# get address of variable
addiu v539,$fp,-8
# get value to assign
li v540,0
# assign value to variable address
sw v540,0(v539)
b label_176_endLabel
# else branch
label_175_elseLabel:
# get address of variable
addiu v541,$fp,-12
# get value to assign
# move sp by the to allocate space for the args and return value
addiu $sp,$sp,-8
# move sp onto the new frame
addiu $sp,$sp,-4
# copy args onto the stack
# get address of the variable
# get address of variable
addiu v543,$fp,-12
lw v544,0(v543)
sw v544,8($sp)
jal label_109_switchPlayer
# read return value from the stack
lw v542,0($sp)
# move sp to deallocate the space of the args and return value
addiu $sp,$sp,8
# assign value to variable address
sw v542,0(v541)
label_176_endLabel:
label_174_endLabel:
# compute the left operand
# get address of the variable
# get address of variable
addiu v546,$fp,-8
lw v547,0(v546)
# compute the right operand
li v548,0
xor v545,v547,v548
sltiu v545,v545,1
# check if condition is true, branch to else if false
beq v545,$zero,label_177_elseLabel
la v549,label_26_
li $v0,4
add $a0,$zero,v549
syscall
# get address of variable
addiu v550,$fp,-20
# get value to assign
li $v0,12
syscall
add v551,$v0,$zero
# assign value to variable address
sb v551,0(v550)
# compute the left operand
# get address of the variable
# get address of variable
addiu v553,$fp,-20
lb v554,0(v553)
# compute the right operand
li v555,121
xor v552,v554,v555
sltiu v552,v552,1
# check if condition is true, branch to else if false
beq v552,$zero,label_179_elseLabel
# get address of variable
addiu v556,$fp,-8
# get value to assign
li v557,1
# assign value to variable address
sw v557,0(v556)
# move sp by the to allocate space for the args and return value
addiu $sp,$sp,0
# move sp onto the new frame
addiu $sp,$sp,-4
# copy args onto the stack
jal label_37_reset
# read return value from the stack
# move sp to deallocate the space of the args and return value
addiu $sp,$sp,0
b label_180_endLabel
# else branch
label_179_elseLabel:
# compute the left operand
# get address of the variable
# get address of variable
addiu v560,$fp,-20
lb v561,0(v560)
# compute the right operand
li v562,89
xor v559,v561,v562
sltiu v559,v559,1
# check if condition is true, branch to else if false
beq v559,$zero,label_181_elseLabel
# get address of variable
addiu v563,$fp,-8
# get value to assign
li v564,1
# assign value to variable address
sw v564,0(v563)
# move sp by the to allocate space for the args and return value
addiu $sp,$sp,0
# move sp onto the new frame
addiu $sp,$sp,-4
# copy args onto the stack
jal label_37_reset
# read return value from the stack
# move sp to deallocate the space of the args and return value
addiu $sp,$sp,0
b label_182_endLabel
# else branch
label_181_elseLabel:
label_182_endLabel:
label_180_endLabel:
b label_178_endLabel
# else branch
label_177_elseLabel:
label_178_endLabel:
# branch to start of loop to check condition
b label_171_loop
label_172_endLabel:
label_170_return:
# exiting the program
li $v0,10
syscall

