//
//  FirstTestApp.swift
//  FirstTest
//
//  Created by 박서윤 on 7/11/24.
//

import SwiftUI

@main
struct FirstTestApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
