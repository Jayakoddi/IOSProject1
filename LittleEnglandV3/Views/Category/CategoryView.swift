//
//  CategoryView.swift
//  LittleEnglandV3
//
//  Created by Christy Dinakaran on 2022-11-29.
//

import SwiftUI

struct CategoryView: View {
    
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
      
            VStack{
                
                header()
                categoryList()
                    .environmentObject(cartManager)
                
                
            }//: VSTACK
            
        
        
    }
        
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}


