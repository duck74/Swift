//
//  VistaPedidoFinal.swift
//  WatchPizza
//
//  Created by Koss on 22/01/16.
//  Copyright © 2016 mine. All rights reserved.
//

import WatchKit
import Foundation


class VistaPedidoFinal: WKInterfaceController {

    

    @IBOutlet var masa: WKInterfaceLabel!
    @IBOutlet var tamano: WKInterfaceLabel!
    @IBOutlet var queso: WKInterfaceLabel!
    @IBOutlet var ingredientes: WKInterfaceLabel!
    
    
    @IBAction func pedirFinalAccion() {
        let h0 = { print("ok")}
        
        let action3 = WKAlertAction(title: "OK", style: .Destructive) {
            let contexto: [String] = []
            self.pushControllerWithName("controllerInicial", context: contexto)
        }
        let action1 = WKAlertAction(title: "Pedir", style: .Default) {
            self.presentAlertControllerWithTitle("Gracias para pedido!", message: "", preferredStyle: .ActionSheet, actions: [action3])
        }
        let action2 = WKAlertAction(title: "Cancelar", style: .Destructive) {}
        //let action3 = WKAlertAction(title: "Cancel", style: .Cancel) {}
        
        
        presentAlertControllerWithTitle("Cuando esta satisfado con tu seleccion, pulse pedir", message: "", preferredStyle: .ActionSheet, actions: [action1, action2])
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        
        // Configure interface objects here.
        let contexto = context as! [[String]]
        tamano.setText(contexto[0][0])
        masa.setText(contexto[0][1])
        queso.setText(contexto[0][2])
        let resToString = contexto[1].joinWithSeparator("\n")
        ingredientes.setText(resToString)
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
