//
//  ResltView.swift
//  pokedex
//
//  Created by Catarina Antunes on 04/02/2022.
//

import SwiftUI

struct ResltView: View {
    
@State private var name = ""
    
    var body: some View {
        NavigationView{
            VStack {
                
                    Text("O vencedor é:")
                
                Image("pik")
                
                
                }
                
            }
            .navigationBarHidden(true)
        }
        }

struct ResltView_Previews: PreviewProvider {
    static var previews: some View {
        ResltView()
    }
}
