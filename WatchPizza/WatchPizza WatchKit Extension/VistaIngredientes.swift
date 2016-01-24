//
//  VistaIngredientes.swift
//  WatchPizza
//
//  Created by Koss on 22/01/16.
//  Copyright © 2016 mine. All rights reserved.
//

import WatchKit
import Foundation


class VistaIngredientes: WKInterfaceController {
    
    var contexto:[String]?
    var ingredientes:[String] = []
    var selIngredientes = 0
    
    var ing = [String:Bool]()
    
    @IBOutlet var aceitunas: WKInterfaceSwitch!
    @IBOutlet var anchoas: WKInterfaceSwitch!
    @IBOutlet var cebollas: WKInterfaceSwitch!
    @IBOutlet var jamones: WKInterfaceSwitch!
    @IBOutlet var pavos: WKInterfaceSwitch!
    @IBOutlet var pepperonis: WKInterfaceSwitch!
    @IBOutlet var pimientos: WKInterfaceSwitch!
    @IBOutlet var pinas: WKInterfaceSwitch!
    @IBOutlet var salchichas: WKInterfaceSwitch!
    
    @IBAction func aceitunaAccion(value: Bool) {
        if value && selIngredientes < 5 {
            selIngredientes++
            ingredientes.append("aceituna")
            print(ingredientes)
        }
         else if (value && selIngredientes == 5) {
                disableSwitches()
            aceitunas.setOn(false)
            }
        else {
            selIngredientes--
            deleteListImtem("aceituna")
            print(ingredientes)
        }
    }
    @IBAction func anchoaAccion(value: Bool) {
        if value && selIngredientes < 5 {
            selIngredientes++
            ingredientes.append("anchoa")
            print(ingredientes)
        }
        else if (value && selIngredientes == 5) {
            disableSwitches()
            anchoas.setOn(false)
        }
        else if !value {
            selIngredientes--
            deleteListImtem("anchoa")
            print(ingredientes)
        }
    }
    @IBAction func cebollaAccion(value: Bool) {
        if value && selIngredientes < 5 {
            selIngredientes++
            ingredientes.append("cebolla")
            print(ingredientes)
        }
        else if (value && selIngredientes == 5) {
            disableSwitches()
            cebollas.setOn(false)
        }
        else if !value{
            selIngredientes--
            deleteListImtem("cebolla")
            print(ingredientes)
        }
    }
    @IBAction func jamonAccion(value: Bool) {
        if value && selIngredientes < 5 {
            selIngredientes++
            ingredientes.append("jamón")
            print(ingredientes)
        }
        else if (value && selIngredientes == 5) {
            disableSwitches()
            jamones.setOn(false)
        }
        else if !value {
            selIngredientes--
            deleteListImtem("jamón")
            print(ingredientes)
        }
    }
    @IBAction func pavoAccion(value: Bool) {
        if value && selIngredientes < 5 {
            selIngredientes++
            ingredientes.append("pavo")
            print(ingredientes)
        }
        else if (value && selIngredientes == 5) {
            disableSwitches()
            pavos.setOn(false)
        }
        else if !value {
            selIngredientes--
           deleteListImtem("pavo")
            print(ingredientes)
        }
    }
    @IBAction func pepperoniAccion(value: Bool) {
        if value && selIngredientes < 5 {
            selIngredientes++
            ingredientes.append("pepperoni")
            print(ingredientes)
        }
        else if (value && selIngredientes == 5) {
            disableSwitches()
            pepperonis.setOn(false)
        }
        else if !value {
            selIngredientes--
            deleteListImtem("pepperoni")
            print(ingredientes)
        }
    }
    @IBAction func pimpientoAccion(value: Bool) {
        if value && selIngredientes < 5 {
            selIngredientes++
            ingredientes.append("pimiento")
            print(ingredientes)
        }
        else if (value && selIngredientes == 5) {
            disableSwitches()
            pimientos.setOn(false)
        }
        else if !value{
            selIngredientes--
            deleteListImtem("pimiento")
            print(ingredientes)
        }
    }
    @IBAction func pinaAccion(value: Bool) {
        if value && selIngredientes < 5 {
            selIngredientes++
            ingredientes.append("piña")
            print(ingredientes)
        }
        else if (value && selIngredientes == 5) {
            disableSwitches()
            pinas.setOn(false)
        }
        else if !value {
            selIngredientes--
            deleteListImtem("piña")
            print(ingredientes)
        }
    }
    @IBAction func salchichaAccion(value: Bool) {
        if value && selIngredientes < 5 {
            selIngredientes++
            ingredientes.append("salchicha")
            print(ingredientes)
        }
        else if (value && selIngredientes == 5) {
            disableSwitches()
            salchichas.setOn(false)
        }
        else if !value {
            selIngredientes--
            print(ingredientes)
            deleteListImtem("salchicha")
        }
    }
    
    func deleteListImtem(element: String) {
        ingredientes = ingredientes.filter() { $0 != element }
    }
    
    func disableSwitches () {
        let h0 = { print("ok")}
        let action1 = WKAlertAction(title: "OK", style: .Default, handler:h0)
        presentAlertControllerWithTitle("Solamente puede seleccionar cinco ingredientes!", message: "", preferredStyle: .ActionSheet, actions: [action1])
    }

    func guardarSeleccion() -> Bool {
        
        if selIngredientes > 5 {
            print("bigger 5")
            //disableSwitches()
            return false
        }
        else {
            print("smaller 5")
            //enableSwitches()
            return true
        }
    }
    
    @IBAction func pedidoButton() {
        let h0 = { print("ok")}
        let action1 = WKAlertAction(title: "OK", style: .Default, handler:h0)
        if selIngredientes == 0 {
            presentAlertControllerWithTitle("Por favor, selecciona al menos un ingrediente!", message: "", preferredStyle: .ActionSheet, actions: [action1])
        }
        else {
            let c = [contexto!, ingredientes]
            print(c)
            pushControllerWithName("pedidoFinal", context:c)
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
