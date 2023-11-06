.data
a: .word 4, 5  # Inicializa o array 'a' com os valores 4 e 5
j: .word 0    # Inicializa 'j' com 0

.text
    # Carregar a[0] em $t0
    lw $t0, a

    # Comparar a[0] com 5
    li $t1, 5
    bge $t0, $t1, Else

    # Se a[0] < 5, faça a[0] = j + 2
    lw $t2, j # Carregar 'j' em $t2
    li $t3, 2 # Carregar 2 em $t3
    add $t0, $t2, $t3
    sw $t0, a # Armazenar o resultado em a[0]
    j Exit    # Saltar para o fim

Else:
    # Caso contrário, faça j = a[1] + 10
    lw $t4, a + 4 # Carregar a[1] em $t4 (a + 4 representa o segundo elemento de 'a')
    li $t5, 10    # Carregar 10 em $t5
    add $t2, $t4, $t5
    sw $t2, j     # Armazenar o resultado em 'j'

Exit:
