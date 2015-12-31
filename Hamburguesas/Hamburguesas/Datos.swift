//
//  Datos.swift
//  Hamburguesas
//
//  Created by Koss on 30/12/15.
//  Copyright © 2015 ITESM. All rights reserved.
//

import Foundation
import UIKit

class ColeccionDePaises {
    var paises : [String] = ["España", "Mexico", "Estados Uniads", "Alemania", "Portugal", "Grecia", "Francia", "Austria", "Bolivia", "Columbia", "Noruega", "Suecia", "Columbia", "Uruguay", "Argentina", "Italia", "India", "Irán", "Suiza", "Finlandia"]
    
    func obtenPais( )->String {
        let pais =  Int(arc4random()) % paises.count
        return paises[pais]
    }
}
    class ColeccionDeHamburguesa {
        var hamburguesas : [String] = ["Cheeseburger", "Hamburger", "Bacon Burger", "Veggie Burger", "Tofu Burger", "Double Burger", "Salad Burger", "Special Burger", "Chorizo Burger", "Gambas Burger", "Beef Burger", "Royal Burger", "Double Cheese Burger", "Chicken Burger", "Fish Burger", "Grilled Double Burger", "Grilled Chicken Burger", "Chicken Nuggets Deluxe Burger", "Pork Burger", "Schnitzel Burger"]
    
    func obtenHamburguesa( )->String {
        let hamburguesa =  Int(arc4random()) % hamburguesas.count
        return hamburguesas[hamburguesa]
    }
    
}

struct Colores {
    let colores = [UIColor(red: 10/255, green: 200/255, blue: 188/255, alpha: 0.5),
        UIColor(red: 144/255, green: 233/255, blue: 7/255, alpha: 0.5),
        UIColor(red: 1/255, green: 23/255, blue: 110/255, alpha: 0.5),
        UIColor(red: 205/255, green: 5/255, blue: 18/255, alpha: 0.5),
        UIColor(red: 156/255, green: 98/255, blue: 167/255, alpha: 0.5),
        UIColor(red: 90/255, green: 156/255, blue: 233/255, alpha: 0.5),
        UIColor(red: 123/255, green: 78/255, blue: 8/255, alpha: 0.5),
        UIColor(red: 186/255, green: 123/255, blue: 67/255, alpha: 0.5)
    ]
    func regresaColorAleatorio () -> UIColor {
        let posicion = Int(arc4random()) % colores.count
        return colores[posicion]
    }
    
}
