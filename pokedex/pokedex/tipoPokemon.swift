//
//  tipoPokemon.swift
//  pokedex
//
//  Created by Gonçalo Feliciano on 07/12/2021.
//

import Foundation

class tipoPokemon:Identifiable{
    
    var id = UUID()
    
    var tipo:String
    var pokemons:[Pokemon]
    
    
    init(tipo:String, pokemons:[Pokemon]){
        
        self.tipo = tipo
        self.pokemons = pokemons
        
        
    }
    
    
}
