//  MenuItemDetailsView.swift
//  CourseraCourse
//
//  Created by Bruno Juliani Martho on 31/01/25.
//

import SwiftUI

struct MenuItemDetailsView : View {
    var menuItem: MenuItem
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text(menuItem.title)
                        .bold()
                        .font(.system(size: 20))
                    Spacer()
                }
                
                Image(
                    .image
                ).resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300)
                
                Text("Price:")
                    .bold()
                    .font(.system(size: 14))
                
                Text(String(menuItem.price))
                    .font(.system(size: 14))
                
                Text("Ordered:")
                    .bold()
                    .font(.system(size: 14))
                    .padding(.top, 4)
                
                Text(String(menuItem.ordersCount))
                    .font(.system(size: 14))
                
                Text("Ingrediets:")
                    .bold()
                    .font(.system(size: 14))
                    .padding(.top, 4)
                
                ForEach(menuItem.ingredients){ ingredient in
                    Text(ingredient.rawValue)
                        .font(.system(size: 14))
                }
                
            }.padding()
        }.padding()
    }
}
