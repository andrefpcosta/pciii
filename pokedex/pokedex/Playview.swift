//
//  Playview.swift
//  pokedex
//
//  Created by Catarina Antunes on 03/02/2022.
//

import SwiftUI

struct PlayView: View {

    @State var poke1 = ""
    @State var poke2 = ""
    
    var body: some View {
        
        NavigationView{
            VStack {
                
               Text("Indique dois pokémons")
                
                TextField("Pokemon 1", text:$poke1)
                    .padding()
            
                TextField("Pokemon 2", text:$poke2)
                    .padding()
               
                Button("Ditto") {
                    if (poke1 == "") {
                                poke1 = "Ditto"
                    }
                    else if (poke2 == ""){
                                poke2 = "Ditto" }
                }
                
                Image("ditto")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50)
                        .clipped()
                        .clipShape(Circle())
                        .shadow(color: .gray, radius: 15)
                        .overlay(Circle().stroke(Color.black, lineWidth: 2))
                
                
                Button("Mew") {
                    if (poke1 == "") {
                                poke1 = "Mew"
                    }
                    else if (poke2 == ""){
                                poke2 = "Mew" }
                }
                
                Image("mew")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipped()
                    .clipShape(Circle())
                    .shadow(color: .gray, radius: 15)
                    .overlay(Circle().stroke(Color.black, lineWidth: 2))
                
                
                Button("Porygon") {
                    if (poke1 == "") {
                                poke1 = "Porygon"
                    }
                    else if (poke2 == ""){
                                poke2 = "Porygon" }
                
                }
                
                Image("porygon")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipped()
                    .clipShape(Circle())
                    .shadow(color: .gray, radius: 15)
                    .overlay(Circle().stroke(Color.black, lineWidth: 2))
                
                
                NavigationLink(destination: ResltView()) {
                Image("pokebola")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 80)
                    .clipped()
                    .clipShape(Circle())
                    .shadow(color: .gray, radius: 15)
                    .overlay(Circle().stroke(Color.black, lineWidth: 2))
                    .position(x: 180, y: 200)
                      
                }
                
                }
            
            .navigationTitle("Game")
            .navigationBarHidden(true)
            }
        
    
            
        }
}
    
    
struct PlayView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PlayView()
        }
    }
}
