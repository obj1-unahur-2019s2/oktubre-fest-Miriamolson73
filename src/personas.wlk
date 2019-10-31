import jarras.*
class Persona{	
	var property peso
	var jarrasCompradas=[]
	var property leGustaEcucharMusica
	var property nivelDeAguante=10
	method comprarJarra(marca,cantidad){
		
		jarrasCompradas.add(new Jarra(marca=self.crearNuevaCerveza(marca),capacidad=cantidad))
		
	}
	method crearNuevaCerveza(marca){
		var nombre=new Marca()
		return nombre
	}
	method estaEbria(){
		self.cantidadDeAlcoholQueIngirio()*peso>nivelDeAguante	}
	method cantidadDeAlcoholQueIngirio(){return
		jarrasCompradas.sum({jarra=>jarra.capacidad()})
	}
	method teGustaEstaMarca(marca){}
	}

		
/*	}
	method cantidadDeGraduacionBelga(){ jarrasCompradas.sum({jarra=>jarra.capacidad()})}
		De cada persona se sabe su peso, las jarras de cerveza que compró hasta el momento, si le gusta escuchar música tradicional o no, y su nivel de aguante, que es un número. 
		Una persona está ebria si la cantidad de alcohol que ingirió multiplicado por su peso supera su aguante. 


Se sabe que a los belgas les gusta solamente la cerveza con más de 4 gramos de lúpulo por litro, 
a los checos les gustan las cervezas de más de 8 % de graduación (ver abajo qué es la graduación de la cerveza), a los alemanes les gustan todas.
	
	
}*/
class Belga inherits Persona{
	override method tegustaEstaMarca(marca){
		return marca.gramosDeLupulo()>4
	}
}
class Checos inherits Persona{
	override method tegustaEstaMarca(marca){
		return marca.graduacionDeAlcohol()>8
	}
	
	}
class Alemanes inherits Persona{
	override method tegustaEstaMarca(marca){
		return true
	}	
	}
	
	
	
	
	
	
	
	
	