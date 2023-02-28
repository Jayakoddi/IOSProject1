//
//  Order.swift
//  LittleEnglandV3
//
//  Created by Christy Dinakaran on 2022-11-29.
//

import Foundation
struct Order: Identifiable{
    
    var id = UUID()
    var product: Product
    var quantity: Int
}
