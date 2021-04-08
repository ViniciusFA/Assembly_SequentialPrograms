.data # diretriz das variaveis
	Lado1: .asciiz "Lado 1: "
	Lado2: .asciiz "Lado 2: "
	Lado3: .asciiz "Lado 3: "
	Lado4: .asciiz "Lado 4: "
	Soma:  .asciiz "Soma => "
	
.text # diretriz do código
	# Lendo Lado 1
	li $v0, 4      # Prepara processadpr para string
	la $a0, Lado1  # a0 recebe Lado 1
	syscall        # executa a instrução
	li $v0, 5      # ler um número inteiro
	syscall        # executa a instrução
	move $t1, $v0  # $t1 recebe o valor de $v0

	# Lendo Lado 2
	li $v0, 4      # Prepara processadpr para string
	la $a0, Lado2  # a0 recebe Lado 2
	syscall        # executa a instrução
	li $v0, 5      # ler um número inteiro
	syscall        # executa a instrução
	move $t2, $v0  # $t2 recebe o valor de $v0

	# Lendo Lado 3
	li $v0, 4      # Prepara processadpr para string
	la $a0, Lado3  # a0 recebe Lado 3
	syscall        # executa a instrução
	li $v0, 5      # ler um número inteiro
	syscall        # executa a instrução
	move $t3, $v0  # $t3 recebe o valor de $v0

	# Lendo Lado 4
	li $v0, 4      # Prepara processadpr para string
	la $a0, Lado4  # a0 recebe Lado 4
	syscall        # executa a instrução
	li $v0, 5      # ler um número inteiro
	syscall        # executa a instrução
	move $t4, $v0  # $t4 recebe o valor de $v0
	
	# $t1, $t2, $t3 e $t4
	add $t5, $t1, $t2 #$t5 recebe a soma ($t1 + $t2)
	add $t6, $t3, $t4 #$t6 recebe a soma ($t3 + $t4)
	add $t0, $t5, $t6 #$t0 recebe a soma ($t5 + $t5)
	
	#Apresentação dos resultados apresentados na tela
	li $v0, 4       # Prepara processadpr para string
	la $a0, Soma    # registrador a0 recebe a variavel soma (string "SOMA =>")
	syscall         # executa a instrução
	
	li $v0, 1       # Prepara processadpr para inteiro
	la $a0, ($t0)   # $a0 recebe o valor de $t0 - está entre parenteses para converter o valor
	syscall         # executa a instrução
	
	li $v0, 10      # prepara o processador para finalizar
	syscall         # executa a instrução
	




