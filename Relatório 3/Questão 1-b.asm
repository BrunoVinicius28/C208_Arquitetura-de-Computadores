# Questão 1 - b
.text 
   # X = 89 + 20 --> TIPO R 
   # A = $t1 = 89
   # B = $t2 = 20
   # X = $t3 => 109
   # X = A + B --> $t3 = $t1 + $t2
   
   # Load Immediate
   li $t1, 89
   li $t2, 20
   
   # Soma
   add $t3, $t1, $t2 # X = A + B 