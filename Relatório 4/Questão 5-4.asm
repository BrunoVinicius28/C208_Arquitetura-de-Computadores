# Questão 5
# 4)
.text
   li $t1,5
   li $t2,4

   blt $t1, $t2, Else # Se $t1 < $t2 ---> Else
   add $t3, $t1, $t2
   sub $t1, $t2, $t3
   j Exit #JUMP
   Else: 
       add $t2, $t1, $t3
       sub $t3, $t2, $t3
   Exit: 
   