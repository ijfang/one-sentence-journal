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
    formatter.dateStyle = .medium
    return formatter.string(from: date)
}

struct ListView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors:[NSSortDescriptor(keyPath: \Entry.date, ascending: false)])
    var entries: FetchedResults<Entry>
    
    var body: some View {
        VStack{
            List(entries) { entry in
                ZStack{
                    RoundedRectangle(cornerRadius: 50)
                        .fill(Color(hex: "#F9C6D2"))
                        .stroke(Color(hex: "#ED8AA0"), lineWidth: 10)
                    
                    VStack{
                        Text("\(dateAsString(date: entry.date!))")
                            .foregroundColor(Color(hex: "#5A3E36"))
                            .fontWeight(.bold)
                            .padding(.top)
                        
                        Text( "\(entry.text ?? "Unknown")")
                            .foregroundColor(Color(hex: "#5A3E36"))
                            .fontWeight(.regular)
                            .listRowBackground(Color(hex: "#FFE8D5"))
                            .padding(.bottom)
                    }
                }
                .listRowBackground(Color.clear)
                
            }
            .scrollContentBackground(.hidden)
            .listRowSeparator(.hidden)
            .listRowBackground(Color.black)
                
                Text("Count: \(entries.count)")
                    .foregroundColor(Color(hex: "#5A3E36"))
                    .fontWeight(.bold)
                    .padding()
            }
        .cornerRadius(20)
        .background(Color(hex: "#FFE8D5"))
    }
}

#Preview {
    ListView()
}
