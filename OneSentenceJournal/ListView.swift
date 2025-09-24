//
//  ListView.swift
//  OneSentenceJournal
//
//  Created by Isabelle Fang on 9/21/25.
//

import SwiftUI
import Foundation

func dateAsString(date: Date) -> String{
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    return formatter.string(from: date)
}

struct ListView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors:[NSSortDescriptor(keyPath: \Entry.date, ascending: true)])
    var entries: FetchedResults<Entry>
    
    var body: some View {

        VStack{
            List(entries) { entry in
                
                Text("\(dateAsString(date: entry.date!)) - \(entry.text ?? "Unknown")")
                
            }
            Text("Count: \(entries.count)")
        }
    }
}

#Preview {
    ListView()
}
