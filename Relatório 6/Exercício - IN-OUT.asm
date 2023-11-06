.data
solicitacao: .asciiz "Digite o valor de N: "
resultado: .asciiz "A diferença entre o quadrado da soma e a soma dos quadrados dos primeiros N números naturais é: "

.text
    # Imprimir a solicitação
    li $v0, 4
    la $a0, solicitacao
    syscall

    # Ler o valor de N
    li $v0, 5
    syscall
    move $t0, $v0 # $t0 contém o valor de N

    # Calcular a soma dos N primeiros números naturais
    li $t1, 0  # $t1 será usado para armazenar a soma
    li $t2, 1  # Inicializamos o contador com 1
loop_soma:
    add $t1, $t1, $t2  # Soma $t1 + $t2 e armazena em $t1
    addi $t2, $t2, 1   # Incrementa o contador
    ble $t2, $t0, loop_soma  # Repete o loop até que o contador seja menor ou igual a N

    # Calcular o quadrado da soma
    mul $t1, $t1, $t1  # Quadrado da soma

    # Calcular a soma dos quadrados
    li $t3, 0  # $t3 será usado para armazenar a soma dos quadrados
    li $t2, 1  # Reinicializamos o contador com 1
loop_quadrados:
    mul $t4, $t2, $t2  # Calcula o quadrado do contador e armazena em $t4
    add $t3, $t3, $t4  # Soma $t3 + $t4 e armazena em $t3
    addi $t2, $t2, 1   # Incrementa o contador
    ble $t2, $t0, loop_quadrados  # Repete o loop até que o contador seja menor ou igual a N

    # Subtrair a soma dos quadrados do quadrado da soma
    sub $t1, $t1, $t3

    # Imprimir o resultado
    li $v0, 4
    la $a0, resultado
    syscall

    li $v0, 1
    move $a0, $t1
    syscall

    # Encerrar o programa
    li $v0, 10
    syscall
