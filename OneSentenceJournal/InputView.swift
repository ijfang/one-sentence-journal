//
//  InputView.swift
//  OneSentenceJournal
//
//  Created by Isabelle Fang on 9/19/25.
//

import SwiftUI

struct InputView: View {
    @State var text = ""
    let characterLimit = 100
    
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
                .foregroundStyle(Color(hex: "#5A3E36"))
            
            TextField("Enter text",
                      text: $text,
                      prompt: Text("Write a sentence..."),
                      axis: .vertical
            )
            .frame(width: 350, height: 200, alignment: .top)
            .padding()
            
            //             this pink should be a little peachier
            .background(RoundedRectangle(cornerRadius: 50).fill(Color(hex: "#F9C6D2")))
            .font(.system(size: 22, design: .rounded))
            
            .overlay(RoundedRectangle(cornerRadius: 50)
                .stroke(lineWidth: 10)
                .foregroundColor(Color(hex: "#ED8AA0"))
                     
            )
            .padding(.top, 20)
            .onChange(of: text){
                if text.count > characterLimit {
                    let limitedText = text.dropLast()
                    text = String(limitedText)
                }
            }
            
            //            .onSubmit {
            //                    validate(name: username)
            //                }
            
            HStack{
                Spacer()
                
                Text("\(text.count) / \(characterLimit)")
                    .foregroundColor(Color(hex: "#5A3E36"))
                    .padding(EdgeInsets(top: 5, leading: 0, bottom: 0, trailing: 30))
            }
            
           
            
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
        
       
        
    }
}

#Preview {
    InputView()
}
