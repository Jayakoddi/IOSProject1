//
//  productView.swift
//  LittleEnglandV3
//
//  Created by Christy Dinakaran on 2022-11-29.
//

import SwiftUI

struct productView: View {
    
    @EnvironmentObject var cartManager: CartManager

        let product : Product
    
        var body: some View {
            ZStack(alignment: .topTrailing) {
                ZStack(alignment: .bottom)
                {
                    //: Display Image
                    AsyncImage(url: URL(string: product.image), scale: 2) { image in
                        image
                            .resizable()
                            //.aspectRatio(contentMode: .fit)
                            .cornerRadius(20)
                           //.frame(width:100, height:150)
                    } placeholder: {
                        ProgressView()
                            .progressViewStyle(.circular)
                    }
                    .frame(maxWidth: 200, maxHeight: 200)
                      
                    //:Display product NAME and PRICE
                    VStack(spacing: 10){
                        Text(product.name)
                            .fontWeight(.bold)
                            .foregroundColor(Color("Navy"))
                            
                        
                        Text("RS: \((product.price).formatted(.number.precision(.fractionLength(2))))")
                        //Price of the product is formatted to 2 decimal places
                            .font(.caption)
                            .fontWeight(.bold)
                            .foregroundColor(Color("Navy"))

                        
                    }//VSTACK
                    .padding(.horizontal)
                    .padding(.vertical,5)
                    .foregroundColor(.white)
                    .frame(width:170, alignment: .leading)
                    .background(.white).opacity(0.9)
                    .cornerRadius(20)
                    
                }//ZSTACK
                .frame (width:150, height: 200)
            
                
                Button{
                    let myorder = Order(product: product, quantity: 1)
                    cartManager.addToCart(item: myorder)
                } label: {
                    Image(systemName: "cart")
                        .bold()
                        .padding(10)
                        .foregroundColor(.white)
                        .background(Color(UIColor(named:"Red")!))
                        .background(.white)
                        .cornerRadius(50)
                        .padding()
                        
                }//Button
            }// ZSTack
    }
    
   
}

struct productView_Previews: PreviewProvider {
    static var previews: some View {
        productView(product: Product(id: 1, name: "Garlic Bread", image: "bread", price: 130.00, category: "Bread"))
            .environmentObject(CartManager())
    }
}


