import golosinas.*

object mariano {
	var bolsaDeGolosinas = []
	
	method compra(golosina) {
		bolsaDeGolosinas.add(golosina)
	}
	method desecha(golosina) {
		bolsaDeGolosinas.remove(golosina)
	}
	method cantidadDeGolosinas() {
		return bolsaDeGolosinas.size()
	}
	method tieneLaGolosina(golosina) {
		return bolsaDeGolosinas.contains(golosina)
	}
	method probarGolosinas() {
		bolsaDeGolosinas.forEach ({golosina => golosina.mordisco()})
	}
	method hayGolosinaSinTACC() {
		return bolsaDeGolosinas.any ({golosina => golosina.gluten() == !true})
	}
	method preciosCuidados() {
		return bolsaDeGolosinas.all ({golosina => golosina.precio() <= 10})
	}
	method golosinaDeUnSabor(unGusto) {
		return bolsaDeGolosinas.find ({golosina => golosina.gusto() == unGusto})
	}
	method golosinasDeSabor(unGusto) {
		return bolsaDeGolosinas.filter ({golosina => golosina.gusto() == unGusto})
	}
	method sabores() {
		return bolsaDeGolosinas.map ({golosina => golosina.gusto()})
	}
	method golosinaMasCara() {
		return bolsaDeGolosinas.max ({golosina => golosina.precio()})
	}
	
}
