//
//  CartListView.swift
//  LittleEnglandV3
//
//  Created by Christy Dinakaran on 2022-11-29.
//

import SwiftUI

struct CartListView: View {
    
    @EnvironmentObject var cartManager: CartManager
    @State private var delivery = false
    @State private var showingSheet = false
    
        
    var body: some View {
        VStack{
            header()
            
            ScrollView{
                
                if cartManager.orders.count > 0 {
                    //Text("Your Shopping Bag")
                    ForEach(cartManager.orders, id: \.id){
                        items in
                        cartView(order: items)
                            .environmentObject(cartManager)
                        
                    }
                    
                    VStack(spacing:20) {
                        
                        HStack{
                            Text("Subtotal")
                            Spacer()
                          
                            Text("Rs. \((cartManager.total).formatted(.number.precision(.fractionLength(2))))")
                                .font(.caption)
                                .bold()
                        }
                        
                        Divider()
                        
                        //PICK AN OPTION
                        Picker("", selection: $delivery) {
                                        Text("Pickup").tag(false)
                                        Text("Delivery").tag(true)
                                        
                        }
                        .pickerStyle(SegmentedPickerStyle())
                        
                        HStack{
                            
                            Text("Total")
                                .bold()
                            Spacer()
                            if(delivery){
                                Text("Rs. \(((cartManager.total) + 50.0).formatted(.number.precision(.fractionLength(2))))")
                                    .font(.caption)
                                    .bold()
                            }else{
                                Text("Rs. \((cartManager.total).formatted(.number.precision(.fractionLength(2))))")
                                    .font(.caption)
                                    .bold()
                            }
                        }//:HSTACK
                           
                        
                        Divider()
                        
                        if(delivery){
                            Button(action: {
                                showingSheet = true
                            }) {
                                Text("Edit Address")
                                    .font(.system(size: 20, weight: .semibold))
                                    .foregroundColor(.red)
                            }
                            .sheet(isPresented: $showingSheet, content:AddressView.init)
                        }
                        
                       // .disabled(delivery)
                        

                            /*Text("Edit Delivery Details")
                                .font(.caption)
                                .foregroundColor(Color("Red"))*/
                        
                        Spacer()
                        
                        Button{
                            
                        } label:{
                            Text("Conform Your Order")
                                .foregroundColor(.white)
                            
                        }
                        .frame(width: 300)
                        .padding()
                        .background(Color(UIColor(named:"Navy")!))
                        .clipShape(Capsule())
                        
                        
                        
                    }//VSTACK
                    .padding()
                }else{
                    Text("Your Cart is Empty!")
                }
                
                
            }//SCroll
           
            .padding()
            
        }
    }
}

struct CartListView_Previews: PreviewProvider {
    static var previews: some View {
        CartListView()
            .environmentObject(CartManager())
    }
}
