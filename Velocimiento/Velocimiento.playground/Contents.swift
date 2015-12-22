//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init (velocidadInicial: Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    var velocidad = Velocidades(velocidadInicial: .VelocidadMedia)
    
    init () {
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String) {
        let actual = auto.velocidad.rawValue
        let velocidadEnCadenda = (auto.velocidad)
        if actual == 0 {
            auto.velocidad = .VelocidadBaja
        }
        else if actual == 20 {
            auto.velocidad = .VelocidadMedia
        }
        else if actual == 50 {
            auto.velocidad = .VelocidadAlta
        }
        else if actual == 120 {
            auto.velocidad = .VelocidadMedia
        }
     
    return (actual, String(velocidadEnCadenda))
    }
}
var auto  = Auto()

for i in 1...20 {
    var cambio = auto.cambioDeVelocidad()
    print(cambio)
}

//var test1 = Velocidades(velocidadInicial: .VelocidadMedia)
//test1.rawValue
//var test2 = Velocidades(rawValue: 20)
//test2
//auto.velocidad
//auto.velocidad.rawValue
//auto.velocidad = .VelocidadMedia
//var test3 = Velocidades(Velocidades: 20)
//test3






