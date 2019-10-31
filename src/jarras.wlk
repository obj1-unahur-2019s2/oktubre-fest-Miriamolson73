import marcas_cerveza.*

class Jarra {
//En la fiesta, la cerveza se vende en **jarras**. De cada jarra de cerveza sabemos su capacidad en litros y de qué marca es.	
	var property capacidad
	var property marca
	method porcentajeDeAlcohol(){return marca.graduacionDeAlcohol()}
	method contenidoDeAlcohol(){return self.porcentajeDeAlcohol()*capacidad}
}
