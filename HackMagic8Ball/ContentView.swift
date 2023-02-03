//
//  ContentView.swift
//  HackMagic8Ball
//
//  Created by Jennifer Allan on 1/30/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      
        VStack {
            Text("Hackley Magic 8 Ball")
                .font(.custom(
                "AmericanTypewriter",
                fixedSize:36))
    
            Button {
                print("Button pressed")
            } label: {
                Image("8ball")
            .frame(width: 100,height:100)
          
            }
            .contentShape(Rectangle())
            
            Text("Click the 8 Ball to Start")
                .font(.custom(
                "AmericanTypewriter",
                fixedSize:36))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
