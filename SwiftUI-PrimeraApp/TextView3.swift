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
    @State var sliderValue: Double = 20.0
    
    var body: some View {

        // Formulario tipo ajustes del sistema
        Form{
            // seccion con cabera
            Section(header:
                Text("formulario")
                    .font(.largeTitle)) {
                    Text("formulario de cargar datos")
            }
            
            // Seccion sin titulo
            Section{
               Button(action: {
                
               }) {
               Text("Accion 1")
                Circle()
                .frame(width: CGFloat(valor), height: CGFloat(valor))
               }
            }

               // Seccion sin titulo
            Section{
                DatePicker(selection: $dateChosen,
                                      displayedComponents: .hourAndMinute, label: { Text("Alta") })
            }
            
            // Seccion con cabecera
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
                                     self.valor -= 10
                        },
                                label: {
                                    Text("Timeout seg.: \(valor)" )
                                
                        })
                        
                        VStack(alignment: .leading){
                            Text("URL conexion")
                            TextField("URL", text: $url)
                        }
                        
                        
                        
                        // Slider
                        
                        Slider(value: $sliderValue, in: 0...100, step: 5)
                        .padding()
                         .background(
                               Capsule().fill(Color.orange)
                          )
                        
                        Slider(value: $sliderValue, in: 0...100, step: 5)
                        .padding()
                        .background(
                            Capsule().stroke(Color.orange, lineWidth:2)
                           )
                        Text("Valor: \(sliderValue)")
                        
                        HStack{
                            Image(systemName:  "speaker.fill")
                            Slider(value: $sliderValue, in: 0...100, step: 5)
                            .accentColor(Color.red)
                            Image(systemName:  "speaker.3.fill")
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
