//
//  MenuViewViewModel.swift
//  CourseraCourse
//
//  Created by Bruno Juliani Martho on 31/01/25.
//

import SwiftUI

class MenuViewViewModel : ObservableObject {
    @Published var foodMenuItems: [MenuItem]
    @Published var drinkMenuItems: [MenuItem]
    @Published var dessertMenuItems: [MenuItem]
    
    init() {
        self.foodMenuItems = foodMenuItemsMock
        self.drinkMenuItems = drinkMenuItemsMock
        self.dessertMenuItems = dessertMenuItemsMock
    }
}
