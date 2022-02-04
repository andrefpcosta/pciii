//
//  PokedexView.swift
//  pokedex
//
//  Created by Catarina Antunes on 03/02/2022.
//

import SwiftUI

struct PokedexView: View {
    
    @State var Pokedex:[tipoPokemon] = [
    
        tipoPokemon(tipo: "Eletrico", pokemons: [Pokemon(nome: "joao" ,nickName: "joao", img: "pikachu")]),
    
    
    tipoPokemon(tipo: "Normal", pokemons: [Pokemon(nome: "Porygon",nickName: "joao", img: "porygon"),
Pokemon(nome: "Ditto",nickName: "joao", img: "ditto") ]),
    
    tipoPokemon(tipo: "Psiquico", pokemons: [Pokemon(nome: "Mew",nickName: "joao", img: "mew")]),

    ]
    
    var body: some View {
    
        VStack {
            NavigationView{
                List{
               
                    ForEach(Pokedex){ tipo in

                        Section {
                            ForEach(tipo.pokemons){ pokemon in
                                NavigationLink {
                                    pokeDetalhes(pokemon: pokemon)
                                } label: {
                                    ListLine(pokemon: pokemon)
                                }
                            }
                            
                        } header: {
                            Text(tipo.tipo)
                            
                        }
                }
                    }
                
                .navigationTitle("Pokedex")
            }
            .navigationBarHidden(true)
            
            NavigationLink(destination: PlayView()) {
            Image("pik")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .clipped()
                .clipShape(Circle())
                .shadow(color: .gray, radius: 15)
                .overlay(Circle().stroke(Color.black, lineWidth: 2))
            }
             
            }
        }
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
