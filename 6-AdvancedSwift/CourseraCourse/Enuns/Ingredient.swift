//
//  Ingredient.swift
//  CourseraCourse
//
//  Created by Bruno Juliani Martho on 31/01/25.
//

enum Ingredient: String, CaseIterable, Identifiable{
    case Spinach = "Spinach"
    case Broccoli = "Broccoli"
    case Carrot = "Carrot"
    case Pasta = "Pasta"
    case TomatoSauce = "Tomato sauce"
    
    var id: String { self.rawValue }
}
