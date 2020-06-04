import dependencias.*

class ChevroletCorsa {
	var property color
	
	method capacidad() {
		return 4
	}
	method velocidadMaxima() {
		return 150
	}
	method peso() {
		return 1300
	}
}

class RenaultKwid {
	var property tanqueAdicional 
	
	method capacidad() {
		return if (not tanqueAdicional) {4} else {3}
	}
	method velocidadMaxima() {
		return if (not tanqueAdicional) {110} else {120}
	}
	method peso() {
		return if (not tanqueAdicional) {1200} else {1350}
	}
	method color() {
		return "Azul"
	}
}

class AutoEspecial {
	var property capacidad
	var property velocidadMaxima
	var property peso
	var property color

} 
