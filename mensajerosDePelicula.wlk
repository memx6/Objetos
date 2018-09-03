object paquete {
	var paquetePago
	method estaPago (){
		return paquetePago
	}
	method pagar (bool){
		paquetePago = bool
	}
	
}
object puenteBrooklyn {
	var mensajero
	method pasa(){
		return mensajero.peso()> 1000
	}
	method asignarMensajero (unMensajero){
		mensajero = unMensajero
	}
}

object laMatrix {
	var mensajero
	method pasa(){
		return mensajero.puedeLlamar()
	}
	method asignarMensajero (unMensajero){
		mensajero = unMensajero
	}
}



object chuckNorris {
	method peso(){
		return 900
	}
	method puedeLlamar(){
		return true
	}

}

object neo {
	var credito
	method peso(){
		return 0
	}
	method puedeLlamar(){
		return self.tieneCredito()
	}
	method tieneCredito(){
		return credito>0
	}
	method asignarCredito (unCredito){
		credito = unCredito
	}
}

object lincolnHawk {
	var vehiculo 
	var peso 
	method peso(){
		return peso + vehiculo.peso()
	}
	method unVehiculo (unVehiculo){
		vehiculo = unVehiculo
	}
	method asignarPeso (unPeso){
		peso = unPeso
	}
	method puedeLlamar (){
		return false
	}
}

object bici {
	method peso(){
		return 10
	}
}

object camion {
	var acoplado = 500
	method peso(){
	  return  500 + acoplado
	}
	method asignarAcoplados(numero){
	   acoplado = acoplado * numero
	}
}   