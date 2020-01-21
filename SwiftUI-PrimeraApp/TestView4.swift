//
//  TestView4.swift
//  SwiftUI-PrimeraApp
//
//  Created by Jose Luis on 21/01/2020.
//  Copyright © 2020 Jose Luis. All rights reserved.
//

import SwiftUI

struct TestView4: View {
    
    let nombres = ["Yamaha", "Suzuki", "Kawasaki", "BMW", "Triump"]
    @State var valorElegido = 1
    @State var nombreElegido = "Kawasaki"
    
    var body: some View {
        VStack{
            Text("PICKER")
            .font(.largeTitle)
            
            Picker(selection: $valorElegido,
                   label: Text("Seleccione Marca")) {
                    
                    ForEach (0...10, id: \.self){ num in
                        
                        HStack{
                            Text("\(num)").tag(num)
                            Image("lalala")
                            .resizable()
                            .frame(width: 20, height: 20)
                        }
                    }
                    
                    /*
                    Text("1").tag(1) // hay que poner Tag asociado a cada vista
                    Text("2").tag(2)
                    Text("3").tag(3)
                    */
            }
            .background(Color.white)

            
            Text("Valor seleccionado \(valorElegido)")
            
            Divider() // crea una linea separadora en la pantalla
            
            Text("Elige otra marca")
            
            Picker(selection: $nombreElegido,
                   label: Text("")) {
                    ForEach(nombres, id: \.self){ nombre in
                        FilaPicker(nombre: nombre) // inyeccion dependencia en subvista
                    }
            }
            .background(
                
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.blue, lineWidth: 2)
            )
            .padding(.horizontal)
 
            
            Text("Marca elegida \(nombreElegido)")
            
        }
        
        
        
    }
}

// Subvista.

struct FilaPicker: View {
    let nombre:String // para inyeccion dependencia de esta subvista
    var body: some View {
        HStack{
            Image(systemName: "person.fill")
            Spacer()
            Text(nombre)
        }
        .padding()
        .tag(nombre)
    }
}


struct TestView4_Previews: PreviewProvider {
    static var previews: some View {
        Group{
        TestView4()
            FilaPicker(nombre: "hola mundo")
                .previewLayout(PreviewLayout.fixed(width: 300, height:  100))
        }
    }
}
