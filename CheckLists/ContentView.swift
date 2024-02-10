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
        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
            

            Text("Checklists:")
            List(titles) {
                Text($0.name)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
