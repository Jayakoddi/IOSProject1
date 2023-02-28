//
//  cartView.swift
//  LittleEnglandV3
//
//  Created by Christy Dinakaran on 2022-11-29.
//

import SwiftUI

struct cartView: View {
    
    @EnvironmentObject var cartManager: CartManager
    
    var order: Order
    
    var body: some View {
        HStack(alignment:.top, spacing: 20){
           
            AsyncImage(url: URL(string: order.product.image), scale: 2) { image in
                image
                    .resizable()
                    //.aspectRatio(contentMode: .fit)
                    .cornerRadius(20)
                  // .frame(width:80, height:100)
            } placeholder: {
                ProgressView()
                    .progressViewStyle(.circular)
            }
            .frame(maxWidth: 80, maxHeight:80)
            
            VStack( spacing :10){
                Text(order.product.name)
                    .multilineTextAlignment(.center)
                    .font(.caption)
                
                
                
                HStack{
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .frame(width:30, height:30)
                        .background(Color(UIColor(named:"Navy")!))
                        .cornerRadius(10)
                        .padding(.leading)
                        .onTapGesture {
                            cartManager.increaseQty(item: order)
                        }
                    
                    Text(" \(order.quantity) ")
                        .font(.body)
                        .bold()
                        .frame(width:20, height:30)
                        
                    
                    Image(systemName: "minus")
                        .foregroundColor(.white)
                        .frame(width:30, height:30)
                        .background(Color(UIColor(named:"Navy")!))
                        .cornerRadius(10)
                       
                    
                        .onTapGesture {
                            cartManager.decreaseQty(item: order)
                        }
                }//HSTACK
                
            }//VSTACK
            Text("Rs. \(((order.product.price) * Float(order.quantity)).formatted(.number.precision(.fractionLength(2))))")
                .font(.caption)
                .bold()
            
            //Spacer()
            
            Image(systemName: "trash")
                .foregroundColor(.red)
                .onTapGesture {
                    cartManager.removeFromCart(item: order)
                }
            
        }//HSTACK
        
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        
        Divider()
    }
}

struct cartView_Previews: PreviewProvider {
    static var previews: some View {
        cartView(order: Order(product: Product(id: 1, name: "vegetable pizza", image: "vegpizza", price: 8.0, category: "Bread"), quantity: 1))
            .environmentObject(CartManager())
    }
}
