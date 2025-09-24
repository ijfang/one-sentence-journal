//
//  ListView.swift
//  OneSentenceJournal
//
//  Created by Isabelle Fang on 9/21/25.
//

import SwiftUI

struct ListView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var entries: FetchedResults<Entry>
    
    var body: some View {
        VStack{
            List(entries) { entry in
                Text(entry.text ?? "Unknown")
                
            }
            Text("Count: \(entries.count)")
        }
    }
}

#Preview {
    ListView()
}
