# Supondo que 'a' está em $s0, 'c' está em $s1, 'b' está em $s2
# e que cada elemento de 'a' e 'c' tem 4 bytes.

# Carregar a[5] em $t0
lw $t0, 20($s0)  # 4 bytes por elemento, então 5 * 4 = 20

# Carregar c[3] em $t1
lw $t1, 12($s1)  # 4 bytes por elemento, então 3 * 4 = 12

# Somar a[5] e c[3] e armazenar o resultado em $t2
add $t2, $t0, $t1

# Armazenar o resultado em 'b'
sw $t2, 0($s2)
