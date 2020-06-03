import dependencias.*

object trafic {
	var property unMotor
	var property unInterior
	
	method capacidad() {
		return interior.capacidad()
	}
	method velocidadMaxima() {
		return motor.velocidadMaxima()
	}
	method peso() {
		return interior.peso() + motor.peso() + 4000
	}
	method color() {
		return "Blanco"
	}
}
