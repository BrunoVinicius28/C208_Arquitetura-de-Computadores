# Questão 1 - d
.text 
   # X = 70 - 24 --> TIPO R 
   # A = $t1 = 70
   # B = $t2 = 24
   # X = $t3 => 46
   # X = A - B --> $t3 = $t1 - $t2

   # Load Immediate
   li $t1, 70
   li $t2, 24
   
   # Soma
   sub $t3, $t1, $t2 # X = A - B 