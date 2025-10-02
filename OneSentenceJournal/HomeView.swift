//
//  HomeView.swift
//  OneSentenceJournal
//
//  Created by Isabelle Fang on 9/21/25.
//

import SwiftUI

struct HomeView: View {
    @State private var showNewEntry = false
    let image = Image("Hedgehog")
    
    var body: some View {
        NavigationStack{
            VStack {
                Image("Hedgehog")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200)
                    
                Text("One-Sentence Journal")
                    .multilineTextAlignment(.center)
                    .font(.system(size: 42))
                    .fontWeight(.bold)
                    .foregroundColor(Color(hex: "#5A3E36"))
                    .padding()
                
                NavigationLink(destination: InputView()) {
                    Button("New Entry"){
                        showNewEntry = true
                        
                    }.fullScreenCover(isPresented: $showNewEntry){
                            TabView{
                                InputView()
                                    .tabItem {
                                        Label("New Entry", systemImage: "book.pages.fill")
                                    }
                                
                                ListView()
                                    .tabItem {
                                        Label("Previous Entries", systemImage: "list.bullet")
                                }
                        }
                    }
                        .frame(width: 175, height: 50)
                        .font(.system(size: 20, design: .rounded))
                        .fontWeight(.bold)
                        .background(RoundedRectangle(cornerRadius: 50).fill(Color(hex: "#F7A96B")))
                        .overlay(RoundedRectangle(cornerRadius: 50)
                            .stroke(lineWidth: 10)
                            .foregroundColor(Color(hex: "F5903B"))
                        ).foregroundStyle(Color(hex: "FFE8D5"))
                }
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(hex: "#FFE8D5"))
            
        }
    }
}

#Preview {
   HomeView()
}
