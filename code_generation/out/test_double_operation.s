#### start the code generation
### variable
### variable
### variable
#### start stmt
#### var name a
### symbol double
#### EXPR
#### start stmt
#### var name b
### symbol double
#### EXPR
#### start stmt
#### var name c
### symbol double
#### EXPR
#### val code gen
#### var name a
### symbol double
#### val code gen
#### var name b
### symbol double
#### start stmt
### print_stmt
#### EXPR
#### val code gen
#### var name c
### symbol double
#type: double
#### start stmt
#### var name c
### symbol double
#### EXPR
#### val code gen
#### var name a
### symbol double
#### val code gen
#### var name b
### symbol double
#### start stmt
### print_stmt
#### EXPR
#### val code gen
#### var name c
### symbol double
#type: double
#### start stmt
#### var name c
### symbol double
#### EXPR
#### val code gen
#### var name a
### symbol double
#### val code gen
#### var name b
### symbol double
#### start stmt
### print_stmt
#### EXPR
#### val code gen
#### var name c
### symbol double
#type: double
#### start stmt
#### var name c
### symbol double
#### EXPR
#### val code gen
#### var name a
### symbol double
#### val code gen
#### var name b
### symbol double
#### start stmt
### print_stmt
#### EXPR
#### val code gen
#### var name c
### symbol double
#type: double
.text
.globl main
main:
sub $sp, $sp, 8
sw $ra, 0($sp)
la $t0 , var_1
sub $sp, $sp, 8
sw $t0, 0($sp)
li.s $f0 , 1.5
sub $sp, $sp, 8
s.s $f0, 0($sp)
lw $t0, 8($sp)
l.s $f0, 0($sp)
s.s $f0, 0($t0)
s.s $f0, 8($sp)
addi $sp, $sp, 8
addi $sp, $sp, 8
la $t0 , var_2
sub $sp, $sp, 8
sw $t0, 0($sp)
li.s $f0 , 3.4
sub $sp, $sp, 8
s.s $f0, 0($sp)
lw $t0, 8($sp)
l.s $f0, 0($sp)
s.s $f0, 0($t0)
s.s $f0, 8($sp)
addi $sp, $sp, 8
addi $sp, $sp, 8
la $t0 , var_3
sub $sp, $sp, 8
sw $t0, 0($sp)
la $t0 , var_1
sub $sp, $sp, 8
sw $t0, 0($sp)
lw $t0, 0($sp)
l.s $f0, 0($t0)
s.s $f0, 0($sp)
la $t0 , var_2
sub $sp, $sp, 8
sw $t0, 0($sp)
lw $t0, 0($sp)
l.s $f0, 0($t0)
s.s $f0, 0($sp)
l.s $f0, 0($sp)
l.s $f2, 8($sp)
add.s $f4, $f0, $f2
s.s $f4, 8($sp)
addi $sp, $sp, 8
lw $t0, 8($sp)
l.s $f0, 0($sp)
s.s $f0, 0($t0)
s.s $f0, 8($sp)
addi $sp, $sp, 8
addi $sp, $sp, 8
la $t0 , var_3
sub $sp, $sp, 8
sw $t0, 0($sp)
lw $t0, 0($sp)
l.s $f0, 0($t0)
s.s $f0, 0($sp)
jal __print__double__
jal __print__new__line__
la $t0 , var_3
sub $sp, $sp, 8
sw $t0, 0($sp)
la $t0 , var_1
sub $sp, $sp, 8
sw $t0, 0($sp)
lw $t0, 0($sp)
l.s $f0, 0($t0)
s.s $f0, 0($sp)
la $t0 , var_2
sub $sp, $sp, 8
sw $t0, 0($sp)
lw $t0, 0($sp)
l.s $f0, 0($t0)
s.s $f0, 0($sp)
l.s $f0, 0($sp)
l.s $f2, 8($sp)
sub.s $f4, $f2, $f0
s.s $f4, 8($sp)
addi $sp, $sp, 8
lw $t0, 8($sp)
l.s $f0, 0($sp)
s.s $f0, 0($t0)
s.s $f0, 8($sp)
addi $sp, $sp, 8
addi $sp, $sp, 8
la $t0 , var_3
sub $sp, $sp, 8
sw $t0, 0($sp)
lw $t0, 0($sp)
l.s $f0, 0($t0)
s.s $f0, 0($sp)
jal __print__double__
jal __print__new__line__
la $t0 , var_3
sub $sp, $sp, 8
sw $t0, 0($sp)
la $t0 , var_1
sub $sp, $sp, 8
sw $t0, 0($sp)
lw $t0, 0($sp)
l.s $f0, 0($t0)
s.s $f0, 0($sp)
la $t0 , var_2
sub $sp, $sp, 8
sw $t0, 0($sp)
lw $t0, 0($sp)
l.s $f0, 0($t0)
s.s $f0, 0($sp)
l.s $f0, 0($sp)
l.s $f2, 8($sp)
mul.s $f4, $f2, $f0
s.s $f4, 8($sp)
addi $sp, $sp, 8
lw $t0, 8($sp)
l.s $f0, 0($sp)
s.s $f0, 0($t0)
s.s $f0, 8($sp)
addi $sp, $sp, 8
addi $sp, $sp, 8
la $t0 , var_3
sub $sp, $sp, 8
sw $t0, 0($sp)
lw $t0, 0($sp)
l.s $f0, 0($t0)
s.s $f0, 0($sp)
jal __print__double__
jal __print__new__line__
la $t0 , var_3
sub $sp, $sp, 8
sw $t0, 0($sp)
la $t0 , var_1
sub $sp, $sp, 8
sw $t0, 0($sp)
lw $t0, 0($sp)
l.s $f0, 0($t0)
s.s $f0, 0($sp)
la $t0 , var_2
sub $sp, $sp, 8
sw $t0, 0($sp)
lw $t0, 0($sp)
l.s $f0, 0($t0)
s.s $f0, 0($sp)
l.s $f0, 0($sp)
l.s $f2, 8($sp)
div.s $f4, $f2, $f0
s.s $f4, 8($sp)
addi $sp, $sp, 8
lw $t0, 8($sp)
l.s $f0, 0($sp)
s.s $f0, 0($t0)
s.s $f0, 8($sp)
addi $sp, $sp, 8
addi $sp, $sp, 8
la $t0 , var_3
sub $sp, $sp, 8
sw $t0, 0($sp)
lw $t0, 0($sp)
l.s $f0, 0($t0)
s.s $f0, 0($sp)
jal __print__double__
jal __print__new__line__
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
var_1:
.align 2
.space 4
var_2:
.align 2
.space 4
var_3:
.align 2
.space 4
true: 
.align 2
 .asciiz "true"
false: 
.align 2
 .asciiz "false"
nw: 
.align 2
 .asciiz "\n"
