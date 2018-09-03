
object agenciaDeRemises {
	var flota = []
	method incorporarAuto(vehiculo){
		flota.add(vehiculo)
	}
	method coloresDevehiculos(){
		return flota.map({vehiculo=>vehiculo.color()}).asSet()
	}
	method pesoTotalFlota(){
		return flota.sum({vehiculo => vehiculo.peso()})
	}
	method esRecomendable(){
		return flota.all({vehiculo => vehiculo.velocidadMaxima()>= 100}).size()>=3  
	}
	method colorDelAutoMasRapido(){
		return flota.max({vehiculo => vehiculo.velocidadMaxima()}).color()
	}
	method capacidadTotalYendoA(velocidad){
		return flota.filter({vehiculo => vehiculo.velocidadMaxima()== velocidad}).capacidad()
	}
	method esPosibleIncorporacion(candidato){
		return flota.find({vehiculo => vehiculo == candidato and vehiculo.capacidad()>=3})
	}
	method posiblesIncorporaciones (candidatos){
		return candidatos.filter({candidato =>self.esPosibleIncorporacion(candidato)})
	}



}


object trafic {
	var interior
	var motor
	method capacidad(){
		return interior.capacidad()
	}
	method peso(){
		return 400 + motor
	}
	method velocidadMaxima(){
		return motor.velocidadMaxima()
	}
	method color (){
		return "blanco"
	}
	method asignarInterior (unInterior){
		interior = unInterior
	}
	method asignarMotor(unMotor){
		motor = unMotor
	}
}

object comodo{
	method capacidad(){
		return 5
	}
	method peso (){
		return 1000
	}
}

object amuchado{
	method capacidad(){
		return 12
	}
	method peso(){
		return 2000
	}
}

object pulenta {
	method velocidadMaxima(){
		return 170
	}
	method peso(){
		return 1000
	}
}

object bataton {
	method velocidadMaxima(){
		return 80
	}
	method peso(){
		return 300
	}
}
