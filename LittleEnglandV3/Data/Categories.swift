//
//  Categories.swift
//  LittleEnglandV3
//
//  Created by Christy Dinakaran on 2022-11-29.
//

import Foundation
 
enum Categories{
    
    case Bread
    case Cake
    case Pizza
    case Cookie
    
}
 
func categoryString(for category: Categories)->String{
    
    switch category{
    case .Bread:
        return "Bread"
    case .Cake:
        return "Cake"
    case .Pizza:
        return "Pizza"
    case .Cookie:
        return "Cookie"
    
    }
}


