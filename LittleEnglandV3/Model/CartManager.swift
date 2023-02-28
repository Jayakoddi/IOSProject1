//
//  CartManager.swift
//  LittleEnglandV3
//
//  Created by Christy Dinakaran on 2022-11-29.
//

import Foundation
class CartManager: ObservableObject {
    
    @Published var orders : [Order] = []
    @Published var total: Float = 0.0
    @Published var toalWithDEvlivery = 0
    
    var itemIsThere = false //is item in the cart?
    
    func addToCart(item: Order){
       
            //if the product is already in the cart then just update the quantity and total price
            increaseQty(item: item)
            
            //Add the product to the cart and update total
            if (itemIsThere == false){
                orders.append(item)
                total += item.product.price
            }
        
    }//: END of FUNCTION
        
        
        func removeFromCart(item: Order){
            orders = orders.filter{$0.product.name != item.product.name}
            total -= item.product.price * Float(item.quantity)
        }
        
        func increaseQty(item: Order){
            for index in 0..<orders.count {
                if(orders[index].product.name == item.product.name)
                {
                    orders[index].quantity += 1
                    total += item.product.price
                  itemIsThere = true
                }
            }
        }//END OF FUNCTION
        
        func decreaseQty(item: Order){
            for index in 0..<orders.count {
                if(orders[index].product.name == item.product.name)
                {
                    if (orders[index].quantity > 0){
                        orders[index].quantity -= 1
                        total -= item.product.price
                    }
                    
                }
            }
        }//:END OF FUMCTION
        
    
    
}
