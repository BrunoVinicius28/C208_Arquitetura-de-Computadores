# Questão 3
.data
    a: .byte 54
    b: .byte 45

.text
    # Carregando o valor de 'a' em $t0
    lb $t0, a

    # Carregando o valor de 'b' em $t1
    lb $t1, b

    # Somando 'a' e 'b' e armazenando o resultado em $t2
    add $t2, $t0, $t1

    # Imprimindo o resultado
    li $v0, 1 # Imprimindo um INT
    move $a0, $t2 # Colocando o resultado em $a0
    syscall
         