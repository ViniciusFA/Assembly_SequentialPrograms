.data
	kp: .asciiz "Digite o KM percorrido: "
	kf: .asciiz "KM finais: "

.text
	li $v0, 4  	   # Imprime uma string
	la $a0, kp 	   # a0 recebe kp
	syscall    	   # executa a instrução
	
	li, $v0, 5         # leitura de um numero inteiro
	syscall            # executa a instrução
	
	move $t0, $v0      # $t0 recebe o valor de $v0
	li $t1, 15         # t1 recebe o valor / número 15
	sub $t2, $t1, $t0  # t2 = $t1 - $t0
	li $v0, 4          # Imprime uma string
	la $a0, kf         # a0 recebe kf
	syscall            # executa a instrução
	
	li $v0, 1 	   # Imprime um número inteiro na tela
	la $a0, ($t2) 	   # $a0 = $t2
	syscall            # executa a instrução
	
	li $v0, 10 	   # Prepara o processador para finalizar
	syscall            # executa a instrução
	
	