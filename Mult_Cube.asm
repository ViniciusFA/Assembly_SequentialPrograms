.data
	numero: .asciiz "Digite um número: "
	cubo: .asciiz "O cubo é "
.text
	li $v0, 4         # Imrpimir uma string
	la $a0, numero    # a0 - numero
	syscall           # Executa a instrução
	
	li $v0, 5         # Leitura de um número inteiro
	syscall           # Executa a instrução
	
	move $t1, $v0     # move o valor de $v0 para $t1
	mul $t2, $t1, $t1 # $t2 = $t1 * $t1
	mul $t3, $t1, $t2 # $t3 = $t1 * $t2	
	li $v0, 4         # Imprime uma string
	la $a0, cubo      # imprime o valor da variavel cubo
	syscall           # Executa a instrução
	
	li $v0, 1         # Imprime um número inteiro
	la $a0, ($t3)     # a0 = t3
	syscall           # Executa a instrução
	
	li $v0, 10        # Preparando o processador para finalizar o programa
	syscall           # Executa a instrução