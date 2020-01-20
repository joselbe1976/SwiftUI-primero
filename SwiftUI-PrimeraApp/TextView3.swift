//
//  TextView3.swift
//  SwiftUI-PrimeraApp
//
//  Created by Jose Luis on 20/01/2020.
//  Copyright © 2020 Jose Luis. All rights reserved.
//

import SwiftUI

struct TextView3: View {
    
     @State var dateChosen = Date()
    @State var switcher = false
    @State var valor = 30
    @State var url = "https://www.aaa.es/api/nombre"
    
    var body: some View {

        // Formulario tipo ajustes del sistema
        Form{
            Section(header:
                Text("formulario")
                    .font(.largeTitle)) {
                    Text("formulario de cargar datos")
            }
            
            
            Section{
               Button(action: {
                
               }) {
               Text("Accion 1")
                Circle()
                .frame(width: CGFloat(valor), height: CGFloat(valor))
               }
            }

            
            Section{
                DatePicker(selection: $dateChosen,
                                      displayedComponents: .hourAndMinute, label: { Text("Alta") })
                
                
            }
            
            Section(header:
                Text("Datos conexion")
                    .font(.largeTitle)) {
                    Text("URL COnexion JSON")
                    Toggle(isOn: $switcher) {
                            Text("activo")
                    }
                        
                        
                        Stepper(onIncrement: {
                            self.valor+=10
                        },
                                onDecrement: {
                                     self.valor-=10
                        },
                                label: {
                                    Text("Timeout seg.: \(valor)" )
                                
                        })
                        
                        VStack(alignment: .leading){
                            Text("URL conexion")
                            TextField("URL", text: $url)
                        }
            }
            
        }
        
    }
}

struct TextView3_Previews: PreviewProvider {
    static var previews: some View {
        TextView3()
    }
}
