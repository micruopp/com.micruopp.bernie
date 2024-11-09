//
//  bernieApp.swift
//  bernie
//
//  Created by Michal Ruopp on 11/9/24.
//

import SwiftUI

@main
struct bernieApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
