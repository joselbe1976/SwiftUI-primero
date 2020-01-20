//
//  TestView1.swift
//  SwiftUI-PrimeraApp
//
//  Created by Jose Luis on 20/01/2020.
//  Copyright © 2020 Jose Luis. All rights reserved.
//

import SwiftUI

struct TestView1: View {
    @State var show : Bool = true
    @State var show2 : Bool = true
    
    
    var body: some View {
        VStack{
            
            if show {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            Button(action: {
                self.show.toggle()
            }) {
                    Text("Pulsa el boton")
                  //  Spacer()
                    Image(systemName: "square.and.arrow.down")
                    
            }
        .padding()
            //.buttonStyle(PlainButtonStyle())
            .buttonStyle(DefaultButtonStyle())
            
            Text("Hola soy un texto")
                .font(.title)
                .foregroundColor(show2 ? Color.green : Color.blue)
            Button(action: {
                self.show2.toggle()
            }) {
                Text("Cambiar Color")
            }
            Button(action: {
                
            }) {
                Image(systemName: "magnifyingglass")
                Text("buscar")
            }
            .padding()
            .background(Color.purple)
            .foregroundColor(Color.white)
            .cornerRadius(20)
            .shadow(color: Color.black, radius: 5, x: 3, y: 3)
            
            
            Button(action: {
                
            }) {
                HStack{
                    Image("lalala")
                        .renderingMode(.original)
                        
                    Spacer()
                    VStack{
                        Text("Julio cesar")
                            .font(.title)
                        Text("Evangelista IOS")
                            .font(.headline)
                    }
                }
            }
        .padding()
            .background(Color.purple)
            .foregroundColor(Color.white)
        .cornerRadius(19)
            
        }
    }
}

struct TestView1_Previews: PreviewProvider {
    static var previews: some View {
        TestView1()
    }
}
