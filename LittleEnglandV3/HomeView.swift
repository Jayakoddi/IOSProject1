//
//  TabBarView.swift
//  LittleEnglandV3
//
//  Created by Christy Dinakaran on 2022-11-29.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        
        NavigationView{
            
            CategoryView()
                .environmentObject(cartManager)
          
                
                    
        }
       
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
      HomeView()
    }
}
