// ejercicio 1 TIM

object pelota {
	
	method caer(){
		linterna.encender()
	}
}


object linterna {
	method encender(){
		lupa.iluminar()
	}
}

object lupa {
	method iluminar(){
		vela.encender()
	}
}

object vela {
	var prendida = false
	method encender(){
		prendida = true
	}
	method encendida(){
		return prendida
    }	
}


