//
//  VistaMasa.swift
//  WatchPizza
//
//  Created by Koss on 22/01/16.
//  Copyright © 2016 mine. All rights reserved.
//

import WatchKit
import Foundation


class VistaMasa: WKInterfaceController {

    @IBOutlet var delgada: WKInterfaceSwitch!
    @IBOutlet var crujiente: WKInterfaceSwitch!
    @IBOutlet var gruesa: WKInterfaceSwitch!
    //var seleccion:Bool = false
    var masa:String = ""
    var contexto:[String]?
    
    @IBAction func delgadaSwitch(value: Bool) {
        print(delgada)
        if value {
            masa = "delgada"
            crujiente.setEnabled(false)
            gruesa.setEnabled(false)
        }
        else {
            masa = ""
            crujiente.setEnabled(true)
            gruesa.setEnabled(true)
        }
    }
    @IBAction func crujienteSwitch(value: Bool) {
        if value {
            masa = "crujiente"
            delgada.setEnabled(false)
            gruesa.setEnabled(false)
        }
        else {
            masa = ""
            delgada.setEnabled(true)
            gruesa.setEnabled(true)

        }
    }
    
    @IBAction func gruesaSwitch(value: Bool) {
        if value {
            masa = "gruesa"
            delgada.setEnabled(false)
            crujiente.setEnabled(false)
        }
        else {
            masa = ""
            delgada.setEnabled(true)
            crujiente.setEnabled(true)
        }
    }
    
    @IBAction func masaButton() {
        
        //let context = ""
        let h0 = { print("ok")}
        let action1 = WKAlertAction(title: "OK", style: .Default, handler:h0)
        if masa == ""  {
            presentAlertControllerWithTitle("Por favor, selecciona el tipo de masa!", message: "", preferredStyle: .ActionSheet, actions: [action1])
        }
        else {
            print(masa)
            PedidoValues.pedidoArray.append(String(masa))
            contexto!.append(masa)
            //PedidoValues().pedidoArray.append(masa)
            //masaValor.pedidoArray.append(masa)
            print(PedidoValues.pedidoArray.append(masa))
            print(contexto)
            pushControllerWithName("queso", context:contexto)
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
