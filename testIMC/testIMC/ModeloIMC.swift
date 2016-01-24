//
//  ModeloIMC.swift
//  testIMC
//
//  Created by Koss on 20/01/16.
//  Copyright © 2016 mine. All rights reserved.
//

import Foundation

class ModeloIMC {
    var peso : Float = 0
    var estatura : Float = 0
    
    func IMC() ->Float{
        var mc = peso/(estatura*estatura)
        mc = round(mc*100)/100
        return mc
    }
}