# Questão 1 - c
.text 
   # X = -80 + 1234 --> TIPO R 
   # A = $t1 = -80
   # B = $t2 = 1234
   # X = $t3 => 1154
   # X = A + B --> $t3 = $t1 + $t2

   # Load Immediate
   li $t1, -80
   li $t2, 1234
   
   # Soma
   add $t3, $t1, $t2 # X = A + B 