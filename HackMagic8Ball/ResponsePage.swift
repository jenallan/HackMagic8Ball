//
//  ResponsePage.swift
//  HackMagic8Ball
//
//  Created by Jennifer Allan on 2/9/23.
//

import SwiftUI

struct ResponsePage: View {
    //make array to hold possible text values, eventually an audio array too
    
    @State private var message: String = "UR FUTURE"
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Gradient(colors: [.indigo, .purple]))
                .ignoresSafeArea()
            Image("8BallEmpty")
                .resizable()
                .scaledToFit()
            Text(message).padding(120).multilineTextAlignment(.center)
        }
    }
}

struct ResponsePage_Previews: PreviewProvider {
    static var previews: some View {
        ResponsePage()
    }
}
