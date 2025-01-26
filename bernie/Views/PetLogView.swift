//
//  ContentView.swift
//  bernie
//
//  Created by Michal Ruopp on 11/9/24.
//

import SwiftUI

struct PetLogView: View {

    var body: some View {
        NavigationStack {
            LogList()
        }
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PetLogView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
