# Questão 2
.data
solicitacao: .asciiz "Digite a sua idade: "
resultado: .asciiz "Sua idade daqui a 30 anos será: "

.text 
    # Solicitar que o usuário entre com a idade
    li $v0, 4
    la $a0, solicitacao
    syscall
    
    li $v0, 5 # Entrar com um INT
    syscall 
    
    move $t0, $v0 #Guarda o valor em $t0
    
    addi $t1, $t0, 30 # Soma = idade + 30
    
    # Exibir a mensagem para o usuário com o resultado
    li $v0, 4
    la $a0, resultado
    syscall
    
    # Exibir o resultado
    li $v0, 1 # Imprimindo um INT
    #move $a0, $t1
    add $a0, $t1, $0
    syscall
    