import rodados.*
import trafic.*

class Dependencia {
	const property flota = []
	var property empleados
	
	method agregarRodado(unRodado) {
		flota.add(unRodado)
	}
	method quitarRodado(unRodado) {
		flota.remove(unRodado)
	}
	method pesoTotalFlota() {
		return flota.sum({ rod => rod.peso() })
	}
	method estaBienEquipada() {
		return flota.size() >= 3 and 
				 flota.all({ rod => rod.velocidadMaxima() >= 100 }) 
	}
	method capacidadTotalEnColor(color) {
		return flota.filter({ rod => rod.color() == color }).sum({ rod => rod.capacidad() })
	}
	method colorDelRodadoMasRapido() {
		return flota.max({ rod => rod.velocidadMaxima() }).color()
	}
	/*Método Auxiliar*/
	method capacidadTotalDeLaFlota() {
   		return flota.sum({ rod => rod.capacidad() })
	}	
	method capacidadFaltante() {
		return 0.max(self.empleados() - self.capacidadTotalDeLaFlota())
	}
	method esGrande() {
		return self.empleados() >= 40 and flota.size() >= 5
	}
}

object interior {
	var property capacidad
	var property peso	
}

object motor {
	var property velocidadMaxima
	var property peso
}

object pedido {
	var property distanciaARecorrer
	var property tiempoMaximo
	var property pasajerosATransportar
	var property coloresIncompatibles =#{}
	
	method velocidadRequerida() {
		return distanciaARecorrer / tiempoMaximo
	}
	/*Método Adicional*/
	method supera10kms(unRodado) {
		return 0.max(unRodado.velocidadMaxima() - self.velocidadRequerida()) > 10
	}
	/*Método Adicional*/
	method entranTodosEn(unRodado) {
		return unRodado.capacidad() >= pasajerosATransportar
	}
	/*Método Adicional*/
	method tieneColorIncompatible(unRodado) {
		return coloresIncompatibles.contains(unRodado.color())
	}
	method puedeSatisfacerUnPedido(unRodado) {
		 return self.supera10kms(unRodado) and self.entranTodosEn(unRodado) and not self.tieneColorIncompatible(unRodado) 
	}
	method acelerar() {
		tiempoMaximo = tiempoMaximo - 1
	}
	method relajar() {
		tiempoMaximo = tiempoMaximo + 1
	}
}
