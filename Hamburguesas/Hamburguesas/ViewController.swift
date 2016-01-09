//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Koss on 30/12/15.
//  Copyright © 2015 ITESM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nombreDelPais: UILabel!
    
    @IBOutlet weak var nombreDelHamburguesa: UILabel!
    
    let paises = ColeccionDePaises()
    let hamburguesas = ColeccionDeHamburguesa()
    let colores = Colores()
    
    @IBAction func dameUnHamburguesa() {
        let colorAleatorio = colores.regresaColorAleatorio()
        nombreDelHamburguesa.text = hamburguesas.obtenHamburguesa()
        nombreDelPais.text = paises.obtenPais()
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

