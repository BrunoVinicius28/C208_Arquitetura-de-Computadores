# Supondo que 'a' está em $s0, 'b' está em $s1, 'c' está em $s2, e 10 está em $t0

# Carregar 'b' em $t1
lw $t1, 0($s1)

# Carregar 'c' em $t2
lw $t2, 0($s2)

# Subtrair 'c' de 'b' e armazenar o resultado em $t3
sub $t3, $t1, $t2

# Calcular o endereço de a[10]
addi $t0, $t0, 10  # 10 é o índice

# Armazenar o resultado em a[10]
sw $t3, 0($s0)    # $s0 contém o endereço base de 'a'
