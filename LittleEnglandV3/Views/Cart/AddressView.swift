//
//  AddressView.swift
//  LittleEnglandV3
//
//  Created by Christy Dinakaran on 2022-11-30.
//

import SwiftUI

struct AddressView: View {
    //TO dismiss a view
    @Environment(\.dismiss) var dismiss

    @State var name: String = ""
    @State var address: String = ""
    @State var email: String = ""
    @State var phone: String = ""
    
        var body: some View {
            NavigationView {
                Form {
                    Section(header: Text("Your Address")) {
                        TextField("Customer Name", text: $name)
                            .padding()
                        TextField("Email", text: $email)
                            .padding()
                        TextField("Address", text: $address)
                            .padding()
                        TextField("Mobile Num", text: $phone)
                            .padding()
                    }
                    Button(action: {
                        dismiss()
                    }, label: {
                        HStack {
                            Spacer()
                            Text("Confirm Address")
                                .foregroundColor(Color.white)
                                .padding(.vertical, 10)
                                .font(.system(size: 20, weight: .semibold))
                                .frame(width:350, height: 50)
                                .background(Color(UIColor(named: "Navy")!))
                                .cornerRadius(20)
                            Spacer()
                        }
                        
                    })
                }
                .navigationTitle("ADDRESS")
                           .toolbarBackground(
                               Color.red,
                            //Color.(Color(UIColor(named: "Red")!))
                               for: .navigationBar)
                           .toolbarBackground(.visible, for: .navigationBar)

              
            }
        }
}

struct AddressView_Previews: PreviewProvider {
    static var previews: some View {
        AddressView()
    }
}
