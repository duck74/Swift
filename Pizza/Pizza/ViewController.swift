//
//  ViewController.swift
//  Pizza
//
//  Created by Koss on 08/01/16.
//  Copyright © 2016 ITESM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var selTamano: UILabel!
    @IBOutlet weak var selMasa: UILabel!
    @IBOutlet weak var selQueso: UILabel!
    @IBOutlet weak var selIngredientes: UILabel!
    var ingredientesString :String = ""
    @IBAction func selTamano(sender: AnyObject) {
        
    }
    
    @IBAction func verPedidoButton(sender: AnyObject) {
        testPedidoCompleto()
    }
    
    @IBAction func cancelToViewController(segue:UIStoryboardSegue) {
        print("In view controller cancel")
        
    }
    
    @IBAction func saveTamanoSelection(segue:UIStoryboardSegue) {
        
        if let tamanoViewController = segue.sourceViewController as? VistaTamano {
            selTamano.text = tamanoViewController.sendTamano
            
        }
    }
    
    @IBAction func saveMasaSelection(segue:UIStoryboardSegue) {
        
        if let masaViewController = segue.sourceViewController as? VistaMasa {
            selMasa.text = masaViewController.sendMasa
            
        }
    }

    @IBAction func saveQuesoSelection(segue:UIStoryboardSegue) {
        
        if let quesoViewController = segue.sourceViewController as? VistaQueso {
            selQueso.text = quesoViewController.sendQueso
            
        }
    }
    
    @IBAction func saveIngredientesSelection(segue:UIStoryboardSegue) {
        
        if let ingredientesViewController = segue.sourceViewController as? VistaIngredientes {
            print(ingredientesViewController.sendIngredientes)
            ingredientesString = ingredientesViewController.sendIngredientes.joinWithSeparator(" - ")
            selIngredientes.text = ingredientesString
            
        }
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        
        if identifier == "verPedidoSegue" {
            let segueShouldOccur = testPedidoCompleto()
            
            if segueShouldOccur == false {
                
                let alert = UIAlertController(title: "Alert", message: "Lo siento, tu pedido no ya esta completo", preferredStyle: UIAlertControllerStyle.Alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
                self.presentViewController(alert, animated: true, completion: nil)
                print(segueShouldOccur)
                return false
            }
            else {
                print(segueShouldOccur)
                return true
            }
        }
        
        // by default, transition
        return true
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        let resultado = ["Tamano: \(selTamano.text!)", "Masa: \(selMasa.text!)", "Queso: \(selQueso.text!)", "Ingredientes: \(ingredientesString)"]
        if segue.identifier == "verPedidoSegue" {
            let pedidoViewController = segue.destinationViewController as! VistaPedido
            pedidoViewController.resultado = resultado
        }
    }

    
    override func viewWillAppear(animated: Bool) {
        //self.navigationItem.title = "Crear tu misma Pizza!"
    }
    
    func testPedidoCompleto() -> Bool {
        if ((selTamano.text!.isEmpty) || (selMasa.text!.isEmpty) || (selQueso.text!.isEmpty) || selIngredientes.text!.isEmpty){
        return false
        }
        else {
            return true
        }
    }
    
    func viewWillAppear() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

