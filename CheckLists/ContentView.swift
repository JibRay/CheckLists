//
//  ContentView.swift
//  CheckLists
//
//  Created by Jib Ray on 2/7/24.
//

import SwiftUI

let checklists: Checklists = Checklists()

struct ContentView: View {
    private var titles = checklists.catalog()
    
    var body: some View {
        NavigationStack {
            Text("Checklists")
                .bold()
            List(titles) {
                row in
                NavigationLink(row.name) {
                    ChecklistView(title: row.name)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
