object mariano {

	// para este objeto no damos pistas
	// definimos algunos métodos para que compile el test
	var bolsaDeGolosinas = []

	// el return va sin llaves {}.
	method golosinas() {
		/* cambiar por la implementacion correcta */
		return bolsaDeGolosinas 
	}

	method comprar(golosina) = bolsaDeGolosinas.add(golosina)

	method desechar(unaGolosina) = bolsaDeGolosinas.remove(unaGolosina)

	method probarGolosinas() = bolsaDeGolosinas.forEach{ golosina => golosina.mordisco() }

	method hayGolosinaSinTACC() {
		return bolsaDeGolosinas.any({ golosina => golosina.libreGluten() })
	}

	// era <= no < =, hay un fallo en como wollok
	// lee el mensaje si lleva un espacio entremedio.
	method preciosCuidados() {
		return bolsaDeGolosinas.all({ golosina => golosina.precio() <= 10 })
	}

	// te falto un return en los metodos que seguian.
	method golosinaSabor(unSabor) {
		return bolsaDeGolosinas.find{ golosina => golosina.gusto() == unSabor}
	}

	method golosinasSabor(unSabor) {
		return bolsaDeGolosinas.filter{ golosina => golosina.gusto() == unSabor}
	}

	method sabores() {
		return bolsaDeGolosinas.map{ golosina => golosina.gusto()}.asSet()
	}

	method golosinaMasCara() {
		return bolsaDeGolosinas.max{ golosina => golosina.precio()}
	}

	method pesoGolosinas() {
		return bolsaDeGolosinas.sum{ golosina => golosina.peso()}
	}

	method golosinasFaltantes(golosinasDeseadas) {
		return golosinasDeseadas.asSet().difference(bolsaDeGolosinas.asSet())
	}

}

