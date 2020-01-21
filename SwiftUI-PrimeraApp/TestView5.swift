//
//  TestView5.swift
//  SwiftUI-PrimeraApp
//
//  Created by Jose Luis on 21/01/2020.
//  Copyright © 2020 Jose Luis. All rights reserved.
//

import SwiftUI

struct TestView5: View {
    
    @State var deptos = ["rrhh","Informatica","Direccion","Pedidos"]
    
    @State var showActionSheet = false
    @State var showAlert = false
    var body: some View {
       
        NavigationView {
            List{
                
                
                Section(header: Text("Empleado")) {
                    ForEach(empleados){ empleado in
                          HStack{
                              Text(empleado.nombre)
                              Spacer()
                              Image(systemName: "person.fill")
                              .frame(width: 40, height: 40)
                          }
                      }
                }
                
                Section(header: Text("Departamentos")) {
                    ForEach(deptos, id:\.self){ departamento in
                          HStack{
                              Text(departamento)
                          }
                      }
                      .onDelete(perform: delete) // se indica que al eliminar se ejecuta esta funcion
                      .onMove(perform: move) //mover datos de la lista
                }
                
                Section (header: Text("acciones")){
                    HStack{
                        Button(action: {
                            self.showAlert.toggle()
                        }) {
                            Text("Mostrar Alerta")
                        }
                        
                    }
                }
            }//LIST
                
            .navigationBarTitle("Empleados") // titulo
            // botones de la lista
            .navigationBarItems(leading:
                Button(action: accionBoton){
                    Text("Accion")
                 }, trailing: EditButton())
                
            //ACTION SHEET
            .actionSheet(isPresented: $showActionSheet) { () -> ActionSheet in
                    ActionSheet(title: Text("Elija una opcion"), message: Text("Elija lo que le convenga"), buttons: [
                        .cancel(),
                        .default(Text("Pasar de todo"), action: {
                            // codigo aqui default
                        }),
                        .destructive(Text("Destrui el mundo"))
                        
                    ])
                }
                
            // ALERTA
            .alert(isPresented: $showAlert){
            Alert(title: Text("Esto es alerta"), message: Text("Mensaje de la alerta"), primaryButton: Alert.Button.default(Text("Option 1")), secondaryButton: Alert.Button.cancel())
            }

        }//NAVIGATIONVIEW
        
    }

    // Funciones
    func accionBoton(){
        showActionSheet.toggle() //activo / desactivo tur/false
    }
    
    func delete(offset: IndexSet){
        // aqui llega los indices que quiera borrar
        if let first = offset.first{
            deptos.remove(at: first)
        }
    }
    
    func move(i1: IndexSet, i2: Int){
        if let first = i1.first{
            deptos.insert(deptos.remove(at: first), at: i2)
        }
    }
    
}

struct TestView5_Previews: PreviewProvider {
    static var previews: some View {
        TestView5()
    }
}
