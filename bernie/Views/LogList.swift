//
//  PetEventList.swift
//  bernie
//
//  Created by Michal Ruopp on 11/10/24.
//

import SwiftUI
import CoreData


struct LogList: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: false)],
        animation: .default)
    private var items: FetchedResults<Item>
    
    var body: some View {
        VStack {
            List {
                Section("Items") {
                    ForEach(items) { item in
                        LogItemDetailView(item)
                    }
                    .onDelete(perform: deleteItems)
                }
                .listRowBackground(Color.clear)
                .listRowSeparator(.hidden)
            }
            .scrollContentBackground(.hidden)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addItem) {
//                        Label("Add Item", systemImage: "plus")
                        NavigationLink {
                            Text("The Link Text")
                        }
                        label: {
                            Label("Add Item", systemImage: "plus")
                        }
                    }
                }
            }
            .navigationTitle("{Pet Name}'s Log")
        }
//        .background(Color.blue)
    }
    
    private func addItem() {
        withAnimation {
            let newItem = Item(context: viewContext)
            newItem.timestamp = Date()

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            offsets.map { items[$0] }.forEach(viewContext.delete)

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }

}



struct PetEventList_Previews: PreviewProvider {
    static var previews: some View {
        LogList().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
