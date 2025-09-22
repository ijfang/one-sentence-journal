//
//  ContentView.swift
//  OneSentenceJournal
//
//  Created by Isabelle Fang on 9/19/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       HomeView()
        
        TabView {
            InputView()
                .tabItem {
                    Label("Original", systemImage: "timer")
                }
                            
                           ListView()
                                .tabItem {
                                    Label("Pomodoro", systemImage: "leaf.circle")
                                }
                        }
    }
    
}

#Preview {
    ContentView()
}
