# Supondo que 'a' est� em $s0, 'b' est� em $s1 e 'c' est� em $s2

# Carregar 'b' em $t1
lw $t1, 0($s1)

# Carregar 'a' em $t0
lw $t0, 0($s0)

# Subtrair 'a' de 'b' e armazenar o resultado em $t2
sub $t2, $t1, $t0

# Armazenar o resultado em c[0]
sw $t2, 0($s2)  # $s2 cont�m o endere�o base de 'c'
