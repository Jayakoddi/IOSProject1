//
//  ProductListView.swift
//  LittleEnglandV3
//
//  Created by Christy Dinakaran on 2022-11-29.
//

import SwiftUI

struct ProductListView: View {
    
    
    @EnvironmentObject var cartManager: CartManager
    @State var productList = [Product]()
    
    let category : String
    let columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    
    var body: some View {
        VStack{
            //:Display LOGO
            header()
            
            //:Display all the products in a give CATEGORY
           ScrollView {
                LazyVGrid(columns: columns, spacing:20) {
                    ForEach( productList, id:\.id){ item in
                        if(item.category == category){
                            productView(product: item)
                                .environmentObject(cartManager)
                        }
                        //.environmentObject(cartManager)
                    }
                    
                }
                .padding()
                
            }//:SCROLLVIEW
          
        }//:VSTACK
        .environmentObject(cartManager)
        .task {
            await loaddata()
            //print(productList)
        }
    
    }//:BODY
    
    func loaddata () async {
           
         guard let url = URL(string: "https://Jayakoddi.github.io/ProductList.json")else {
                print("Invalid URL")
                return
            }
            do {
                let (data, _) = try await URLSession.shared.data(from: url)
                if let decodedResponse = try? JSONDecoder().decode(Products.self, from: data) {
                    productList = decodedResponse.Products
                }
            } catch {
                print("Invalid data")
                }
    }
    
    
}

struct ProductListView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView(category: "Bread")
            .environmentObject(CartManager())
    }
}
