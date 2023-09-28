# Questão 5
# 5)
.text 
  li $t0, 10
  li $t1, 0
  WHILE: bgt $t0,0, Loop # $t0 > 0 | 10 9 8 7
  j Exit
  Loop: 
       add $t1,$t1,5 # $t1 = $t1 + 5
       sub $t0,$t0,2 # $t0 = $t0 - 2
       j WHILE
  Exit:

