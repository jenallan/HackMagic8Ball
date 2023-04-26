//
//  ResponsePage.swift
//  HackMagic8Ball
//
//  Created by Jennifer Allan on 2/9/23.
//

import SwiftUI

let responses = ["Yes","No","Maybe","Outlook good", "Ask again later", "Signs point to Yes", "Don't count on it"]



struct ResponsePage: View {
    @State var areYouGoingToSecondView: Bool = false
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Gradient(colors: [.indigo, .purple]))
                .ignoresSafeArea()
            VStack{
                ZStack {
                    Image("8BallEmpty")
                        .resizable()
                        .scaledToFit()
                    
                    Text(empty.randomElement()!).padding(120).font(.custom("Papyrus", size: 20)).multilineTextAlignment(.center).foregroundColor(.black)
                }
                
                Button("NEW QUESTION") {
                    self.areYouGoingToSecondView = true
                }
                .background(
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.blue)
                        .frame(minWidth: 150)
                        .frame(minHeight: 50)
                        .opacity(0.3)
                        .background(
                            Color.blue
                                .opacity(0.1)
                                .frame(minWidth: 150)
                                .frame(minHeight: 50)
                                .blur(radius: 10)
                        )
                )

            }
        
                    }
        NavigationLink(destination: QuestionSelectionView(), isActive: $areYouGoingToSecondView) { EmptyView() }
    }
  
}


struct ResponsePage_Previews: PreviewProvider {
    static var previews: some View {
        ResponsePage()
    }
}
