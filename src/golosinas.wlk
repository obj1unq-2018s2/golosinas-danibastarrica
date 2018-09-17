object bombon {
	var property peso =15		
	method precio()=5
	method sabor()= "frutilla"
	method recibeMordisco(){ peso = (peso*0.8)-1}
	method esLibreDeGluten() = true
	
}

object alfajor {
	var property peso=300
	method precio()= 12
	method sabor()= "chocolate"
	method recibeMordisco(){peso = peso*0.8}
	method esLibreDeGluten()= false
	
}

object caramelo {
	var property peso=5
	method precio()= 1
	method sabor()= "frutilla"
	method recibeMordisco(){peso -=1}
	method esLibreDeGluten()= true
	
}

object chupetin {
	var property peso=7
	method precio()= 2
	method sabor()= "naranja"
	method recibeMordisco(){peso = if (peso>2) peso*0.9 else peso  }
	method esLibreDeGluten()= true
	
}
object oblea {
	var property peso=250
	method precio()= 5
	method sabor()= "vainilla"
	method recibeMordisco(){peso = if (peso>70) peso*0.5 else peso*0.75}
	method esLibreDeGluten()= false
	
}
object chocolatin {
	var property peso
	var property pesoInicial
	method precio()= pesoInicial* 0.50
	method sabor()= "chocolate"
	method recibeMordisco() {peso-=2}
	method esLibreDeGluten()= false
	
}

object golosinaBañada {
	var property golosinaDebase
	var pesoBañado=4
	
	method bañarA(golosina) {
		return golosinaDeBase= golosina
	}
	method peso()= peso.golosinaDeBase +4
	method precio()= precio.golosinaDeBase +2
	method sabor()= golosinaDebase.sabor
	method recibeMordisco(){peso = golosinaDeBase.recibeMordisco if (pesoBañado<0){ peso-=2}
	method esLibreDeGluten()= golosinaDebase.esLibreDeGluten 
	
}
object pastillaTuttiFrutti {
	var property peso=5
	var property esLibreDeGluten =false
	method precio()= if (esLibreDeGluten) 7 else 5
	method sabores()= "chocolate"
	method recibeMordisco() 
	
	
}
}