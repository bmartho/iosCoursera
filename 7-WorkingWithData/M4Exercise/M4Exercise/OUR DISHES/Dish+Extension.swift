import Foundation
import CoreData


extension Dish {
    
    class func createDishesFrom(menuItems: [MenuItem], _ context: NSManagedObjectContext) {
        for menuItem in menuItems {
            if !doesDishExist(name: menuItem.title, context) {
                let dish = Dish(context: context)
                dish.name = menuItem.title
                dish.price = Float(menuItem.price) ?? 0
                
                do {
                    try context.save()
                } catch {
                    print("Failed to save dish: \(error)")
                }
            }
        }
    }
    
    // Function to check if a dish already exists in the database
    class func doesDishExist(name: String, _ context: NSManagedObjectContext) -> Bool {
        let fetchRequest: NSFetchRequest<Dish> = Dish.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "name == %@", name as CVarArg)
        
        do {
            let count = try context.count(for: fetchRequest)
            return count > 0
        } catch {
            print("Failed to fetch dish: \(error)")
            return false
        }
    }
}
