//
//  ResponsePage.swift
//  HackMagic8Ball
//
//  Created by Jennifer Allan on 2/9/23.
//

import SwiftUI

let responses = ["Yes","No","Maybe","Outlook good", "Ask again later", "Signs point to Yes", "Don't count on it"]



struct ResponsePage: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Gradient(colors: [.indigo, .purple]))
                .ignoresSafeArea()
            Image("8BallEmpty")
                .resizable()
                .scaledToFit()
            
            Text(empty.randomElement()!).padding(120).font(.custom("Papyrus", size: 20)).multilineTextAlignment(.center).foregroundColor(.black)
        }
    }
}

struct ResponsePage_Previews: PreviewProvider {
    static var previews: some View {
        ResponsePage()
    }
}
