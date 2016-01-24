//
//  VistaDetalle.swift
//  CalcIMC
//
//  Created by Koss on 12/01/16.
//  Copyright © 2016 mine. All rights reserved.
//

import WatchKit
import Foundation


class VistaDetalle: WKInterfaceController {

    @IBOutlet var etiquetaResultado: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let c = context as! Valor
        etiquetaResultado.setText(String(c.valorIMC) + " " + c.descripcion)
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
