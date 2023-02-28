//
//  ContentView.swift
//  LittleEnglandV3
//
//  Created by Christy Dinakaran on 2022-11-29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color("Navy")
                VStack{
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 50.0))
                        .frame(width:300, height:300)
                        .padding(.trailing)
                    
                    
                    
                    
                    HStack{
                        
                        VStack(alignment: .leading, spacing: 10){
                            Text("Cakes")
                            Text("Breads")
                            Text("Pizza")
                        }//: VSTACK
                        .font(.title2)
                        .bold()
                        .foregroundColor(Color(UIColor(named: "Red")!))
                        
                        VStack(alignment: .leading){
                            Text("I")
                            Text("I")
                            Text("I")
                            Text("I")
                            Text("I")
                            
                        }//: VSTACK
                        .foregroundColor(.white)
                        
                        VStack(alignment: .leading, spacing: 7){
                            Text("Available")
                            Text("Home Delivery!")
                            
                        }//: VSTACK
                        .foregroundColor(.white)
                        .font(.system(.body, design: .rounded))
                        
                        
                    }//: HSTACK
                    .padding()
                    NavigationLink(destination: TabsView(),
                                   label: {
                        ZStack{
                            //: 1.Background
                            Capsule()
                                .foregroundColor(Color.white.opacity(0.1))
                            
                            Capsule()
                                .foregroundColor(Color("Red").opacity(0.8))
                                .padding(8)
                            
                            //:2. Call to action
                            Text("Get Started")
                                .font(.system(.title3, design: .rounded))
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .offset(x: 20)
                        }//: ZSTACK
                        .frame(width: 240, height:65, alignment: .center)
                        .padding()
                    })
                }//: Parent VSTACK
                
                
                //: Get Started
                //:FOOTER
                
                
            }//: ZSTACK
            .ignoresSafeArea()
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
