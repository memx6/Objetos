// ejercicio 3 y 4
object pepita {
	var energia = 0
	method comer(gramos){
		energia += 	(gramos * 4)	//alimento.caloriasQueAporta()
									 //(gramos * 4) calorias que aporta el alpiste
							         //(2 * nemo)   calorias que aporta Nemo
						           	//(0)          calorias que el postre
	}
	method volar(kilometros){
		var energiaQueMeQuedaria = energia - 10 - kilometros
		
		if (energiaQueMeQuedaria <= 0){
			error.throwWithMessage("energia insuficiente para volar")
			// lo que ponga aqui debajo no se va a ejecutar
		}
		energia -= energiaQueMeQuedaria
	}
	method energia(){
		return energia
	}
	method estaDebil(){
		return (energia < 50)
	}
	method estaFeliz(){
		return (energia.between(500, 1000))
		
	}
	method cuantoQuiereVolar(){
		
	}
	/*method haceLoQueQuieras(){
		if (self.estaDebil()){
			self.comer(alpiste.peso(20).caloriasQueAporta())
		}
		if (self.estaFeliz()){
			self.cuantoQuiereVolar()
		}
	}
}

*/

}
object pepon {
	var energia = 0
	method comer(gramos){
		energia += (gramos * 4)/2
	}
	method volar(kilometros){
		energia = energia - (kilometros * 0.5 - 1)
	}
	method energia(){
		return energia
	}
}

object pipa {
	var kmsRecorridos = 0
	var caloriasIngeridas = 0
	method comer(gramos){
		caloriasIngeridas += gramos
	}
	method volar(km){
		kmsRecorridos += km
	}
}



object postre {
	method caloriasQueAporta(){
		return 0
	}
}

object alpiste {
	var gramos = 100
	method peso (unosGramos){
		gramos = unosGramos
	}
	method caloriasQueAporta (){
		return (4*gramos)
	}
}

object nemo {
	var edad = 3
	method edad(unaEdad){
		edad = unaEdad
	}
	method caloriasQueAporta(){
		return (2 * edad)
	}
}

object roque {
	var ave
	method entrenar (){
		ave.volar(10)
		ave.comer(100)//alpiste.caloriasQueAporta())
		ave.volar(5)
	}
	method ave (unAve){
		ave= unAve
	}
	method aQuienEntrenas(){
		return ave
	}
}

//guia 3

object susana {
	var ave
	method entrenar (){
		ave.comer(alpiste.caloriasQueAporta())
		ave.volar(20)
	}
	method aQuienEntrenas(){
		return ave
	}
	method ave (unAve){
		ave= unAve
	}
}