//
//  ContentView.swift
//  pokedex
//
//  Created by Gonçalo Feliciano on 07/12/2021.
//

import SwiftUI


struct ContentView: View {
    @State var inome = ""
    
    
    var body: some View {
        NavigationView{
            VStack {
                
                Text("Bem vindo!")
                
                TextField("Indique o seu nome",
                          text: $inome)
                    .multilineTextAlignment(.center)
                    .padding()
                    .border(Color(UIColor.separator))
                    
                
                if (inome != ""){
                NavigationLink(destination: PokedexView()) {
                    Image("pik")
                    Text("Clique para prosseguir")
                }
                }
                
                
                }
                
            }
            
            .navigationBarHidden(true)
        }
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    
}
