.data
	pergunta:  .asciiz "Digite a sua idade: "
	msg1:     .asciiz "Você é menor de idade."
	msg2:     .asciiz "Você é maior de idade."

.text
	li $v0, 4 # Imprime uma string
	la $a0, pergunta # $a0 = pergunta 
	syscall #Executa a instrução
	
	li $v0, 5 # Leitura de um número inteiro
	syscall #Executa a instrução - cursor piscando esperando o dado do usuário
	
	move $t1, $v0 # $t1 = $v0
	li $t0, 18 # dentro de $t0 terá 18 = pivot
	blt $t1, $t0, menor  # bit = desvie para o bloco menor se $t1 for menor que 18
	bge $t1, $t0, maior  # bge = desvie para o bloco maior se $t1 for maior que 18
		
	
	menor:
		li $v0, 4    # Imprimir uma string
		la $a0, msg1 # $a0 = msg1
		syscall      # Executa a instrução
		
		li $v0, 10 # Finaliza o programa
		syscall    # Executa a instrução
		
	maior:
		li $v0, 4    # Imprimir uma string
		la $a0, msg2 # $a0 = msg2
		syscall
		
		li $v0, 10 # Finaliza o programa
		syscall    # Executa a instrução