import jarras.*
import personas.*

class MarcasCerveza {
/* ## Marcas y jarras
Existen varias **marcas** de cerveza. Están las marcas de cerveza rubia (como la Corona), 
las marcas de cerveza negra (como la Guiness), y las marcas de cerveza roja (como la Hofbräu). De cada marca se sabe su contenido de lúpulo, o sea,
 cuántos gramos de lúpulo por litro llevan
. También se conoce el país donde se fabrica.*/
	method gramosDeLupulo(){}
	method procedencia(){}
	method graduacionDeAlcohol(){}
	
}

class Negra inherits MarcasCerveza{
/* Por otro lado, la graduación de una marca de cerveza negra se calcula como el mínimo entre la graduación reglamentaria y el doble de su contenido de lúpulo. 
La graduación reglamentaria es mundial, o sea que es única para todas las marcas de cerveza negra del mundo; puede cambiar con el tiempo.*/ 	
	method graduacionReglamentaria(){return graduacion.valor()}
	override method graduacionDeAlcohol(){return graduacionReglamentaria.min(self.gramosDeLupulo()*2)}
}
class Roja inherits Negra{
//* La cerveza roja se fabrica con procedimientos similares a la de la cerveza negra, pero que concentran más el alcohol. 
//Por lo tanto, la graduación de una marca de cerveza roja se calcula multiplicando el valor que correspondería a una cerveza negra con la misma configuración, por 1.25.	
	override method graduacionDeAlcohol(){return super() *1.25)}
}
class Rubia inherits MarcasCerveza{
	var property graduacionDeAlcohol
	// Cada marca de cerveza rubia tiene una graduación distinta. 
	
}

object graduacion(){
	var property valor=10
}