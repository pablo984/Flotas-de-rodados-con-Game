import wollok.game.*


class ChevroletCorsa {
	var property color
	var property image = "autitorojo.png"
	var property position
	const property misPosiciones = []
	
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
		 misPosiciones.add(self.position())
	}
	method pasoPor(unaPosicion) {
		return misPosiciones.contains(unaPosicion)
	}
	/*Método adicional*/
	method soloLosDelEjeX() {
		return misPosiciones.map({ pos => pos.x() })
	}
	method pasoPorFila(numero) {
		return self.soloLosDelEjeX().contains(numero)
	}	
	method recorrioFilas(listaNumeros) {
		return self.soloLosDelEjeX().all({ pos => listaNumeros.contains(pos) })
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

object rojo {
	method image() {
		return "autitorojo.png"
	}
}
object blanco {}
object azul {
	method image() {
		return "autitoazul.png"
	}
}
object negro {}
object beige {}
object verde {
	method image() {
		return "autitoverde.png"
	}
}




