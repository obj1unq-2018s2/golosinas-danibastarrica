object bombon {
	var peso = 15
	
	method precio() { return 5 }
	method peso() { return peso }
	method mordisco() { peso = peso * 0.8 - 1 }
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
}

object alfajor {
var  peso=300
	method peso() = peso
	method precio()= 12
	method gusto()= "chocolate"
	method mordisco(){peso = peso*0.8}
	method libreGluten()= false
	}

object caramelo {
	var  peso=5
	method peso() = peso
	method precio()= 1
	method gusto()= "frutilla"
	method mordisco(){peso -= 1}
	method libreGluten()= true
}

object chupetin {
	var peso=7
	method precio()= 2
	method gusto()= "naranja"
	method peso() = peso
	method mordisco(){peso = if (peso>2) peso*0.9 else peso  }
	method libreGluten()= true
	
}

object oblea {
	var  peso=250
	method peso() = peso
	method precio()= 5
	method gusto()= "vainilla"
	method mordisco(){peso = if (peso>70) peso*0.5 else peso*0.75}
	method libreGluten()= false
}

object chocolatin {
	// hay que acordarse de *dos* cosas, el peso inicial y el peso actual
	// el precio se calcula a partir del precio inicial
	// el mordisco afecta al peso actual
	var pesoInicial
	var pesoActual
	method peso()= pesoActual
	
	method precio()= pesoInicial* 0.50
	method gusto()= "chocolate"
	method mordisco() {pesoActual-=2}
	method libreGluten()= false
	
	/* al principio, el peso actual coincide con el inicial */
	method pesoInicial(cuanto) { 
		pesoInicial = cuanto
		pesoActual = cuanto
	}
}

object golosinaBaniada {
	var golosinaInterior
	var pesoBanio = 4
	
	method baniaA(unaGolosina) { golosinaInterior = unaGolosina }
	method precio()= {golosinaInterior.precio() +2 }
	method peso()= {return golosinaInterior.peso() + pesoBanio}
	method mordisco() {
		golosinaInterior.mordisco()
		if (pesoBanio > 0) { pesoBanio -= 2 }
		// otra forma de hacer la cuenta: pesoBanio = (pesoBanio - 2).max(0) 
	}	
	method gusto() { return golosinaInterior.gusto() }
	method libreGluten() {golosinaInterior.libreGluten() }	
}

object tuttifrutti {
	var saboresPosibles= ["frutilla","chocolate", "naranja"]
	var saborActual=0
	var peso= 5
	var property libreGluten =false
	method peso()= peso
	method precio()= if (libreGluten) 7 else 10
    method gusto() = saboresPosibles.get(saborActual)
    method mordisco(){ saborActual = (saborActual + 1) % 3 }
	// como manejar el cambio de sabor ??
}

