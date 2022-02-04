//
//  Name.swift
//  pokedex
//
//  Created by Catarina Antunes on 04/02/2022.
//

import Foundation
import UIKit

class Name: Identifiable{
    
    var myName:String
    var myNick:String
     
    
    init(myName:String,myNick:String){
        self.myName = myName
        self.myNick = myNick
        
    }
    
}


