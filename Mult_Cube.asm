.data
	numero: .asciiz "Digite um n�mero: "
	cubo: .asciiz "O cubo � "
.text
	li $v0, 4         # Imrpimir uma string
	la $a0, numero    # a0 - numero
	syscall           # Executa a instru��o
	
	li $v0, 5         # Leitura de um n�mero inteiro
	syscall           # Executa a instru��o
	
	move $t1, $v0     # move o valor de $v0 para $t1
	mul $t2, $t1, $t1 # $t2 = $t1 * $t1
	mul $t3, $t1, $t2 # $t3 = $t1 * $t2	
	li $v0, 4         # Imprime uma string
	la $a0, cubo      # imprime o valor da variavel cubo
	syscall           # Executa a instru��o
	
	li $v0, 1         # Imprime um n�mero inteiro
	la $a0, ($t3)     # a0 = t3
	syscall           # Executa a instru��o
	
	li $v0, 10        # Preparando o processador para finalizar o programa
	syscall           # Executa a instru��o