//ejercicio 5
object calculadora {
	var cuenta = 0
	method cargar (numero){
		cuenta = numero
	}
	method sumar (numero){
		cuenta += numero
	}
	method restar (numero){
		cuenta = cuenta - numero
	}
	method multiplicar(numero){
		cuenta = cuenta * numero
	}
	method valorActual(){
		return cuenta
	}
}
