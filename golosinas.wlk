object mariano {
	var bolsa = []
	method comprar (unaGolosina){
		bolsa.add(unaGolosina)
	}
	method desechar (unaGolosina){
		bolsa.remove(unaGolosina)
	}
	method hayGolosinaSinTACC(){
		return bolsa.any({golosina=>golosina.tieneGluten()})
	}
	method golosinaMasCara(){
		return bolsa.max({golosina =>golosina.precio()})
	}
	method golosinaCualquiera(){
		return bolsa.anyOne()
	}
	method golosinaDeSabor(unSabor){
		return bolsa.find({golosina=> golosina.sabor()== unSabor})
	}
	method golosinasDeSabor(unSabor){
		return bolsa.filter({golosina=> golosina.sabor()== unSabor})
	}
	method preciosCuidados(){
		return bolsa.all({golosina=> golosina.precio()<= 10})
	}
	method sabores(){
	//devuelve todos los sabores de las golosinas que tiene en la bolsa
		return bolsa.map({golosina=>golosina.sabor()})//.asSet() lo convierto en un conjunto aunque ya lo es
	}
	method probarGolosinas(){
	//le da un mordisco a todas las golosinas de la bolsa
		return bolsa.foreach({golosina=>golosina.mordisco()})
	}
	method golosinasFaltantes(golosinasDeseadas){
	//devuelve todas las golosinas que desea y no compro
		return bolsa.difference(golosinasDeseadas)
	}
}
object bombon {
	var peso = 15 //gramos
	method precio(){
		return 5
	}
	method sabor(){
		return "Frutilla"
	}
	method peso(){
		return peso
	}
	method tieneGluten(){
		return false
	}
	method mordisco(){
		peso = (self.peso() - (self.peso()*20/100 )-1)
		return peso
	}
}


object alfajor {
	var peso = 300 //gramos
	method precio(){
		return 12 //pesos
	}
	method sabor(){
		return "chocolate"
	}
	method peso(){
		return peso
	}
	method tieneGluten(){
		return true
	}
	method mordisco(){
		peso=self.peso() - self.peso()*20/100 
		return peso
	}
}



object caramelo {
	var peso = 5//gramos
	method precio(){
		return 1
	}
	method sabor(){
		return "Frutilla"
	}
	method peso(){
		return peso
	}
	method tieneGluten(){
		return false
	}
	method mordisco(){
		return peso-1
	}
}


object chupetin {
	var peso = 7
	method precio(){
		return 2//pesos
	}
	method sabor(){
		return "Naranja"
	}
	method peso(){
		return peso
	}
	method tieneGluten(){
		return false
	}
	method mordisco(){
		if (peso > 2){
			peso = self.peso() - self.peso()*10/100
		}
		return peso 
	}
}


object oblea {
	var peso = 250//gramos
	method precio(){
		return 5
	}
	method sabor(){
		return "Vainilla"
	}
	method peso(){
		return peso
	}
	method tieneGluten(){
		return true
	}
	method mordisco(){
	if (peso > 70){
			peso = self.peso() - self.peso()*50/100
		}
		else {
			peso = self.peso() - self.peso()*25/100
		}
		return peso 
	}
}


object chocolatin {
	var peso = pesoInicial
	var pesoInicial
	method precio(){
		return 0.50 * peso//pesos
	}
	method sabor(){
		return "Chocolate"
	}
	method peso(){
		return peso //gramos
	}
	method tieneGluten(){
		return true
	}
	method mordisco(){
		return peso - 2
	}
	method pesoInicial (unPeso){
	  	pesoInicial = unPeso
	}
}


object golosinaBaniada {
	var golBase
	method precio(){
		return golBase.precio() + 2 //pesos
	}
	method sabor(){
		return golBase.sabor()
	}
	method peso(){
		return golBase.peso() + 4// gramos
	}
	method tieneGluten(){
		return golBase.tieneGluten()
	}
	method mordisco(){
		return golBase.mordisco()
	}
	method golosinaBase(unaGol){
		golBase = unaGol
	}
}


object pastillaTuttiFruti {
	method precio(){
		
	}
	method sabor(){
		
	}
	method peso(){
		
	}
	method tieneGluten(){
		
	}
	method mordisco(){
		
	}
}