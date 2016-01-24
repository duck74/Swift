//
//  InterfaceController.swift
//  CalcIMC WatchKit Extension
//
//  Created by Koss on 12/01/16.
//  Copyright © 2016 mine. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    var pesoActual:Float = 1
    var estaturaActual:Float = 1
    
    @IBOutlet var valorPeso: WKInterfaceLabel!
    @IBOutlet var valorEstatura: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    
    @IBAction func accionCalcular() {
        let resultado = calcularIMC(pesoActual, estatura: estaturaActual)
        print("Resultado \(resultado)")
        print(resultado)
        let valorContexto = Valor(d: resultado.0, v: resultado.1)
        pushControllerWithName("IdentificadorValor", context: valorContexto)
        print(resultado)
    }
    
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func calcularIMC(peso:Float, estatura:Float) -> (descr: String, imc:Float) {
        var descr = ""
        let myIMC = peso / (estatura * estatura)
        
        switch myIMC {
        case 0...18.5:
            descr = "Falta Peso"
        case 18.5...24.9:
            descr = "Peso Normal"
        case 25...29.9:
            descr = "Sobrepeso"
        case 30...50:
            descr = "No es sano :("
        default:
            print("Tu IMC")
        }
       
        return (descr, myIMC)
    }
    
    @IBAction func cambiarPeso(value: Float) {
        pesoActual = value
        valorPeso.setText(String(pesoActual))
    }

    @IBAction func cambiarEstatura(value: Float) {
        estaturaActual = value/100 //para obtiene un valor de metros y centimetros
        valorEstatura.setText(String(estaturaActual))
        
    }
}
