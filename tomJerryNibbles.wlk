object tom {

var ratonComido = jerry

var energia = 50

var metrosRecorridos = 0

method energia () = energia


method comer(unRaton) {
    energia = energia + unRaton.peso()
    ratonComido = unRaton
}

method correr (metros) {
    metrosRecorridos = metrosRecorridos + metros
    energia = energia - metrosRecorridos/2 
    
}

method velocidadMaxima () = 5 + energia/10

method puedeCazar(distancia) =  energia >= distancia/2

method cazar(unRaton,unaDistancia) {
        if (self.puedeCazar(unaDistancia)) {
            self.correr(unaDistancia)            
            self.comer(unRaton)
        }

}

}

object jerry {
  var edad = 2
  method cumplirAños () {
    edad = edad +1
  }
  method peso () = edad * 20
}

object nibbles {
  method peso () = 35
}

// Inventar otro ratón

object jorgito {
    // jorgito puede cambiar su peso a voluntad
    var peso = 30
    method peso() {
        return peso
    }
    method peso(nuevoPeso) {
        peso = nuevoPeso
    }
}