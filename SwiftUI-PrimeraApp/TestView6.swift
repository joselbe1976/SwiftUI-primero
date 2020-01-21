//
//  TestView6.swift
//  SwiftUI-PrimeraApp
//
//  Created by Jose Luis on 21/01/2020.
//  Copyright © 2020 Jose Luis. All rights reserved.
//

import SwiftUI

struct TestView6: View {
    
    @State var showModal = false
    @State var PopOver = false
    
    
    var body: some View {
        VStack{
            // Menu contextual
            Image(systemName: "questionmark.diamond.fill")
            .resizable()
            .frame(width: 150, height: 150)
            .contextMenu{
                        Button(action: {
                            
                        }) {
                            Text("Opcion A")
                        }
                        Button(action: {
                                         
                         }) {
                            Text("Opcion B")
                         }
                
            }
            
            //boton que lanza el modal
            Button(action: {
                self.showModal.toggle()
            }, label: {
                Text("Lanza modal")
            })
            
            Button(action: {
                self.PopOver.toggle()
            }, label: {
                Text("Lanza PopOver")
                
            })
            
        }
        // para lanzar el modal
        .sheet(isPresented: $showModal){
            ModalView(show: self.$showModal) // inyectamos como dependencia la referencia para que lo pueda gestionar el Modal.
        }
        // EL popover y sheet en iphone es lo mismo, pero en IPAD cambia, popover es un popover pequeño
        .popover(isPresented: $PopOver, arrowEdge: .top){
           ModalView(show: self.$PopOver)
        }
    }
}

// View Modl
struct ModalView : View {
    @Binding var show:Bool // Este binding hacer referencia (puntero) al objeto que me pasas (me pasan referencia no el valor)
    
    var body: some View{
        VStack{
            HStack{
                Spacer()
            }
            Text("soy el modal tio")
            Spacer()
            Button(action: {
                self.show = false // como hay biudnding, la otra view lo cierra
            }) {
                Text("Cerrar")
            }
            Spacer()
        }
        .background(Color.blue)
        .foregroundColor(Color.white)
    }
}

struct TestView6_Previews: PreviewProvider {
    static var previews: some View {
        TestView6()
    }
}
