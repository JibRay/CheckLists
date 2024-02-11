//
//  Lists.swift
//  CheckLists
//
//  Created by Jib Ray on 2/8/24.
//

import Foundation
import SwiftUI

// An item in a checklist.
struct Item {
    var completed: Bool
    let text: ChecklistItem
    
    init(text: String) {
        self.completed = false
        self.text = ChecklistItem(name: text)
    }
}

// A checklist.
struct Checklist {
    let title: String
    let items: [Item]
    
    init(title: String, items: [Item]) {
        self.title = title
        self.items = items
    }
    
    // Return true if all items in the checklist have been completed.
    // Return false otherwise.
    func isCompleted() -> Bool {
        var done = true
        for item in items {
            if (!item.completed) {
                done = false
            }
        }
        return done
    }
}

// Checklist title used in a List.
struct Title: Identifiable {
    let name: String
    let id = UUID()
}

// Checklist item description used in a List.
struct ChecklistItem: Identifiable {
    let name: String
    let id = UUID()
}

// New checklists are created here.
struct Checklists {
    let lists: [Checklist] =
    [Checklist(title: "Trailer",
               items: [
                Item(text: "Hitch coupled to ball and locked"),
                Item(text: "Strut dolly wheel removed"),
                Item(text: "Strut completely retracted"),
                Item(text: "Chains connected"),
                Item(text: "Electrical connector connected"),
                Item(text: "Running and flasher lights working"),
                Item(text: "Tailgate secure"),
                Item(text: "Tire pressures good"),
                Item(text: "No loose items in trailer bed")
               ]),
     Checklist(title: "Town",
               items: [
                Item(text: "Wallet"),
                Item(text: "Keys"),
                Item(text: "Shoping list")
               ]),
     Checklist(title: "Run",
               items: [
                Item(text: "Watch"),
                Item(text: "Timer"),
                Item(text: "Water"),
                Item(text: "Gu")
               ])
    ]
    
    // Return a list of all the checklist titles.
    func catalog() -> [Title] {
        var titles: [Title] = []
        
        for list in lists {
            titles.append(Title(name: list.title))
        }
        
        return titles
    }
    
    // Return a list of all the items in the checklist selected by
    // index.
    func checklistItems(index: Int) -> [ChecklistItem] {
        var items: [ChecklistItem] = []
        
        for listItem in lists[index].items {
            items.append(listItem.text)
        }
        
        return items
    }
    
    //func select(index: Int) -> Checklist {
    //    return lists[index]
    //}
}

// Display the checklist selected by index.
struct ChecklistView: View {
    private var title = ""
    private var items: [ChecklistItem] = []
    
    var body: some View {
        VStack {
            Text(title)
            List(items) {
                Text($0.name)
            }
        }
    }
    
    init(title: String, items: [Item]) {
        self.title = title
        for item in items {
            self.items.append(item.text)
        }
    }
}
