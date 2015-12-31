//
//  ViewController.swift
//  MasFeliz
//
//  Created by Koss on 28/12/15.
//  Copyright © 2015 ITESM. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var mensajePositivo: UILabel!
    
    let colores = Colores()
    let frases = Datos()
    
    @IBAction func dameUnMensajePositivo() {
        mensajePositivo.text = frases.regresaFrase()
        //print("Esto sera muy positivo")
        let colorAleatorio = colores.regresaColorAleatorio()
        view.backgroundColor = colorAleatorio
        view.tintColor = colorAleatorio
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

