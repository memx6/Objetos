// ejercicio 8
object naveEnterprise {
	var potencia = 50
	var coraza = 5
	var totalPotencia = 0
	var fortalezaOfensiva = 0
	method potencia(){
		return potencia
	}
	method coraza (){
		return coraza
	}
	method encontrarPilaAtomica(){
		potencia += 25
	}
	method encontrarEscudo(){
		coraza+= 10
	}
	method recibirAtaque(puntos){
		var fuerzaAtaque = puntos
		coraza -= coraza.min(fuerzaAtaque)
		fuerzaAtaque -= coraza.min(fuerzaAtaque)
		potencia -= fuerzaAtaque
	}
	method fortalezaDefensiva (){
		return totalPotencia += coraza + potencia
	}
	method necesitaFortalecerse(){
		return (coraza == 0 and potencia < 20)
	}
	method fortalezaOfensiva(){
		if (potencia <20) {
			fortalezaOfensiva = 0
		}
		else{
			fortalezaOfensiva = (potencia - 20) / 2
		}
		return fortalezaOfensiva
	}
}	
