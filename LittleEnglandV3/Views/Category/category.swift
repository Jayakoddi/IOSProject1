//
//  categoryTitle.swift
//  LittleEnglandV3
//
//  Created by Christy Dinakaran on 2022-11-29.
//

import SwiftUI

struct category: View {
   
    @State var title:String
    @State var image:String
        
        var body: some View {
            
            
                ZStack(alignment:.bottom){
                    Image(image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width:350, height: 200)
                        .clipped()
                        .cornerRadius(20.0)
                    
                    Text(title)
                        .font(.system(size: 40))
                        .fontWeight(.heavy)
                    // .foregroundColor(Color(UIColor(named:"Navy")!))
                        .foregroundColor(.white)
                        .frame(width: 350)
                        .background(Color(UIColor(named:"Navy")!))
                        .cornerRadius(20.0)
                    
                    
                }//ZSTACK
          
    }
}

struct category_Previews: PreviewProvider {
    static var previews: some View {
        category(title: "Dummy", image: "bread")
    }
}
