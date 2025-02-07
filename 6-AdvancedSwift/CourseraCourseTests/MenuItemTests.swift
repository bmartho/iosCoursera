//
//  CourseraCourseTests.swift
//  CourseraCourseTests
//
//  Created by Bruno Juliani Martho on 31/01/25.
//

import XCTest
@testable import CourseraCourse

final class CourseraCourseTests: XCTestCase {
    let title = "Pizza"
    let price = 12.99
    let menuCategory = MenuCategory.Food
    let ordersCount = 0
    let ingredients: [Ingredient] = [Ingredient.Broccoli, Ingredient.Pasta]
    
    func testItemTitle() throws {
        let menuItem = MenuItem(title: title, price: price, menuCategory: menuCategory, ordersCount: ordersCount, ingredients: ingredients)
        XCTAssertEqual(menuItem.title, title, "Wrong title")
        
    }
    
    func testItemIngredients() throws {
        let menuItem = MenuItem(title: title, price: price, menuCategory: menuCategory, ordersCount: ordersCount, ingredients: ingredients)
        XCTAssertEqual(menuItem.ingredients.count, 2, "Wrong number of ingredients")
        XCTAssertEqual(menuItem.ingredients[0], Ingredient.Broccoli, "Wrong ingredient")
        XCTAssertEqual(menuItem.ingredients[1], Ingredient.Pasta, "Wrong ingredient")
    }
    
}
