//ejercicio 1 y 2

object contador {
	var contador = 0
	var ultimoComando
	method reset(){
		contador = 0
		ultimoComando = "reset"
		
	}
	
	method inc(){
		contador = contador + 1
		ultimoComando ="incrementa"
	}
		
	method dec(){
		contador = contador - 1
		ultimoComando = "decrementa"
	}

	method valorActual(){
		return contador
	}
	method ultimoComando (){
		return ultimoComando
	}
}