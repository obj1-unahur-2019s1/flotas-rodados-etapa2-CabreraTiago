class Pedido {

	var property distancia
	var property tiempoMaximo
	var property cantPasajeros
	var property coloresIncompatibles = #{}

	method velocidadRequerida() {
		return distancia / tiempoMaximo
	}

	method cumpleVelocidadMaxima(rodado) {
		return (rodado.velocidadMaxima() - self.velocidadRequerida()) > 10
	}

	method tieneCapacidadSuficiente(rodado) {
		return rodado.capacidad() >= cantPasajeros
	}

	method esColorCompatible(rodado) {
		return not coloresIncompatibles.contains(rodado.color())
	}

	method satisfacePedido(rodado) {
		return self.cumpleVelocidadMaxima(rodado) and self.tieneCapacidadSuficiente(rodado) and self.esColorCompatible(rodado)
	}

	method acelerar() {
		tiempoMaximo--
	}

	method relajar() {
		tiempoMaximo++
	}

}

