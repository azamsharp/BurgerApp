//
//  ContentView.swift
//  BurgerApp
//
//  Created by Mohammad Azam on 10/1/20.
//  Copyright © 2020 Mohammad Azam. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var items = [["name": "Chicken Lettuce Wrap","photo": "chicken-wrap-lettuce","price": "$20"],
    ["name": "Mini Burgers","photo": "mini-burgers","price": "$15"],
    ["name": "Sliders","photo": "sliders","price": "$12"]
    
    
    ]
    
    @State private var selection: String = ""
    
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Image("burger-image")
            .resizable()
            .cornerRadius(10)
            
            HStack {
                Text("Charlie's Burger")
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer()
                
                Text("$$")
                    .font(.title)
                    .fontWeight(.bold)
            }
            
            HStack {
                Image(systemName: "star")
                Text("4.5").opacity(0.5)
                Image(systemName: "clock")
                Text("25 - 40min").opacity(0.5)
            }.padding([.bottom])
        
            Picker("", selection: $selection) {
                Text("Popular Items")
                Text("Kids Meal")
                Text("Family Meal")
            }.pickerStyle(SegmentedPickerStyle())
            
            
            Spacer()
            
            // list
            List(items, id: \.self) { item in
                HStack(alignment: .top) {
                    Image(item["photo"] ?? "")
                    .resizable()
                        .frame(width: 75, height: 75)
                    .cornerRadius(10)
                    
                    VStack(alignment: .leading) {
                        Text(item["name"] ?? "")
                            .font(.headline)
                        Spacer()
                        Text(item["price"] ?? "")
                            .font(.headline)
                    }
                    Spacer()
                    Button("+  Add") {
                        
                    }.padding(8)
                        .overlay(RoundedRectangle(cornerRadius: 8, style: .continuous)
                            .stroke(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), lineWidth: 1.0)
                    
                    )
                    
                }
            }
            
            
                
            Button("Add to cart") {
                
            }.frame(maxWidth: .infinity, maxHeight: 33)
            .padding()
                .foregroundColor(Color.white)
             .background(Color(#colorLiteral(red: 0.6225908399, green: 0.2668605447, blue: 0.2549851239, alpha: 1)))
            .cornerRadius(10)
            
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
