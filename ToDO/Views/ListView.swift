//
//  ListView.swift
//  ToDO
//
//  Created by Ozan Bilgili on 2.09.2022.
//

import SwiftUI

struct ListView: View {
    
    @State var item: [String] = [
    "First",
    "Second",
    "Third"
    ]
    
    var body: some View {
        List{
            ForEach(item, id: \.self) { item in
                ListRowView(title: item)
                
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("To DO")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddView())
            )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView(){
            ListView()
        }
    }
}

