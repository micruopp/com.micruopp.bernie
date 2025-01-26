//
//  NewLogItemView.swift
//  bernie
//
//  Created by Michal Ruopp on 1/26/25.
//


import SwiftUI

struct NewLogItemView: View {
    var body: some View {
        Text("Some words")
    }

}


struct NewLogItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewLogItemView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
