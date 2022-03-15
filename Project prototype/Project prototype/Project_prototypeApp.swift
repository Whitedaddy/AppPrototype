//
//  Project_prototypeApp.swift
//  Project prototype
//
//  Created by MacBook on 15.03.2022.
//

import SwiftUI

@main
struct Project_prototypeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
