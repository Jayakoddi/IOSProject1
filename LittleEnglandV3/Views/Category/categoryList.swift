//
//  categoryList.swift
//  LittleEnglandV3
//
//  Created by Christy Dinakaran on 2022-11-29.
//

import SwiftUI

struct categoryList: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        //Within the scroll view display all categories and link each category to a product detail View
       
            ScrollView(.vertical){
                VStack(spacing:0){
                    NavigationLink{
                        ProductListView(category: "Bread")
                            .environmentObject(cartManager)
                            
                    }
                        label:{
                            category(title: "Breads", image: "bread")
                                .padding(.bottom, 20)
                        }
                    
                    NavigationLink{
                        ProductListView(category: "Cake")
                            .environmentObject(cartManager)
                    }
                        label:{
                            category(title: "Cakes", image: "cake")
                                .padding(.bottom, 20)
                        }
                    
                    NavigationLink{
                        ProductListView(category: "Pizza")
                            .environmentObject(cartManager)
                    }
                        label:{
                            category(title: "Pizza", image: "pizza")
                                .padding(.bottom, 20)
                        }
                    
                    NavigationLink{
                        ProductListView(category: "Cookies")
                            .environmentObject(cartManager)
                    }
                    label:{
                        category(title: "Cookies", image: "cookie")
                            .padding(.bottom, 20)
                    }
                    
                    
                }//: VSTACK
                .environmentObject(cartManager)
            }//:SCROLLVIEW
            
        
        
    }
}

struct categoryList_Previews: PreviewProvider {
    static var previews: some View {
     
            categoryList()
        
    }
}
