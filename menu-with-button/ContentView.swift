//
//  ContentView.swift
//  menu-with-button
//
//  Created by Shubham Prashar on 18/05/24.
//

import SwiftUI



struct ContentView: View {
    @State var items : [String] = ["Shubham", "Abhi", "Ashank", "Sumi"]
    @State var listItems : [String] = []
    
    func addItem() {
        listItems.append(items[Int.random(in: 0...3)])
        print(listItems)
    }
    
    
    var body: some View {
        
        VStack {
            
            List(listItems, id : \.self) { item in
                Text(item)
            }
            
            
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                addItem()
            }
        }
        
    }
}
    

#Preview {
    ContentView()
}
