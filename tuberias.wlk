

object tramoRectoLargo{
	    var long = 200
	    var tuberia
		method siguiente(){
			return tuberia
		}
		method longitudMaximaHastaElFinal(){
			return long + tuberia.longitudMaximaHastaElFinal()
		}
		method tuberia(unaTuberia){
			tuberia = unaTuberia
		}
		method velocidadMaximaDeSalida(velocidadEntrada){
			return velocidadEntrada
		}
}
object tramoRectoCorto {
		var long = 40
		var tuberia
		method siguiente(){
			return tuberia
		}
		method longitudMaximaHastaElFinal(){
			return long + tuberia.longitudMaximaHastaElFinal() 
		}
		method tuberia(unaTuberia){
			tuberia = unaTuberia
		}
		method velocidadMaximaDeSalida(velocidadEntrada){
			return velocidadEntrada
		}
}

	

object tramoSubida{
		var long = 100
		var tuberia
		method siguiente(){
			return tuberia
		}
		method longitudMaximaHastaElFinal(){
			return long + tuberia.longitudMaximaHastaElFinal()
		}
		method tuberia(unaTuberia){
			tuberia = unaTuberia
		}
		method velocidadMaximaDeSalida(velocidadEntrada){
			return velocidadEntrada / 2
		}
		
}

object tramoBajada{
		var long = 200
		var tuberia
		method siguiente(){
			return tuberia
		}
		method longitudMaximaHastaElFinal(){
			return long + tuberia.longitudMaximaHastaElFinal()
		}
		method tuberia(unaTuberia){
			tuberia = unaTuberia
		}
		method velocidadMaximaDeSalida(velocidadEntrada){
			return velocidadEntrada * 2
		}
}

object codo{
		var long = 70
		var tuberia
		method siguiente(){
			return tuberia
		}
		method longitudMaximaHastaElFinal(){
			return long + tuberia.longitudMaximaHastaElFinal()
		}
		method tuberia(unaTuberia){
			tuberia = unaTuberia
		}
		method velocidadMaximaDeSalida(velocidadEntrada){
			return velocidadEntrada - 20
		}
}

object bifurcacionY {
		var long = 50
		var entrada
		var tuberiaI
		var tuberiaD
		method entrada(){
			return entrada
		}
		method siguienteIzquierda(){
			return tuberiaI
		}
		method siguienteDerecha(){
			return tuberiaD
		}
		method longitudMaximaHastaElFinal(){
			return long + self.siguienteIzquierda().longitudMaximaHastaElFinal().max (self.siguienteDerecha().longitudMaximaHastaElFinal())
		}
		method entrada (unaEntrada){
			entrada = unaEntrada
		}
		method tuberiaI(unaTuberia){
			tuberiaI = unaTuberia
		}
		method tuberiaD(unaTuberia){
			tuberiaD = unaTuberia
		}
	
		method velocidadMaximaDeSalida(velocidadEntrada){
			
		}
	
}

object tope {
		var long = 0	
		method longitudMaximaHastaElFinal(){
			return 0
		}
		method velocidadMaximaDeSalida(velocidadEntrada){
			return long
		}

}

object canilla{
	var long = 0
	method longitudMaximaHastaElFinal(){
			return long
		}
	method velocidadMaximaDeSalida(velocidadEntrada){
			return velocidadEntrada
	}
}