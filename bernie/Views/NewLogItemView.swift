//
//  NewLogItemView.swift
//  bernie
//
//  Created by Michal Ruopp on 1/26/25.
//


import SwiftUI

struct NewLogItemView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @Environment(\.presentationMode) private var presentationMode
    
    @State private var itemName: String = ""
    
    var body: some View {
//        Text("Log New Item View")
//            .font(.title)
//            .padding()
//            .navigationTitle("New Item")
        
        VStack(spacing: 20) {
            TextField("Enter item name", text: $itemName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: createNewLogItem) {
                Text("Create")
                    .fontWeight(.bold)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
            .disabled(itemName.isEmpty) // Disable the button if the text field is empty
            
            Spacer()
        }
        .navigationTitle("Log an event")
        .padding()
    }
    
    
    private func createNewLogItem() {
        withAnimation {
            let newItem = Item(context: viewContext)
            newItem.timestamp = Date()
            newItem.name = itemName
            do {
                try viewContext.save()
                presentationMode.wrappedValue.dismiss() // Navigate back to the previous view
            } catch {
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
}


struct NewLogItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewLogItemView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
