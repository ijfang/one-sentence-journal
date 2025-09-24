//
//  OneSentenceJournalApp.swift
//  OneSentenceJournal
//
//  Created by Isabelle Fang on 9/19/25.
//

import SwiftUI
import CoreData

@main
struct OneSentenceJournalApp: App {
    @Environment(\.scenePhase) var scenePhase
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
        .onChange(of: scenePhase, initial: true) { _,_  in
            persistenceController.save()
        }
    }
}
