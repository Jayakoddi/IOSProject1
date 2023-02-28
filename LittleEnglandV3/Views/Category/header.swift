//
//  header.swift
//  LittleEnglandV3
//
//  Created by Christy Dinakaran on 2022-11-29.
//

import SwiftUI

struct header: View {
    var body: some View {
        ZStack{
            VStack{
               
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(40)
                    .frame(width:120, height: 70)
                   
            }//: VSTACK
            
        }//: ZSTACK
        .frame(maxWidth: .infinity)
        .background(Color(UIColor(named: "Red")!))
    }//:BODY
}

struct header_Previews: PreviewProvider {
    static var previews: some View {
        header()
    }
}
