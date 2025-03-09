//
//  PetLogItemModel.swift
//  bernie
//
//  Created by Michal Ruopp on 1/18/25.
//

// Initial from ChatGPT
//@MainActor
//class LogItemModel: ObservableObject {
//    @Published var itemName: String = ""
//    let viewContext: NSManagedObjectContext
//
//    init(viewContext: NSManagedObjectContext) {
//        self.viewContext = viewContext
//    }
//
//    func createNewItem() async {
//        let newItem = Item(context: viewContext)
//        newItem.timestamp = Date()
//        newItem.name = itemName
//
//        do {
//            try await viewContext.perform {
//                try viewContext.save()
//            }
//        } catch {
//            print("Error saving item: \(error)")
//        }
//    }
//}
