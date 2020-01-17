//
//  ContentView.swift
//  SwiftUI-PrimeraApp
//
//  Created by Jose Luis on 17/01/2020.
//  Copyright © 2020 Jose Luis. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            VStack(spacing: 6.0){
                Text("Hola Swift que Molas!!")
                    .foregroundColor(Color("ColorTexto"))
               // Spacer()
                Image(systemName: "folder.fill")
                    .resizable()
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .frame(width: 100.0, height: 100.0)
                    
            }
            .background(Color.orange)
            .cornerRadius(15.0)
            .padding(.all)
            .shadow(radius: 12)
            HStack{
                Text("hola")
                Spacer()
                Image(systemName: "paperplane")
            }
            .padding()
            
            Spacer()
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView()
                .environment(\.colorScheme, .light)
                .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
                .previewDisplayName("Iophone 8")
            /*
            ContentView()
                .environment(\.colorScheme, .light)
                .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
                .previewDisplayName("Iophone 11")
                .previewLayout(PreviewLayout.fixed(width: 500, height:  200))
            */
            }
             
    }
}
