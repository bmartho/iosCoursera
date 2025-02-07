//
//  SortMenuItems.swift
//  CourseraCourse
//
//  Created by Bruno Juliani Martho on 31/01/25.
//

enum SortMenuItems : String, CaseIterable, Identifiable {
    case MostPopular = "Most Popular"
    case Price = "Price $-$$$"
    case AZ = "A-Z"
    
    var id: String { self.rawValue }
}
