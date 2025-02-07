//
//  MenuItemsView.swift
//  CourseraCourse
//
//  Created by Bruno Juliani Martho on 31/01/25.
//

import SwiftUI

struct MenuItemsView: View {
    @StateObject private var viewModel = MenuViewViewModel()
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    @State private var selectedMenuItem: MenuItem? = nil
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    HStack {
                        Text("Menu")
                            .bold()
                            .font(.system(size: 20))
                        Spacer()
                    }
                    
                    HStack {
                        Text("Food")
                            .font(.system(size: 18))
                        Spacer()
                    }.padding(.top, 6)
                    
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(viewModel.foodMenuItems) { menuItem in
                            VStack(alignment: .center) {
                                Rectangle()
                                    .fill(Color.black)
                                    .frame(width: 100, height: 100)
                                
                                GeometryReader { geometry in
                                    Text(menuItem.title)
                                        .font(.system(size: 14))
                                        .frame(width: geometry.size.width, height: 40, alignment: .center)
                                }
                            }
                            .onTapGesture {
                                selectedMenuItem = menuItem
                            }
                            .padding()
                        }
                    }
                    
                    HStack {
                        Text("Drinks")
                            .font(.system(size: 18))
                        Spacer()
                    }.padding(.top, 12)
                    
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(viewModel.drinkMenuItems) { menuItem in
                            VStack(alignment: .center) {
                                Rectangle()
                                    .fill(Color.black)
                                    .frame(width: 100, height: 100)
                                
                                GeometryReader { geometry in
                                    Text(menuItem.title)
                                        .font(.system(size: 14))
                                        .frame(width: geometry.size.width, height: 40, alignment: .center)
                                }
                            }
                            .onTapGesture {
                                selectedMenuItem = menuItem
                            }
                            .padding()
                        }
                    }
                    
                    HStack {
                        Text("Dessert")
                            .font(.system(size: 18))
                        Spacer()
                    }.padding(.top, 12)
                    
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(viewModel.dessertMenuItems) { menuItem in
                            VStack(alignment: .center) {
                                Rectangle()
                                    .fill(Color.black)
                                    .frame(width: 100, height: 100)
                                
                                GeometryReader { geometry in
                                    Text(menuItem.title)
                                        .font(.system(size: 14))
                                        .frame(width: geometry.size.width, height: 40, alignment: .center)
                                }
                            }
                            .onTapGesture {
                                selectedMenuItem = menuItem
                            }
                            .padding()
                        }
                    }
                    
                    Spacer()
                }
                .padding()
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink(destination: MenuItemsOptionView()) {
                            Image(systemName: "gearshape")
                        }
                    }
                }
            }.navigationDestination(isPresented: Binding<Bool>(
                get: { selectedMenuItem != nil },
                set: { if !$0 { selectedMenuItem = nil } }
            )) {
                if let selectedMenuItem = selectedMenuItem {
                    MenuItemDetailsView(menuItem: selectedMenuItem)
                }
            }
        }
    }
}
