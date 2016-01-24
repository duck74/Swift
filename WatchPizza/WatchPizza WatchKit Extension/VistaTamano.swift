//
//  VistaTamano.swift
//  WatchPizza
//
//  Created by Koss on 22/01/16.
//  Copyright © 2016 mine. All rights reserved.
//

import WatchKit
import Foundation


class VistaTamano: WKInterfaceController {

    @IBOutlet var tamanoButton: WKInterfaceButton!
    @IBOutlet var selTamano: WKInterfaceLabel!
    @IBOutlet var tamanoSlider: WKInterfaceSlider!
    
    var contexto:[String]?
    
    var tamano:String = ""
    
    @IBAction func tamanoAccion(value: Float) { //Slider
        print(round(value))
        if (value == 1.0) {
            selTamano.setText("chica")
            tamano = "chica"
        }
        else if (value == 2.0){
            selTamano.setText("mediana")
            tamano = "mediana"
        }
        else if (value == 3.0){
            selTamano.setText("grande")
            tamano = "grande"
        }
        else {
            selTamano.setText("Tamaño")
            tamano = ""
        }

    }
    @IBAction func tamanoAccion() { //Button
        //var context = ""
        let h0 = { print("ok")}
        let action1 = WKAlertAction(title: "OK", style: .Default, handler:h0)
        if tamano == "" {
            presentAlertControllerWithTitle("Por favor, selecciona el tamaño!", message: "", preferredStyle: .ActionSheet, actions: [action1])
        }
        else {
            PedidoValues.pedidoArray.append(String(tamano))
            contexto!.append(tamano)
            print(contexto)
            //tamanoValor.append(tamano)
           //print(PedidoValues.myString)
            print(PedidoValues.pedidoArray)
            pushControllerWithName("masa", context:contexto)
        }
        
    }
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        contexto = (context as! [String])
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
