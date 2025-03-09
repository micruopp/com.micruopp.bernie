//
//  PetEventDetail.swift
//  bernie
//
//  Created by Michal Ruopp on 11/10/24.
//

import SwiftUI

struct LogItemDetailView: View {
    
    private var item: Item
    
    init(_ itemDetails: Item) {
        item = itemDetails
    }
    
    var body: some View {
        NavigationLink {
            Text(item.name ?? "The item name")
                .font(.title)
                .padding()
            Text("Item at \(item.timestamp!, formatter: itemFormatter)")
        }
        label: {
            LogListLabel(item: item)
        }
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .short
    sayHi()
    return formatter
}()

//struct PetEventDetail_Previews: PreviewProvider  {
//    static var previews: some View {
//        PetEventDetail(nil as! Item)
//    }
//}
