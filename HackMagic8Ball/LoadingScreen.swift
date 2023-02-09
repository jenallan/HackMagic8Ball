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
                Text("HACKLEY MAGIC 8 BALL").font(.custom("Papyrus", size: 36))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white).offset(x: 0, y:-125)
                Text("click the 8 ball to start").font(.custom("Papyrus", size: 30))
                    .foregroundColor(.white).offset(x: 0, y:220)
                
                NavigationLink(destination: QuestionSelectionView())
                {  Image("8Ball")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, height: 250).offset(x: 0, y:55)
                    
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
    
