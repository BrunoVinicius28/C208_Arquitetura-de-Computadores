# Supondo que 'a' está em $s0, 'b' está em $s1, 'c' está em $s2 e 245 está em $t0

# Carregar 'a' em $t1
lw $t1, 0($s0)

# Carregar 'c' em $t2
lw $t2, 0($s2)

# Somar 'a' e 'c' e armazenar o resultado em $t3
add $t3, $t1, $t2

# Calcular o endereço de b[245]
sll $t0, $t0, 2        # Multiplicar 245 por 4 para obter o deslocamento em bytes
add $t0, $t0, $s1      # Adicionar o deslocamento ao endereço base de 'b'

# Armazenar o resultado em b[245]
sw $t3, 0($t0)         # $t0 contém o endereço calculado
