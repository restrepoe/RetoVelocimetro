//: Reto Velocimetro : Esteban Restrepo

import UIKit

enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades){
        self = velocidadInicial
    }
}

class Auto{
    var velocidad :Velocidades
    
    init(){
        velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad () -> (Int, String){
        var velocidadActual : Int = velocidad.rawValue
        var velocidadEnCadena : String = ""
        
        switch velocidadActual{
        case Velocidades.Apagado.rawValue:
            velocidad = .VelocidadBaja
            velocidadEnCadena = "Velocidad baja"
        case Velocidades.VelocidadBaja.rawValue:
            velocidad = .VelocidadMedia
            velocidadEnCadena = "Velocidad media"
        case Velocidades.VelocidadMedia.rawValue:
            velocidad = .VelocidadAlta
            velocidadEnCadena = "Velocidad alta"
        case Velocidades.VelocidadAlta.rawValue:
            velocidad = .VelocidadMedia
            velocidadEnCadena = "Velocidad media"
        case Velocidades.Apagado.hashValue:
            velocidad = .Apagado
            velocidadEnCadena = "Apagado"
        default:
            "none"
        }
        velocidadActual = velocidad.rawValue
        return (velocidadActual, velocidadEnCadena)
    }
    
}

var auto = Auto()

var velocidadActual : Int
var velocidadEnCadena : String


for x in 0...19 {
    (velocidadActual: velocidadActual, velocidadEnCadena : velocidadEnCadena) = auto.cambioDeVelocidad()
    print("\(velocidadActual), \(velocidadEnCadena)")
}


