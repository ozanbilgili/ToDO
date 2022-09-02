//
//  AddView.swift
//  ToDO
//
//  Created by Ozan Bilgili on 2.09.2022.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView {
            VStack{
                TextField("Type something...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(.white))
                    .cornerRadius(10)
                
                Button(action: {
                    
                }, label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .backgroundStyle(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .padding(14)
        }
        .navigationTitle("Add an Item")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView(){
            AddView()
            
        }
    }
}
