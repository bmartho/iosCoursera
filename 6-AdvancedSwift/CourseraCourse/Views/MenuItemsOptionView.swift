//
//  MenuItemsOptionView.swift
//  CourseraCourse
//
//  Created by Bruno Juliani Martho on 31/01/25.
//

import SwiftUI

struct MenuItemsOptionView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var selectedCategory : MenuCategory? = nil
    @State private var selectedSortItem : SortMenuItems? = nil
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Filter")
                        .bold()
                        .font(.system(size: 26))
                    
                    
                    Spacer()
                }
                HStack {
                    Text("SELECTED CATEGORIES")
                        .font(.system(size: 10))
                    
                    Spacer()
                }.padding(.top, 6)
                
                ForEach(MenuCategory.allCases) { category in
                    Button(action: {
                        selectedCategory = category
                    }) {
                        HStack {
                            Text(category.rawValue)
                                .font(.system(size: 14))
                                .foregroundColor(.black)
                                .background(Color.white)
                            
                            Spacer()
                            
                            if(selectedCategory == category){
                                Image(systemName: "checkmark")
                                    .foregroundColor(.blue)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .padding()
                        
                    }
                    .background(Color.white)
                }
                
                HStack {
                    Text("SORT BY")
                        .font(.system(size: 10))
                    
                    Spacer()
                }.padding(.top, 6)
                
                ForEach(SortMenuItems.allCases) { item in
                    Button(action: {
                        selectedSortItem = item
                    }) {
                        HStack {
                            Text(item.rawValue)
                                .font(.system(size: 14))
                                .foregroundColor(.black)
                                .background(Color.white)
                            
                            Spacer()
                            
                            if(selectedSortItem == item){
                                Image(systemName: "checkmark")
                                    .foregroundColor(.blue)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .padding()
                        
                    }
                    .background(Color.white)
                }
                
                Spacer()
            }
            .padding()
            .background(Color(UIColor.systemGray6).edgesIgnoringSafeArea(.all))
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Text("Done")
                    }
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}
