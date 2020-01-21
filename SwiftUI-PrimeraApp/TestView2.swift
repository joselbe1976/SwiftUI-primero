//
//  TestView2.swift
//  SwiftUI-PrimeraApp
//
//  Created by Jose Luis on 20/01/2020.
//  Copyright © 2020 Jose Luis. All rights reserved.
//

import SwiftUI

struct TestView2: View {

    @State var dateChosen = Date()

    var body: some View {
        VStack{
            
        Text("Date Picker")
            .font(.largeTitle)
            Text("\(dateChosen)")
            
        // Es $variable se le pasa donde quiero que me cambien la fecha cuando seleciconamos. Le pasamos la referencia de dateChosen
        //    El idioma del calendario va por ssoo y proyecto
            DatePicker(selection: $dateChosen,
                       displayedComponents: .hourAndMinute, label: { Text("Alta") })
            
            // asi el DatePicker se oculta
            Form{
                DatePicker(selection: $dateChosen,
                                      displayedComponents: .hourAndMinute, label: { Text("Fecha de Baja") })
            }
        
        }
            
        
    }
}

struct TestView2_Previews: PreviewProvider {
    static var previews: some View {
        TestView2()
    }
}
