# Questão 1 - a
.text 
   # X = 2 + 5 --> TIPO R 
   # A = $t1 = 2
   # B = $t2 = 5 
   # X = $t3 => 7
   # X = A + B --> $t3 = $t1 + $t2
   
   # Load Immediate
   li $t1, 2
   li $t2, 5
   
   # Soma
   add $t3, $t1, $t2 # X = A + B 
