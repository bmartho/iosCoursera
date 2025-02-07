//
//  MenuItem.swift
//  CourseraCourse
//
//  Created by Bruno Juliani Martho on 31/01/25.
//

import Foundation
import SwiftUI

struct MenuItem: Identifiable, MenuItemProtocol {
    var id = UUID()
    var title: String
    var price: Double
    var menuCategory: MenuCategory
    var ordersCount: Int
    var ingredients: [Ingredient]
}

protocol MenuItemProtocol {
    var id: UUID { get }
    var title: String { get }
    var price: Double { get }
    var menuCategory: MenuCategory { get }
    var ordersCount: Int { get set }
    var ingredients: [Ingredient] { get set }
}

var foodMenuItemsMock: [MenuItem] = [
    MenuItem(title: "Vegetable Pasta", price: 12.99, menuCategory: .Food, ordersCount: 5, ingredients: [.Pasta, .TomatoSauce, .Spinach]),
    MenuItem(title: "Broccoli Salad", price: 8.99, menuCategory: .Food, ordersCount: 3, ingredients: [.Broccoli, .Carrot, .Spinach]),
    MenuItem(title: "Carrot Soup", price: 7.99, menuCategory: .Food, ordersCount: 2, ingredients: [.Carrot, .TomatoSauce]),
    MenuItem(title: "Tomato Pasta", price: 11.99, menuCategory: .Food, ordersCount: 4, ingredients: [.Pasta, .TomatoSauce]),
    MenuItem(title: "Spinach Stir Fry", price: 9.99, menuCategory: .Food, ordersCount: 6, ingredients: [.Spinach, .Carrot]),
    MenuItem(title: "Broccoli Pasta", price: 10.99, menuCategory: .Food, ordersCount: 7, ingredients: [.Pasta, .Broccoli, .TomatoSauce]),
    MenuItem(title: "Mixed Veggies", price: 6.99, menuCategory: .Food, ordersCount: 1, ingredients: [.Spinach, .Broccoli, .Carrot]),
    MenuItem(title: "Pasta Delight", price: 13.99, menuCategory: .Food, ordersCount: 8, ingredients: [.Pasta, .Spinach]),
    MenuItem(title: "Carrot Delight", price: 9.49, menuCategory: .Food, ordersCount: 2, ingredients: [.Carrot, .Broccoli]),
    MenuItem(title: "Spinach Soup", price: 5.99, menuCategory: .Food, ordersCount: 3, ingredients: [.Spinach, .TomatoSauce]),
    MenuItem(title: "Broccoli Soup", price: 6.49, menuCategory: .Food, ordersCount: 4, ingredients: [.Broccoli, .TomatoSauce]),
    MenuItem(title: "Veggie Mix", price: 7.49, menuCategory: .Food, ordersCount: 5, ingredients: [.Spinach, .Broccoli, .Carrot])
]

var drinkMenuItemsMock: [MenuItem] = [
    MenuItem(title: "Tomato Juice", price: 4.99, menuCategory: .Drink, ordersCount: 10, ingredients: [.TomatoSauce]),
    MenuItem(title: "Carrot Juice", price: 4.49, menuCategory: .Drink, ordersCount: 6, ingredients: [.Carrot]),
    MenuItem(title: "Spinach Smoothie", price: 5.99, menuCategory: .Drink, ordersCount: 8, ingredients: [.Spinach]),
    MenuItem(title: "Broccoli Shake", price: 5.49, menuCategory: .Drink, ordersCount: 7, ingredients: [.Broccoli]),
    MenuItem(title: "Veggie Juice", price: 6.49, menuCategory: .Drink, ordersCount: 4, ingredients: [.Spinach, .Carrot]),
    MenuItem(title: "Pasta Water", price: 2.99, menuCategory: .Drink, ordersCount: 2, ingredients: [.Pasta]),
    MenuItem(title: "Tomato Smoothie", price: 5.99, menuCategory: .Drink, ordersCount: 5, ingredients: [.TomatoSauce, .Spinach]),
    MenuItem(title: "Carrot Smoothie", price: 5.49, menuCategory: .Drink, ordersCount: 3, ingredients: [.Carrot, .Broccoli])
]

var dessertMenuItemsMock: [MenuItem] = [
    MenuItem(title: "Carrot Cake", price: 6.99, menuCategory: .Dessert, ordersCount: 12, ingredients: [.Carrot]),
    MenuItem(title: "Broccoli Muffin", price: 4.99, menuCategory: .Dessert, ordersCount: 9, ingredients: [.Broccoli]),
    MenuItem(title: "Spinach Pie", price: 5.99, menuCategory: .Dessert, ordersCount: 7, ingredients: [.Spinach]),
    MenuItem(title: "Tomato Tart", price: 5.49, menuCategory: .Dessert, ordersCount: 4, ingredients: [.TomatoSauce])
    
]
