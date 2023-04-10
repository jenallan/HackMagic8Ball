//
//  Components.swift
//  HackMagic8Ball
//
//  Created by Zara Haider on 4/10/23.
//

import SwiftUI

struct CustomTextField: View {
    var placeholder: String
    @Binding var text: String
    
    var body: some View {
        TextField("", text: $text)
            .foregroundColor(Color.white)
            .placeholder(placeholder, when: text.isEmpty)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 25)
                    .fill(.clear)
                    .frame(minWidth: 350)
            )
            .padding(.horizontal, 10)
            .background(
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.white)
                    .opacity(0.1)
                    .background(
                        Color.white
                            .opacity(0.005)
                            .blur(radius: 10)
                    )
            )
        
    }
}

extension View {
    func placeholder<Content: View>(

            when shouldShow: Bool,

            alignment: Alignment = .leading,

            @ViewBuilder placeholder: () -> Content) -> some View {



            ZStack(alignment: alignment) {

                placeholder().opacity(shouldShow ? 1 : 0)

                self

            }

        }

        

        func placeholder(

            _ text: String,

            when shouldShow: Bool,

            alignment: Alignment = .leading) -> some View {

                

            placeholder(when: shouldShow, alignment: alignment) { Text(text).foregroundColor(.gray) }

        }
}
