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
            Text("One-Sentence Journal")
                .font(.system(size: 22))
                .fontWeight(.bold)
                .foregroundColor(Color(hex: "#5A3E36"))
                .padding()
            
            Text("How was your day?")
                .frame(width: 350, height: 50)
                .font(.system(size: 22))
                .background(RoundedRectangle(cornerRadius: 50).fill(Color(hex: "#FFF3C4")))
                .padding(.bottom, 4)
                
                .overlay(RoundedRectangle(cornerRadius: 30)
                    .stroke(lineWidth: 10)
                    .foregroundColor(Color(hex: "#FFDE5C"))
                )
                .fontWeight(.bold)
//            maybe only need to add top padding here
//                .padding(EdgeInsets(top: 10))
                
            
            TextField("Enter text",
                      text: $text,
                      prompt: Text("Write a sentence..."),
                      axis: .vertical
                      )
//            .background(Color(hex: "#F9C6D2"))
                .frame(width: 350, height: 200, alignment: .top)
                .padding()
            
//             this pink should be a little peachier
                .background(RoundedRectangle(cornerRadius: 50).fill(Color(hex: "#F9C6D2")))
                .font(.system(size: 22))
                
                .overlay(RoundedRectangle(cornerRadius: 50)
                    .stroke(lineWidth: 10)
                    .foregroundColor(Color(hex: "#ED8AA0"))
                
                )
                .padding()
//            .onSubmit {
//                    validate(name: username)
//                }
            Button("Save"){}
                .frame(width: 175, height: 50)
                .font(.system(size: 20, design: .rounded))
                .fontWeight(.bold)
                .background(RoundedRectangle(cornerRadius: 50).fill(Color(hex: "#F7A96B")))
                .overlay(RoundedRectangle(cornerRadius: 50)
                    .stroke(lineWidth: 10)
                    .foregroundColor(Color(hex: "F5903B"))
                )
                .foregroundStyle(Color(hex: "FFE8D5"))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(hex: "#FFE8D5"))
        .padding()
        
        
       
    }
}


#Preview {
    InputView()
}
