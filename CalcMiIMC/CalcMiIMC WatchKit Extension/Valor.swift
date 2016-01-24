//
//  Valor.swift
//  CalcMiIMC
//
//  Created by Koss on 12/01/16.
//  Copyright © 2016 mine. All rights reserved.
//

import WatchKit

class Valor: NSObject {
    var descripcion:String = ""
    var valorIMC:Float = 0
    init(d:String, v:Float) {
        
        descripcion = d
        valorIMC = v
        
    }
}
