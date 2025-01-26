//
//  TestView.swift
//  bernie
//
//  Created by Michal Ruopp on 11/11/24.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        NavigationView {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .navigationTitle("Test Test Test")
                .toolbarBackground(Color.teal, for: .navigationBar)
                .toolbarColorScheme(.light, for: .navigationBar)
        }
    }
}

#Preview {
    TestView()
}
