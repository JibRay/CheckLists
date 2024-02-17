//
//  Lists.swift
//  CheckLists
//
//  Created by Jib Ray on 2/8/24.
//

import Foundation
import SwiftUI

// An item in a checklist.
// FIXME: May not need separate Item and CheckListItem.
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

// Checklist item description.
struct ChecklistItem: Identifiable {
    let name: String
    let id = UUID()
}

// New checklists are created here.
struct Checklists {
    
    // All the checklists.
    let lists: [Checklist] =
    [Checklist(title: "Trailer",
               items: [
                Item(text: "Hitch coupled to ball and locked"),
                Item(text: "Strut dolly wheel removed"),
                Item(text: "Strut completely retracted"),
                Item(text: "Chains connected"),
                Item(text: "Electrical cable connected"),
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
               ]),
     
     Checklist(title: "N46JR Preflight",
               items: [
                Item(text: "POH on board"),
                Item(text: "iPAD on board"),
                Item(text: "Maps on board"),
                Item(text: "headphones on board"),
                Item(text: "Control locks removed"),
                Item(text: "Master switch on"),
                Item(text: "Confirm strobe, nav, landing lights"),
                Item(text: "Strobe, nav, landing lights off"),
                Item(text: "Master off"),
                Item(text: "Flaps full down"),
                Item(text: "Oil level okay"),
                Item(text: "Cooling air intakes clear"),
                Item(text: "Induction air intake clear"),
                Item(text: "Propeller & spinner okay"),
                Item(text: "Sample gasolator, check for water"),
                Item(text: "left wing tie-down removed"),
                Item(text: "Left leading edge checked"),
                Item(text: "Pitot, static, AOA checked"),
                Item(text: "Left wing-tip light checked"),
                Item(text: "Left fuel cap secure, vent clear"),
                Item(text: "Left aileron checked"),
                Item(text: "Left flap checked"),
                Item(text: "Sample left fuel drain, check for water"),
                Item(text: "Left tire check condition & inflation"),
                Item(text: "Left strut checked"),
                Item(text: "Left side static port checked"),
                Item(text: "Tailwheel tie-down removed"),
                Item(text: "Elevator checked"),
                Item(text: "Rudder checked"),
                Item(text: "Struts checked"),
                Item(text: "Tailwheel check condition & inflation"),
                Item(text: "Right side static port checked"),
                Item(text: "Baggage door closed & latched"),
                Item(text: "Right wing tie-down removed"),
                Item(text: "Right leading edge checked"),
                Item(text: "Right wing-tip light checked"),
                Item(text: "Right fuel cap secure, vent clear"),
                Item(text: "Right aileron checked"),
                Item(text: "Right flap checked"),
                Item(text: "Sample right fuel drain, check for water"),
                Item(text: "Right tire check condition & inflation"),
                Item(text: "Right strut checked")
               ]),
     
     Checklist(title: "N46JR Cabin",
               items: [
                Item(text: "Brief passagers"),
                Item(text: "Doors & windows closed and latched"),
                Item(text: "Seat belts fastened"),
                Item(text: "Loose items stowed"),
                Item(text: "Flaps up"),
                Item(text: "Fuel valve to both or fullest")
               ]),
     
     Checklist(title: "N46JR Cold Start",
               items: [
                Item(text: "Mixture to full rich"),
                Item(text: "Throttle to full open"),
                Item(text: "Master switch on"),
                Item(text: "Avionics switch on"),
                Item(text: "Ignition left on"),
                Item(text: "Ignition right on"),
                Item(text: "Boost pump on till 25 PSI, then off"),
                Item(text: "Throttle quarter open"),
                Item(text: "Crank till start"),
                Item(text: "Check oil pressure in green arc")
               ]),
     
     Checklist(title: "N46JR Warm Start",
               items: [
                Item(text: "Mixture to full rich"),
                Item(text: "Throttle to full open"),
                Item(text: "Master switch on"),
                Item(text: "Avionics switch on"),
                Item(text: "Ignition left on"),
                Item(text: "Ignition right on"),
                Item(text: "Boost pump on till 20 PSI, then off"),
                Item(text: "Mixture full lean"),
                Item(text: "Throttle full open"),
                Item(text: "Crank till engine starts to fire"),
                Item(text: "Throttle to idle"),
                Item(text: "Mixture to full rich"),
                Item(text: "Check oil pressure in green arc")
               ]),
     
     Checklist(title: "N46JR Taxi",
               items: [
                Item(text: "Check fuel quantity"),
                Item(text: "Set altimeter"),
                Item(text: "Set directional gyro"),
                Item(text: "Flight control move freely"),
                Item(text: "Stobe on"),
                Item(text: "Landing light as needed"),
               ]),
     
     Checklist(title: "N46JR Run-up",
               items: [
                Item(text: "Set brakes"),
                Item(text: "RPM to 1500"),
                Item(text: "Check left & right RPM drop"),
                Item(text: "Check ignition backup"),
                Item(text: "Ignition left & right on"),
                Item(text: "Throttle to idle"),
                Item(text: "Fuel valve to both or fullest"),
                Item(text: "Flaps as needed"),
                Item(text: "Trim to take-off"),
                Item(text: "Transponder on")
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
    
    // Return the index of the checklist with title.
    func indexOf(title: String) -> Int {
        for index in 0..<lists.count {
            if (title == lists[index].title) {
                return index
            }
        }
        return -1
    }
}
    
// Display a checklist title and items.
struct ChecklistView: View {
    // Set to hold the selected rows.
    @State private var multiSelection = Set<UUID>()

    private var title = ""
    private var items: [ChecklistItem] = []
    
    var body: some View {
        NavigationStack {
            List(items, selection: $multiSelection) {
                Text($0.name)
            }
            .navigationTitle(title)
            .toolbar { EditButton() }
        }
    }
    
    // Input is a checklist title.
    init(title: String) {
        let checklists: Checklists = Checklists()
        self.title = title
        for item in checklists.lists[checklists.indexOf(title: title)].items {
            self.items.append(item.text)
        }
    }
}
