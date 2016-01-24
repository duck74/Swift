//
//  InterfaceController.swift
//  CalcMiIMC WatchKit Extension
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

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func accionCalcular() {
        let resultado = calcularIMC(pesoActual, estatura: estaturaActual)
        let valorContexto = Valor(d: "Peso Normal", v: resultado)
        pushControllerWithName("IdentificadorValor", context: valorContexto)
        print(resultado)
    }
    func calcularIMC(peso:Float, estatura:Float) -> Float {
        let IMC = peso / (estatura * estatura)
        return IMC
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
