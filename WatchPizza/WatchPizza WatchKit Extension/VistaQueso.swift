//
//  VistaQueso.swift
//  WatchPizza
//
//  Created by Koss on 22/01/16.
//  Copyright © 2016 mine. All rights reserved.
//

import WatchKit
import Foundation


class VistaQueso: WKInterfaceController {
    
    
    let quesos = ["mozarela", "cheddar", "parmesano", "sin queso"];
    var contexto:[String]?
    var sel_queso = "mozarela"
    
    @IBOutlet var quesoPicker: WKInterfacePicker!
    @IBAction func quesoPickerAccion(value: Int) {
        if value == 0{
            print("0")
            sel_queso = "mozarela"
        }
        if value == 1{
            sel_queso = "cheddar"
            print("1")
        }
        if value == 2{
            sel_queso = "parmesano"
            print("2")
        }
        if value == 3{
            sel_queso = "sin queso"
            print("3")
        }
    }
    @IBAction func quesoButton() {
        let h0 = { print("ok")}
        let action1 = WKAlertAction(title: "OK", style: .Default, handler:h0)
        if sel_queso == "" {
            presentAlertControllerWithTitle("Por favor, selecciona el queso!", message: "", preferredStyle: .ActionSheet, actions: [action1])
        }
        else {
            contexto!.append(sel_queso)
            print(contexto)
            pushControllerWithName("ingredientes", context:contexto)
        }
    }
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        var pickerItems: [WKPickerItem] = []
        
        for item in quesos {
            let queso = WKPickerItem()
            queso.title = item
            pickerItems.append(queso)
        }
        self.quesoPicker.setItems(pickerItems)
        
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
