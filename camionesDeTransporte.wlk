
object camion {
	var carga = #{}
	method cargar (cosa){
		carga.add(cosa)
	}
	method descargar (cosa){
		carga.remove(cosa)
	}
	method pesoTotal(){
		return carga.sum({cargas => carga.peso()}) + 1000
	}
	method excedidoDePeso(){
		return (self.pesoTotal() >= 2500)
	}
	method objetosPeligrosos(n){
		return carga.filter({cargas => cargas.peligro()> n} )
	}
	method objetosMasPeligrososQue(cosa){
		return carga.filter({cargas => carga.peligro() > cosa.peligro()})
		// return self.objetosPeligrosos(cosa.nivelPeligrosidad())
	}
	method puedeCircularEnRuta(nivelMaximoPeligrosidad) {
		return carga.all({cargas=>cargas.peligro()<nivelMaximoPeligrosidad})
	}
}


object knightRider{
	method peso(){
		return 500 //kilos
	}
	method peligrosidad(){
		return 10
	}
}

object bumblebee{
	var esAuto = false
	
	method peso(){
		return 800 //kilos
	}
	method peligrosidad(){
		return (if(esAuto) 15 else 30)
	}
	method hazteAuto(){
		esAuto = true
	}
}

object paqueteDeLadrillos{
	var cantidad = #{}
	method peso(){
		return cantidad.size() *2 //kilos
	}
	method peligrosidad(){
		return 2
	}
	method agregarLadrillo(ladrillo){
	     cantidad.add(ladrillo)
	 }
	 method quitarLadrillo(ladrillo){
	     cantidad.remove(ladrillo)
	 }
	 
}

object ladrillo{
	
}

object arenaAGranel {
	var peso =0
	method peso(){
		return peso //kilos
	}
	method peligrosidad(){
		return 1
	}
	method arenaPeso(kilos){
		 peso=kilos
	}
}

object bateriaAntiaerea {
	
	var misiles = []
	
	method peso(){
		var peso = 200
		if (self.tieneMisiles()){
	   	  	 peso = 300
	   	}
		return peso //kilos
	}
	method peligrosidad(){
		var peligrosidad = 0
		if (self.tieneMisiles()){
			peligrosidad = 100
		}
		return peligrosidad
	}
	method agregarMisil(misil){
	   	  misiles.add(misil)
	 }
	 method tieneMisiles(){
	   	     return misiles.isEmpty()
	   }
}

object misil{
	
}

object contenedorPortuario{
	var cargaContenedor = []
	 method peso(){
	 	 return cargaContenedor.sum({cosa => cosa.peso()}) + 100
	 }
	 method peligro(){
	 	return cargaContenedor.max({cosa => cosa.peligro()})
	 	 
	 }
	 method cosaACargar(unaCosa){
		cargaContenedor.add(unaCosa)
	}

}

object residuosRadioactivos{
	var peso = 0
	method peso(){
		return peso //kilos
	}
	method peligrosidad(){
		return 200
	}
	method darPeso(kilos){
	  	   peso = kilos
	  }
}

object embalajeDeSeguridad{
	var cosa 
	method peso(){
		return cosa.peso() //kilos
	}
	method peligrosidad(){
		return cosa.peligrosidad() / 2
	}
	method cosa(unaCosa){
		cosa=unaCosa
	}
}