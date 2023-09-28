# Questão 1
.text
li $t1, 10
li $t2, 25
li $t3, 43
li $t4, 89

# Deslocamento de 8 bits para a direita
srl $s0, $t1, 8
srl $s1, $t2, 8
srl $s2, $t3, 8
srl $s3, $t4, 8

# Deslocamento de 4 bits para a esquerda
sll $s4, $t1, 4
sll $s5, $t2, 4
sll $s6, $t3, 4
sll $s7, $t4, 4
