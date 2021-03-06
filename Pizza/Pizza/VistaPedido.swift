//
//  VistaPedido.swift
//  Pizza
//
//  Created by Koss on 09/01/16.
//  Copyright © 2016 ITESM. All rights reserved.
//

import UIKit

class VistaPedido: UIViewController {
    
    var resultado = [String]()
    

    @IBOutlet weak var envPed: UIButton!
    @IBOutlet weak var verPedido: UILabel!
    
    @IBAction func enviarPedido(sender: AnyObject) {
        
        let refreshAlert = UIAlertController(title: "Enviar Pedido", message: "Estas seguro?", preferredStyle: UIAlertControllerStyle.Alert)
        
        refreshAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { (action: UIAlertAction!) in
            let alert = UIAlertController(title: "Gracias!", message: "Tu pedido ha enviado a la cocina. Muchas gracias por tu pedido y que aproveche!", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            self.verPedido.text = ""
            self.envPed.enabled = false
            
        }))
        
        refreshAlert.addAction(UIAlertAction(title: "Cancel", style: .Default, handler: { (action: UIAlertAction!) in
            print("Handle Cancel Logic here")
        }))
        
        presentViewController(refreshAlert, animated: true, completion: nil)
        self.navigationController?.popToRootViewControllerAnimated(true)
        
        
        
    }
    
        override func viewWillAppear(animated: Bool) {
        print(resultado)
        let resToString = resultado.joinWithSeparator("\n")
        print(resToString)
        verPedido.text = resToString
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.title = "Tu Pizza"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
