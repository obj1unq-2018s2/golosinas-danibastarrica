


object mariano {
	// para este objeto no damos pistas
	// definimos algunos métodos para que compile el test
	var bolsaDeGolosinas=[]
	method golosinas() {
		/* cambiar por la implementacion correcta */ 
		return {bolsaDeGolosinas}
	}
	method comprar(golosina)= bolsaDeGolosinas.add(golosina) 
	
	method desechar(unaGolosina)=bolsaDeGolosinas.remove(unaGolosina)
	method probarGolosinas()=
		bolsaDeGolosinas.forEach {
			golosina=> golosina.mordisco()}
	
	method hayGolosinaSinTACC() { return bolsaDeGolosinas.any({golosina => golosina.libreGluten()}) }

	
	method preciosCuidados(){ return bolsaDeGolosinas.all ({golosina=>golosina.precio()< =10})}
		
	
	method golosinaSabor(unSabor){
		bolsaDeGolosinas.find {golosina => golosina.gusto () == unSabor}
	}
	
	method golosinasSabor(unSabor){
	bolsaDeGolosinas.filter {golosina => golosina.gusto () == unSabor}
	}
	
	method sabores () {
		 bolsaDeGolosinas.map {golosina => golosina.gusto ()} .asSet ()
		 }
	method golosinaMasCara () {
		bolsaDeGolosinas.max {golosina => golosina.precio ()}
		}
	method pesoGolosinas () {
		bolsaDeGolosinas.sum {golosina => golosina.peso ()}
		 }
		 
	method golosinasFaltantes(golosinasDeseadas) {
	 return golosinasDeseadas.asSet().difference(bolsaDeGolosinas.asSet())
