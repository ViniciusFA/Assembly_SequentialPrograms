.data
	x: .asciiz "Digite o valor de X: "
	y: .asciiz "Digite o valor de y: "
	z: .asciiz "O resultado de X/Y (inteiro) � "

.text
	li $v0, 4      # Imprime uma string
	la $a0, x      # $ a0 = x
	syscall        # Executa a instru��o
	
	li $v0, 5      # Recebe um n�mero inteiro
	syscall        # Executa a instru��o
	
	move $t1, $v0  # $t1 = $v0
	li $v0, 4      # Imprime uma string
	la $a0, y      # $t0 = y
	syscall        # Executa a instru��o
	
	li $v0, 5      # Imprime uma inteiro
	syscall        # Executa a instru��o
	
	move $t2, $v0     # $t2 = $v0
	div $t3, $t1, $t2 # $t3 = $t1 / $t2
	li $v0, 4         # Imprime uma string
	la $a0, z         # $a0 = z
	syscall           # Executa a instru��o
	
	li $v0, 1         # Recebe um n�mero inteiro
	la $a0, ($t3)     # $a0 = $t3
	syscall           # Executa a instru��o
	
	li $v0, 10        # Prepara o programa para ser finalziado
	syscall           # Executa a instru��o
	