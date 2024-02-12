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
    
    // This is the index of the currently selected checklist.
    private var index: Int = 0
    
    
    var body: some View {
        NavigationStack {
            //Text("Checklists:")
            //List(titles) {
            //    Text($0.name)
            //}
            ChecklistView(title: checklists.catalog()[index].name,
                          items: checklists.lists[index].items)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
