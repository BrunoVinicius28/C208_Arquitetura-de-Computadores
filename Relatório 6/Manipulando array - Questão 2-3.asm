# Supondo que 'a' está em $s0, 'b' está em $s1, 'c' está em $s2
# e que cada elemento de 'a' tem 4 bytes.

# Carregar 'b' em $t0
lw $t0, 0($s1)

# Carregar a[21] em $t1
lw $t1, 84($s0)  # 4 bytes por elemento, então 21 * 4 = 84

# Subtrair a[21] de 'b' e armazenar o resultado em $t2
sub $t2, $t0, $t1

# Armazenar o resultado em 'c'
sw $t2, 0($s2)
