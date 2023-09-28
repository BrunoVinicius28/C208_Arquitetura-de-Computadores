# Questão 5
# 3)
.text
   li $t1,4
   li $t2,5

   bgt $t1, $t2, Else # Se $t1 > $t2 ---> Else
   sub $t3, $t1, $t2
   add $t1, $t2, $t3
   j Exit #JUMP
   Else: 
       sub $t2, $t1, $t3
       add $t3, $t2, $t3
   Exit: 