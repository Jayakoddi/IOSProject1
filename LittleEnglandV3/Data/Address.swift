//
//  Address.swift
//  LittleEnglandV3
//
//  Created by Christy Dinakaran on 2022-11-29.
//

import Foundation

struct Address: Identifiable{
    
    var id = UUID()
    var name: String
    var street: String
    var houseNumber: Int
    var city: String
    var email: String
    var phone: Int
}


