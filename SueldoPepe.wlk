//ejercicio 10

object pepeS {
	var categoria // parametro por categoria (gerente o cadete)
	var condSindical // parametro por sindicato
	var presentismo // parametro por presentismo (tipos)
	method sueldo (){
		return categoria.neto() - condSindical.descuento(categoria.neto()) + presentismo.bono(self)
	}
	method categoria (unaCat){
		categoria = unaCat
	}
	method sindicato (unSindi){
		condSindical = unSindi
	}
	method presentismo (tipoPresentismo){
		presentismo = tipoPresentismo
	}
	method faltas(){
		return 1  // falta condicion de faltas
	}
	method neto(){
		return categoria.neto()
	}
}

object roque {
	var condSindical // parametro por sindicato
	method sueldo (){
		return 28000 - condSindical.descuento(28000) + 9500
	}
	method sindicato (unSindi){
		condSindical = unSindi
	}
	method neto(){
		return 28000
	}
}

///////////////////////////////////////////////

object ernesto {
	var presentismo // parametro por presentismo (tipos)
	var companiero
	method sueldo (){
		return companiero.neto() + presentismo.bono(self)
	}
	method presentismo (tipoPresentismo){
		presentismo = tipoPresentismo
	}
	method companiero(unCompaniero){
		companiero = unCompaniero
	}
}

//////////////////////////////////////////////////////

object cadete{
	
	method neto(){
		return 20000
	}
}
object gerente {
	method neto(){
		return 15000
	}
}

///////////////////////////////////////////

object porcentual {
	method descuento(neto){
		return (neto * 3/100)
	}
}

object comprometido {
	method descuento(neto){
		return  1500 + (neto * 1/100)		// es el 1% del neto
	}
}
object noSindicalizado {
	method descuento (neto){
		return 0
	}
}

////////////////////////////////////

object normal {
	method bono(pepeS){
		var bono = 0
		if (pepeS.faltas() == 0){
			bono == 2000
		}
		if (pepeS.faltas() == 1){
			bono == 1000
		}
		return (bono)
	}
	method faltas(){
		return 1  // falta condicion de faltas
	}
}

object ajuste {
	method bono(){
		var bono = 0
		if (pepeS.faltas() == 0){
			bono == 10
		}
		return bono
	}
}

object demagogico {
	method bono(){
		return 500
	}
}