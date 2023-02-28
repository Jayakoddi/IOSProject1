//
//  contactView.swift
//  ShopiingCart
//
//  Created by Christy Dinakaran on 2022-11-25.
//

import SwiftUI

struct contactView: View {
    var body: some View {
        VStack(spacing:50){
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width:300, height:200)
           
            Spacer()
            ZStack (alignment: .top) {
                Rectangle()
                    .foregroundColor((Color(UIColor(named:"Red")!)))
                    
                
                Rectangle()
                        .fill(Color.white)
                        .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 100, alignment: .top)
                        
                
                VStack(spacing: 20){
                    
                    
                    
                    Text("Sri Vari Complex 1/9 & 1/10, Mathigiri")
                    Text("App. Lavanya Mahal, Mathigiri, Cross Road")
                    Text("Hosur - 635109")
                    
                    Divider()
                        .overlay(.white)

                    
                   
                        HStack{
                            Image(systemName: "phone")
                            Text("+91 73730 71173")
                                .font(.caption)
                            
                        }
                        
                        HStack{
                            Image(systemName: "mail")
                            Text("info@littleengland.in")
                                .font(.caption)
                            
                        }
                        
                        
                        HStack{
                            Image(systemName: "link")
                            Text("http://www.littleengland.in")
                                .font(.caption)
                            
                        }
                     
                        Text("Contact us")
                            .padding(.leading,50)
                            .font(.caption)
                            .bold()
                        
                    
                  
                    
                }//VSTACK
                .foregroundColor(.white)
                .padding(.vertical)
                .frame(width: 370)
                .background((Color(UIColor(named:"Navy")!)))
                .cornerRadius(20)
            
            }//ZStack
            //.clipShape(RoundedRectangle(cornerRadius: 16))
            .frame(width: 380, height: 400, alignment: .center)
            .shadow(radius: 10)
            
            
           
           
            
            
            
        }
       
        
        
    }
}

struct contactView_Previews: PreviewProvider {
    static var previews: some View {
        contactView()
    }
}

