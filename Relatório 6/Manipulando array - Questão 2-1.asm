# Supondo que 'b' est� em $s0, 'c' est� em $s1 e 'a' est� em $s2

# Carregar b[15] em $t0
lw $t0, 60($s0) # 4 bytes por palavra, ent�o 15 * 4 = 60

# Carregar 'c' em $t1
lw $t1, 0($s1)

# Subtrair 'c' de b[15] e armazenar o resultado em $t2
sub $t2, $t0, $t1

# Armazenar o resultado em 'a'
sw $t2, 0($s2)
