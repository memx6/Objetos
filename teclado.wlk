//ejercicio 6 y 7
object teclado {
	var  numero = ""
	var llamadas = 0
	method agregarDigito (digito){
		numero = numero + digito
	}
	method numeroIngresado (){
		return numero
	}
	method esNumeroValido (){
		return (numero.size() == 5) or (numero == 7 and numero.startswith ("15"))
	}
	method llamar (){
		numero = ""
		llamadas += 1
	}
	method borrarUltimoDigito (){
		return self.numeroIngresado().subString(0,numero.size()-1)
	}
	method cantLlamadas (){
		return llamadas
	}
}