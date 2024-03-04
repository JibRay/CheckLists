//
//  Lists.swift
//  CheckLists
//
//  Created by Jib Ray on 2/8/24.
//

import Foundation
import SwiftUI

// Checklist title.
struct Title: Identifiable {
    let name: String
    let emergency: Bool
    let id = UUID()
}

// Checklist item.
struct Item: Identifiable {
    let name: String
    let id = UUID()
}

// A checklist.
struct Checklist {
    let title: String
    let emergency: Bool
    let items: [Item]
    
    init(title: String, emergency: Bool, items: [Item]) {
        self.title = title
        self.emergency = emergency
        self.items = items
    }
}

// New checklists are created here.
struct Checklists {
    
    // All the checklists.
    let lists: [Checklist] =
    [Checklist(title: "Trailer", emergency: false,
               items: [
                Item(name: "Hitch coupled to ball and locked"),
                Item(name: "Strut dolly wheel removed"),
                Item(name: "Strut completely retracted"),
                Item(name: "Chains connected"),
                Item(name: "Electrical cable connected"),
                Item(name: "Running and flasher lights working"),
                Item(name: "Tailgate secure"),
                Item(name: "Tire pressures good"),
                Item(name: "No loose items in trailer bed")
               ]),
     
     Checklist(title: "Town", emergency: false,
               items: [
                Item(name: "Wallet"),
                Item(name: "Keys"),
                Item(name: "Phone"),
                Item(name: "Shoping list"),
                Item(name: "Jane's radio")
               ]),
     
     Checklist(title: "Run", emergency: false,
               items: [
                Item(name: "Garmin watch"),
                Item(name: "Timer"),
                Item(name: "Water"),
                Item(name: "Gu")
               ]),
     
     Checklist(title: "Long Run", emergency: false,
               items: [
                Item(name: "Garmin watch"),
                Item(name: "Timer"),
                Item(name: "ID bracelet"),
                Item(name: "Fuel vest"),
                Item(name: "Thermal blanket"),
                Item(name: "Water"),
                Item(name: "Gu"),
                Item(name: "Phone"),
                Item(name: "Gloves"),
                Item(name: "Jane's radio")
               ]),
     
     Checklist(title: "Race", emergency: false,
               items: [
                Item(name: "Tote bag"),
                Item(name: "Shoes"),
                Item(name: "Socks"),
                Item(name: "Shorts"),
                Item(name: "Shirts"),
                Item(name: "Down jacket"),
                Item(name: "Rain jacket"),
                Item(name: "Garmin watch"),
                Item(name: "Timer"),
                Item(name: "Gu"),
                Item(name: "Town checklist")
               ]),
     
     Checklist(title: "Bike Ride", emergency: false,
               items: [
                Item(name: "Gloves"),
                Item(name: "Helmet"),
                Item(name: "Pump"),
                Item(name: "Water Bottle"),
                Item(name: "Gu"),
                Item(name: "Apple watch or Element"),
                Item(name: "Spare tube"),
                Item(name: "Tools"),
                Item(name: "Phone"),
                Item(name: "Radio"),
                Item(name: "Check tire pressures"),
                Item(name: "Jane's radio")
               ]),
     
     Checklist(title: "N46JR Preflight", emergency: false,
               items: [
                Item(name: "POH on board"),
                Item(name: "iPAD on board"),
                Item(name: "Maps on board"),
                Item(name: "headphones on board"),
                Item(name: "Control locks removed"),
                Item(name: "Master switch on"),
                Item(name: "Confirm strobe, nav, landing lights"),
                Item(name: "Strobe, nav, landing lights off"),
                Item(name: "Master off"),
                Item(name: "Flaps full down"),
                Item(name: "Oil level okay"),
                Item(name: "Cooling air intakes clear"),
                Item(name: "Induction air intake clear"),
                Item(name: "Propeller & spinner okay"),
                Item(name: "Sample gasolator, check for water"),
                Item(name: "left wing tie-down removed"),
                Item(name: "Left leading edge checked"),
                Item(name: "Pitot, static, AOA checked"),
                Item(name: "Left wing-tip light checked"),
                Item(name: "Left fuel cap secure, vent clear"),
                Item(name: "Left aileron checked"),
                Item(name: "Left flap checked"),
                Item(name: "Sample left fuel drain, check for water"),
                Item(name: "Left tire check condition & inflation"),
                Item(name: "Left strut checked"),
                Item(name: "Left side static port checked"),
                Item(name: "Tailwheel tie-down removed"),
                Item(name: "Elevator checked"),
                Item(name: "Rudder checked"),
                Item(name: "Struts checked"),
                Item(name: "Tailwheel check condition & inflation"),
                Item(name: "Right side static port checked"),
                Item(name: "Baggage door closed & latched"),
                Item(name: "Right wing tie-down removed"),
                Item(name: "Right leading edge checked"),
                Item(name: "Right wing-tip light checked"),
                Item(name: "Right fuel cap secure, vent clear"),
                Item(name: "Right aileron checked"),
                Item(name: "Right flap checked"),
                Item(name: "Sample right fuel drain, check for water"),
                Item(name: "Right tire check condition & inflation"),
                Item(name: "Right strut checked")
               ]),
     
     Checklist(title: "N46JR Cabin", emergency: false,
               items: [
                Item(name: "Brief passagers"),
                Item(name: "Doors & windows closed and latched"),
                Item(name: "Seat belts fastened"),
                Item(name: "Loose items stowed"),
                Item(name: "Flaps up"),
                Item(name: "Fuel valve to both or fullest")
               ]),
     
     Checklist(title: "N46JR Cold Start", emergency: false,
               items: [
                Item(name: "Mixture to full rich"),
                Item(name: "Throttle to full open"),
                Item(name: "Master switch on"),
                Item(name: "Avionics switch on"),
                Item(name: "Ignition left on"),
                Item(name: "Ignition right on"),
                Item(name: "Boost pump on till 25 PSI, then off"),
                Item(name: "Throttle quarter open"),
                Item(name: "Crank till start"),
                Item(name: "Check oil pressure in green arc")
               ]),
     
     Checklist(title: "N46JR Warm Start", emergency: false,
               items: [
                Item(name: "Mixture to full rich"),
                Item(name: "Throttle to full open"),
                Item(name: "Master switch on"),
                Item(name: "Avionics switch on"),
                Item(name: "Ignition left on"),
                Item(name: "Ignition right on"),
                Item(name: "Boost pump on till 20 PSI, then off"),
                Item(name: "Mixture full lean"),
                Item(name: "Throttle full open"),
                Item(name: "Crank till engine starts to fire"),
                Item(name: "Throttle to idle"),
                Item(name: "Mixture to full rich"),
                Item(name: "Check oil pressure in green arc")
               ]),
     
     Checklist(title: "N46JR Taxi", emergency: false,
               items: [
                Item(name: "Check fuel quantity"),
                Item(name: "Set altimeter"),
                Item(name: "Set directional gyro"),
                Item(name: "Flight control move freely"),
                Item(name: "Stobe on"),
                Item(name: "Landing light as needed"),
               ]),
     
     Checklist(title: "N46JR Run-up", emergency: false,
               items: [
                Item(name: "Set brakes"),
                Item(name: "RPM to 1500"),
                Item(name: "Check left & right RPM drop"),
                Item(name: "Check ignition backup"),
                Item(name: "Ignition left & right on"),
                Item(name: "Throttle to idle"),
                Item(name: "Fuel valve to both or fullest"),
                Item(name: "Flaps as needed"),
                Item(name: "Trim to take-off"),
                Item(name: "Transponder on")
               ]),
     
     Checklist(title: "N46JR Landing", emergency: false,
               items: [
                Item(name: "Fuel valve to both or fullest"),
                Item(name: "Set altimeter"),
                Item(name: "Set directional gyro"),
                Item(name: "Mixture full rich or appropriate for altitude"),
                Item(name: "Seat belts fastened"),
                Item(name: "Landing light as needed"),
               ]),
     
     Checklist(title: "N46JR Engine out", emergency: true,
               items: [
                Item(name: "Trim for best glide speed"),
                Item(name: "Select a landing site"),
                Item(name: "Fuel valve to both or fullest"),
                Item(name: "Mixture full rich"),
                Item(name: "Both ignition switches to backup"),
               ]),
    ]
    
    // Return a list of all the checklist titles.
    func catalog() -> [Title] {
        var titles: [Title] = []
        
        for list in lists {
            titles.append(Title(name: list.title, emergency: list.emergency))
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
    private var items: [Item] = []
    
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
        self.items = checklists.lists[checklists.indexOf(title: title)].items
    }
}
