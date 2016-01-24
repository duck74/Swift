//
//  InterfaceController.swift
//  WatchPizza WatchKit Extension
//
//  Created by Koss on 22/01/16.
//  Copyright © 2016 mine. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var crearPizza: WKInterfaceButton!
    @IBAction func empezarPedido() {
        let pedido = [String]()
        pushControllerWithName("tamano", context:pedido)
        
    }
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

}
