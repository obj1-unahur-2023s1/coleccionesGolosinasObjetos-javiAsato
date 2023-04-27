
object bombon {
	const precio = 5
	var peso = 15
	const gusto = "frutilla"
	const gluten = false
	
	method precio() {
		return precio
	}
	method peso() {
		return peso
	}
	method gusto() {
		return gusto
	}
	method gluten() {
		return gluten
	}
	method mordisco() {
		peso -= (peso * 0.8) - 1
		return peso	
	}
}

object alfajor {
	const precio = 12
	var peso = 300
	const gusto = "chocolate"
	const gluten = true
	
	method precio() {
		return precio
	}
	method peso() {
		return peso
	}
	method gusto() {
		return gusto
	}
	method gluten() {
		return gluten
	}
	method mordisco() {
		peso -= peso * 0.8
		return peso	
	}
}

object caramelo {
	const precio = 1
	var peso = 5
	const gusto = "frutilla"
	const gluten = false
	
	method precio() {
		return precio
	}
	method peso() {
		return peso
	}
	method gusto() {
		return gusto
	}
	method gluten() {
		return gluten
	}
	method mordisco() {
		peso -= 1
		return peso	
	}
}

object chupetin {
	const precio = 2
	var peso = 7
	const gusto = "naranja"
	const gluten = false
	
	method precio() {
		return precio
	}
	method peso() {
		return peso
	}
	method gusto() {
		return gusto
	}
	method gluten() {
		return gluten
	}
	method mordisco() {
		if (peso < 1) {
			return peso
		}
		else {
			peso -= peso * 0.9
			return peso
		}
	}
}

object oblea {
	const precio = 5
	var peso = 250
	const gusto = "vainilla"
	const gluten = false
	
	method precio() {
		return precio
	}
	method peso() {
		return peso
	}
	method gusto() {
		return gusto
	}
	method gluten() {
		return gluten
	}
	method mordisco() {
		if (peso > 70)	{
			peso -= peso * 0.5
			return peso
		}
		else {
			peso -= peso * 0.75
			return peso
		}
	}
}

object chocolatin {
	var pesoInicial = 0
	var peso = 0
	const gusto = "chocolate"
	const gluten = true
	
	method precio() {
		return 0.5 * pesoInicial
	}
	method peso(grs) {
		pesoInicial = grs
		peso = grs
		return peso
	}
	method gusto() {
		return gusto
	}
	method gluten() {
		return gluten
	}
	method mordisco() {
		peso -= 2
		return peso	
	}
}

object golosinaBaniada {
	var precio = golosinaBase.precio() + 2
	var peso = golosinaBase.peso() + 4
	var gusto = golosinaBase.gusto()
	var gluten = golosinaBase.gluten()
	var golosinaBase = 0
	
	method golosinaBase(golosina) {
		golosinaBase = golosina
		return golosinaBase
	}
	method precio() {
		return precio
	}
	method peso() {
		return peso
	}
	method gusto() {
		return gusto
	}
	method gluten() {
		return gluten
	}
	method mordisco() {
		peso -= 2
		return peso	
	}
}

object pastillaTuttiFrutti {
	var precio = 0
	const peso = 5
	var gusto = "frutilla"
	var gluten = true
	
	method precio() {
		if (gluten == !true) {
			precio = 7
		}
		else {
			precio = 10
		}
		return precio
	}
	method peso() {
		return peso
	}
	method gusto() {
		if (gusto == "frutilla") {
			gusto = "naranja"
		}
		if (gusto == "naranja") {
			gusto = "frutilla"
		}
		return gusto
	}
	method asignarGluten(n) {
		if (n <= 0) {
			gluten = false
		}
		else {
			gluten = true
		}
		return gluten
	}
	method gluten() {
		return gluten
	}
}