
         .data
sepositivo:   .asciiz "Positivo."

senegativo:   .asciiz "Negativo."

senulo: .asciiz "Nulo."

mensagem: .asciiz "Digite um número: "

        .text

		
main:
		li $v0, 4
		la $a0, mensagem
		syscall
		li $v0, 5
		syscall
		add $t0, $v0, $0
		blt $0, $t0, positivo
		blt $t0, $0, negativo
		beq $t0, $0, nulo
		li $t1, 0
		beq $t1, $0, main
		j fim
		
		
		
positivo:		li $v0, 4       # Atribuir 4 a $v0
				la $a0, sepositivo    
				syscall        
				j fim
				
negativo:		li $v0, 4       
				la $a0, senegativo     
				syscall         				
				j fim
				
nulo: 			li $v0, 4      
				la $a0, senulo     
				syscall         
				j fim
 fim:		jr $ra         