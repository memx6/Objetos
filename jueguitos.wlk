object contador {
	var contador = 0
	method reset(){
		return 0
	}
	
	method inc(){
		contador = contador + 1
	}
		
	method dec(){
		contador = contador - 1
	}

	method valorActual(){
		return contador
	}

}





object pepe {
	var record = 0
	method jueguito (){
		contador.inc()
	}
	method acumulado (){
		return (contador.valorActual())
	}
	/*method pique (){
		record = (record.max(self.acumulado()))
		contador.reset()
	}*/
	method record()= record // idem Return
    
}
