#### start the code generation
#### start stmt
### start if_stmt
#### EXPR
#### const_int
#### const_int
#### start stmt
#### start stmt
### print_stmt
#### EXPR
#type: string
#### start stmt
### start if_stmt
#### EXPR
#### const_int
#### const_int
#### start stmt
#### start stmt
### print_stmt
#### EXPR
#type: string
#### start stmt
### start if_stmt
#### EXPR
#### const_int
#### const_int
#### start stmt
#### start stmt
### print_stmt
#### EXPR
#type: string
#### start stmt
### start if_stmt
#### EXPR
#### const_int
#### const_int
#### start stmt
#### start stmt
### print_stmt
#### EXPR
#type: string
.text
.globl main
main:
sub $sp, $sp, 8
sw $ra, 0($sp)
li $t0, 1
sub $sp, $sp, 8
sw $t0, 0($sp)
li $t0, 2
sub $sp, $sp, 8
sw $t0, 0($sp)
lw $t0, 0($sp)
lw $t1, 8($sp)
slt $t2, $t1, $t0
addi $sp, $sp, 8
sw $t2, 0($sp)
lw $a0, 0($sp)
addi $sp, $sp, 8
beq $a0, 0, ll_5
la $t0 , str_1
sub $sp, $sp, 8
sw $t0, 0($sp)
jal __print__string__
jal __print__new__line__
ll_5:
li $t0, 1
sub $sp, $sp, 8
sw $t0, 0($sp)
li $t0, 2
sub $sp, $sp, 8
sw $t0, 0($sp)
lw $t0, 0($sp)
lw $t1, 8($sp)
sle $t2, $t1, $t0
addi $sp, $sp, 8
sw $t2, 0($sp)
lw $a0, 0($sp)
addi $sp, $sp, 8
beq $a0, 0, ll_10
la $t0 , str_2
sub $sp, $sp, 8
sw $t0, 0($sp)
jal __print__string__
jal __print__new__line__
ll_10:
li $t0, 2
sub $sp, $sp, 8
sw $t0, 0($sp)
li $t0, 1
sub $sp, $sp, 8
sw $t0, 0($sp)
lw $t0, 0($sp)
lw $t1, 8($sp)
sgt $t2, $t1, $t0
addi $sp, $sp, 8
sw $t2, 0($sp)
lw $a0, 0($sp)
addi $sp, $sp, 8
beq $a0, 0, ll_15
la $t0 , str_3
sub $sp, $sp, 8
sw $t0, 0($sp)
jal __print__string__
jal __print__new__line__
ll_15:
li $t0, 2
sub $sp, $sp, 8
sw $t0, 0($sp)
li $t0, 1
sub $sp, $sp, 8
sw $t0, 0($sp)
lw $t0, 0($sp)
lw $t1, 8($sp)
sge $t2, $t1, $t0
addi $sp, $sp, 8
sw $t2, 0($sp)
lw $a0, 0($sp)
addi $sp, $sp, 8
beq $a0, 0, ll_20
la $t0 , str_4
sub $sp, $sp, 8
sw $t0, 0($sp)
jal __print__string__
jal __print__new__line__
ll_20:
lw $ra, 0($sp)
addi $sp, $sp, 8
jr $ra
__new__array__:
lw $a0, 8($sp)
lw $a1, 0($sp)
addi $sp, $sp, 16
addi $t6, $a0, 0
sllv $a0 , $a0 , $a1
addi $a0, $a0, 8
li $v0, 9
syscall
sw $t6, 0($v0)
addi $v0, $v0, 8
sub $sp, $sp, 8
sw $v0, 0($sp)
jr $ra
__itod__:
lw $s0, 0($sp)
mtc1 $s0, $f0
cvt.s.w $f0, $f0
mfc1 $v0, $f0
addi $sp, $sp, 8
jr $ra
__itob__:
lw $s0, 0($sp)
li $v0 , 0
beqz $s0 , __itob__jump__
li $v0 , 1
__itob__jump__:
addi $sp, $sp, 8
jr $ra
__dtoi__:
l.s $f0, 0($sp)
cvt.w.s $f0, $f0
mfc1 $v0, $f0
addi $sp, $sp, 8
jr $ra
__btoi__:
lw $v0, 0($sp)
addi $sp, $sp, 8
jr $ra
__str__cmp__1__:
lw $a0, 0($sp)
lw $a1, 8($sp)
addi $sp, $sp, 16
__str__cmp__:
lb $t0, 0($a0)
lb $t1, 0($a1)
bne $t0, $t1, __not__eq__str__
bne $t0, $zero, __stat__cont__
li $v0 , 1
jr $ra
__stat__cont__:
addi $a0, $a0, 1
addi $a1, $a1, 1
j __str__cmp__
__not__eq__str__:
li $v0 , 0
jr $ra
__print__double__:
l.s $f12, 0($sp)
addi $sp, $sp, 8
li $v0 , 2
syscall
jr $ra
__print__bool__:
lw $a0, 0($sp)
addi $sp, $sp, 8
beqz $a0 , __print__bool__cont__2__
li $v0 , 4
la $a0 , true
syscall
j __print__bool__end__
__print__bool__cont__2__:
li $v0 , 4
la $a0 , false
syscall
__print__bool__end__:
jr $ra
__print__integer__:
lw $a0, 0($sp)
addi $sp, $sp, 8
li $v0 , 1
syscall
jr $ra
__print__string__:
lw $a0, 0($sp)
addi $sp, $sp, 8
li $v0 , 4
syscall
jr $ra
__print__new__line__:
li $v0 , 4
la $a0 , nw
syscall
jr $ra
__read__char__:
li $v0 , 12
syscall
sub $sp, $sp, 8
sw $v0, 0($sp)
jr $ra
__read__integer__:
li $v0 , 5
syscall
sub $sp, $sp, 8
sw $v0, 0($sp)
jr $ra
__read__line__:
li $a0 , 256
li $v0 , 9
syscall
move $a0, $v0
sub $sp, $sp, 8
sw $a0, 0($sp)
li $a1 , 256
li $v0 , 8
syscall
jr $ra

.data
str_1: .asciiz "one is less than two"
str_2: .asciiz "one is less than or equal to two"
str_3: .asciiz "two is greater than one"
str_4: .asciiz "two is greater than or equal to one"
true: 
.align 2
 .asciiz "true"
false: 
.align 2
 .asciiz "false"
nw: 
.align 2
 .asciiz "\n"
