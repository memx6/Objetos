// ejercicio 9 Guia 2 Parte 1
object pepe {
	var saldo = 0
	method saldo(){
		return saldo
	}
	method depositar(unaCantidadPesos){
		saldo+= unaCantidadPesos
	}
	method extraer(unaCantidadPesos){
		saldo-= unaCantidadPesos
	}
}

object julian {
	var saldo = 0
	method saldo(){
		return saldo
	}
	method depositar(unaCantidadPesos){
		saldo+= unaCantidadPesos * 80/100
	}
	method extraer(unaCantidadPesos){
		if (saldo - unaCantidadPesos >= 5){
			saldo -=unaCantidadPesos - 5
		}
	}
}

object papa {
	var saldoDolares = 0
	method saldo(){
		return (saldoDolares * cambio.compra())
	}
	method depositar(unaCantidadPesos){
		saldoDolares+= unaCantidadPesos /cambio.venta()
	}
	method extraer(unaCantidadPesos){
		saldoDolares-= unaCantidadPesos / cambio.compra()
	}
}

object cambio{
	method compra (){
		return 14.70
	}
	method venta (){
		return 15.10
	}
}


// ejercicio 9 Guia 2 Parte 2

object cuentaCombinada {
	var cuenta1 
	var cuenta2 
	method saldo(){
		return cuenta1.saldo() + cuenta2.saldo()
	}
	method depositar(unaCantidadPesos){
		if (cuenta2.saldo()< 1000){
			cuenta2.depositar(unaCantidadPesos)
		}
		else{
			cuenta1.depositar(unaCantidadPesos)
		}
	}
	method extraer(monto){
		var saleDePrimaria = cuenta1.saldo().min(monto)
		cuenta1.extraer(saleDePrimaria)
		cuenta2.extraer(monto-saleDePrimaria)
	}
	method primaria (unaCuenta){
		cuenta1 = unaCuenta
	}
	method secundaria (unaCuenta){
		cuenta2 = unaCuenta
	}
}


// ejercicio 9 Guia 2 Parte 3
/*object casa{
	var cuenta
	var compras = 0
	var cosaComprada
	method gastar(importe){
		compras += importe
		cuenta.extraer (importe)
	}
	method comprar(cosa){
		cosaComprada = cosa
		self.gastar(cosa.precio())
	}
	method esDerrochona() {
		return if (compras > 5000) {"esDerrochona"}
	}
	method esBacan(){
		return if (cuenta.saldo()>=40000) {"esBacan"}
	}
	method cuentas (unaCuenta){
		cuenta = unaCuenta
	}
	method tieneComida(){
	  return cosaComprada.esComida()
	}
	method vieneDeEquiparse(){
		return cosaComprada.esElectrodomestico() or cosaComprada.precio()> 5000
	}
	method puedeComprar(cosa){
		return cuenta.saldo()>= cosa.precio()
	}
	method cuentaParaGastos(){
		return cuenta
	}
}
*/
// guia 3

object heladera{
	
	method precio(){
		return 20000
	}
	method esComida(){
		return false
	}
	method esElectrodomestico(){
		return true
	}
}

object cama{
	
	method precio(){
		return 8000
	}
	method esComida(){
		return false
	}
	method esElectrodomestico(){
		return false
	}
}

object tiraDeAsado{
	
	method precio(){
		return 350
	}
	method esComida(){
		return true
	}
	method esElectrodomestico(){
		return false
	}
}

object paqueteDeFideos{
	
	method precio(){
		return 50
	}
	method esComida(){
		return true
	}
	method esElectrodomestico(){
		return false
	}
}


object plancha{
	
	method precio(){
		return 1200
	}
	method esComida(){
		return false
	}
	method esElectrodomestico(){
		return true
	}
}


/////////guia 4 colecciones

object casa{
	var cuenta
	var compras = 0
	var cosasCompradas = []
	
	method gastar(importe){
		compras += importe
		cuenta.extraer (importe)
	}
	method comprar(cosa){
		cosasCompradas.add(cosa)
		self.gastar(cosa.precio())
	}
	method esDerrochona() {
		return if (compras > 5000) {"esDerrochona"}
	}
	method esBacan(){
		return if (cuenta.saldo()>=40000) {"esBacan"}
	}
	method cuentas (unaCuenta){
		cuenta = unaCuenta
	}
	method tieneComida(){
	  return cosasCompradas.any({cosa => cosa.esComida()})
	}
	method vieneDeEquiparse(){
		return cosasCompradas.last().esElectrodomestico() or cosasCompradas.last().precio()> 5000
	}
	method puedeComprar(cosa){
		return cuenta.saldo()>= cosa.precio()
	}
	method cuentaParaGastos(){
		return cuenta
	}
	method compras (){
	    return cosasCompradas
	}
	method compraMasCara (){
		return cosasCompradas.max({cosa=> cosa.precio()})
	}
	method electrodomesticosComprados (){
		return cosasCompradas.filter({cosa => cosa.esElectrodomestico()})
	}
	method malaEpoca (){
		return cosasCompradas.all({cosa => cosa.esComida()})
	}
	method faltaComprar (deseaComprar){
		return cosasCompradas.difference (deseaComprar)
	}
	method faltaComida (){
		return cosasCompradas.filter({cosa => cosa.esComida()}).size() < 2
	}
}

object romina{
	var deseos = #{}
	method desear(unDeseo){
		deseos.add(unDeseo)
	}
	method olvidarDeseo(unDeseo){
		deseos.remove(unDeseo)
	}
	method pedirUnaCosa (unaCosa){
		/////////////////////////////////////
	}
	method deseosInsatisfechos (){
		return casa.faltaComprar(deseos)
	}
	method deseosSatisfechos (){
		deseos.interception (casa.compras())
	}
	method cosasParaDonar(){
		//////////////////////////////////
	}
}