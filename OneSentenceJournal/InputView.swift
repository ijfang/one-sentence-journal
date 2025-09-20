//
//  InputView.swift
//  OneSentenceJournal
//
//  Created by Isabelle Fang on 9/19/25.
//

import SwiftUI

struct InputView: View {
    @State var text = ""
    
    var body: some View {
        VStack {
            Text("How was your day?")
                .padding(.bottom, 4)
                .overlay(RoundedRectangle(cornerRadius: 7)
                    .stroke(.secondary.opacity(0.5), lineWidth: 1)
                )
            
            TextField("Enter text",
                      text: $text,
                      prompt: Text("Write a sentence..."),
                      axis: .vertical
                      )
            .frame(width: 350, height: 200, alignment: .top)
            .font(.system(size: 20))
            .overlay(RoundedRectangle(cornerRadius: 7)
                .stroke(.secondary.opacity(0.5), lineWidth: 1)
            )
//            .padding(
//                EdgeInsets(top:10, leading: 6, bottom: 0, trailing: 6))
//            .onSubmit {
//                    validate(name: username)
//                }
            Button("Save"){}
                .overlay(RoundedRectangle(cornerRadius: 7)
                    .stroke(.secondary.opacity(0.5), lineWidth: 1)
                )
        }
        
        .padding()
        
        
       
    }
}


#Preview {
    InputView()
}
