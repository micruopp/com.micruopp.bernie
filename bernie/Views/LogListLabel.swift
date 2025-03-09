//
//  PetEventRow.swift
//  bernie
//
//  Created by Michal Ruopp on 11/10/24.
//

import SwiftUI
import CoreData

struct LogListLabel: View {
    let item: Item
    
    var body: some View {
        //            Text(item.timestamp!, formatter: itemFormatter)
        Text(item.name ?? "The row text")
        Spacer()
        Text("\(item.timestamp!, formatter: itemFormatter)")
            .foregroundColor(Color.secondary)
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .short
    return formatter
}()

//#Preview {
//    LogListLabel()
//}
