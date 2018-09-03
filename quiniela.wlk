
object sorteo {
	var numerosSorteados = []
	var apuestas =[]
	method numeroSalidoEnPos(numero){
		//se agrega numero por numero desde el primero al quinto
		return if (numerosSorteados.size() >=5) numerosSorteados.add(numero)
	}
	method resultadoFinal(){
		return numerosSorteados
	}
	method apuestasGanadoras(){
		return apuestas.filter({apuesta => apuesta.esGanadora()})
	}
	method apuestasPerdedoras(){
		return apuestas.filter({apuesta => not apuesta.esGanadora()})
	}
	method totalRecaudado(){
		return self.apuestasGanadoras().sum({apuesta => apuesta.montoPremio()})
	}
	method totalReacudadoEnPremios(){
		return self.apuestasGanadoras().sum({apuesta => apuesta.montoPremio()})
	}
	method beneficio(){
		return self.totalRecaudado()- self.totalReacudadoEnPremios()
	}
	method agregarApuesta(unaApuesta){
		apuestas = unaApuesta
	}
	

}

object apuesta {
	var poso
	var apostador
	method montoApostadoPorApostador (){
		return apostador.montoApostado()
	}
	method esGanadora(){
		return if (apostador.gano()) self.montoPremio()
	}
	method montoPremio(){
		return tipoDePremio
	}
	method nombreApostador(){
		return apostador.nombre()
	}
	method numeroElegidio(){
		return apostador.numeroApostado()
	}
	method agregarApostador (unApostador){
		apostador = unApostador
	}
	
}

object apostador {
	var nombre
	var numero
	var monto
	method nombre(){
		return nombre
	}
	method darNombre(unNombre){
		nombre = unNombre
	}
	method numeroApostado(){
		return numero
	}
	method numeroElegido(unNumero){
		numero = unNumero
	}
	method montoApostado (){
		return monto
	}
	method darApuesta (unMonto){
		monto = unMonto
	}
	method gano(){
		return 
	}
}


object aLaCabeza {
	
	method 
}