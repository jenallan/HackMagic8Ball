//
//  LoadingScreen.swift
//  HackMagic8Ball
//
//  Created by Jennifer Allan on 1/30/23.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Rectangle()
                    .fill(Gradient(colors: [.indigo, .purple]))
                    .ignoresSafeArea()
                VStack{
                    Text("HACKLEY MAGIC 8 BALL").font(.custom("Papyrus", size: 36))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)//.offset(x: 0, y:-125)
                    NavigationLink(destination: QuestionSelectionView())
                    {  Image("8BallCentered")
                            .resizable()
                            .scaledToFit()
                    }
                    Text("click the 8 ball to start").font(.custom("Papyrus", size: 30))
                        .foregroundColor(.white)//.offset(x: 0, y:220)
                }
    
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
    
