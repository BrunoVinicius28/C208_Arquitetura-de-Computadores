# Supondo que 'b' está em $s0, 'c' está em $s1 e 'a' está em $s2

# Carregar b[15] em $t0
lw $t0, 60($s0) # 4 bytes por palavra, então 15 * 4 = 60

# Carregar 'c' em $t1
lw $t1, 0($s1)

# Subtrair 'c' de b[15] e armazenar o resultado em $t2
sub $t2, $t0, $t1

# Armazenar o resultado em 'a'
sw $t2, 0($s2)
