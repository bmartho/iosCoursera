//
//  Categories.swift
//  CourseraCourse
//
//  Created by Bruno Juliani Martho on 31/01/25.
//

enum MenuCategory: String, CaseIterable, Identifiable{
    case Food = "Food"
    case Drink = "Drink"
    case Dessert = "Dessert"
    
    var id: String { self.rawValue }
}
