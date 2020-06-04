import wollok.game.*


class ChevroletCorsa {
	var property color
	var property position
	const property ultimasPosiciones = []
	
	method capacidad() {
		return 4
	}
	method velocidadMaxima() {
		return 150
	}
	method peso() {
		return 1300
	}
	method cambiarPosicion(posicionX, posicionY) {
		 self.position(game.at(posicionX, posicionY))
		 ultimasPosiciones.add(self.position())
	}
	method pasoPor(other) {
		
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
		return azul
	}
}

class AutoEspecial {
	var property capacidad
	var property velocidadMaxima
	var property peso
	var property color

}

object rojo {}
object blanco {}
object azul {}
object negro {}
object beige {}
object verde {}




