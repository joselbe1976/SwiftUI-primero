//
//  Model.swift
//  SwiftUI-PrimeraApp
//
//  Created by Jose Luis on 21/01/2020.
//  Copyright © 2020 Jose Luis. All rights reserved.
//

import Foundation


struct empleado : Identifiable{
    let id : Int
    let nombre : String
}

let empleados = [empleado(id: 1, nombre: "Jose luis bustos"), empleado(id: 12,nombre: "Gema llanos")]

