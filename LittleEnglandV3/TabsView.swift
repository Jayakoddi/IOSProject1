//
//  TabsView.swift
//  LittleEnglandV3
//
//  Created by Christy Dinakaran on 2022-12-19.
//

import SwiftUI

struct TabsView: View {
    @StateObject var cartManager = CartManager()
   // @State var productList = [Product]()
    var body: some View {
        
       
        
      
            TabView {
                Group{
                    HomeView()
                        .tabItem {
                            Label("home", systemImage: "house")
                                .font(.title)
                            
                        }
                    
                    CartListView()
                        .tabItem {
                            Label("Cart", systemImage: "cart")
                        }
                    
                    contactView()
                        .tabItem {
                            Label("Contact", systemImage: "phone.fill")
                                .foregroundColor(.white)
                        }
                }
                
               // .toolbar(.visible, for: .tabBar)
               // .toolbarBackground(Color("Navy"), for: .tabBar)
                //.accentColor(Color.white)

            }
            
            .environmentObject(cartManager)
            .navigationBarHidden(true)
        }
        
    
}

struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView()
    }
}
