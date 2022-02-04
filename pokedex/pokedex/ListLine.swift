//
//  ListLine.swift
//  pokedex
//
//  Created by Gonçalo Feliciano on 07/12/2021.
//

import SwiftUI

struct ListLine: View {
    @State var pokemon:Pokemon
    var body: some View {
      
        HStack{
            Image(uiImage: self.pokemon.img)
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60)
            
            VStack{
                Text(self.pokemon.nome)
                Text(self.pokemon.nickName)
                
                
            }
            
        }
        .navigationBarHidden(true)
    }
}

struct ListLine_Previews: PreviewProvider {
    static var previews: some View {
        ListLine(pokemon:  Pokemon(nome: "Ditto",nickName: "Joao", img: "ditto"))
    }
}
