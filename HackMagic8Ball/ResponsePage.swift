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
    @State private var showAlert = false
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Gradient(colors: [.indigo, .purple]))
                .ignoresSafeArea()
            VStack{
                Button("REVEAL TEACHER") {
                    showAlert = true
                }
                .accentColor(.white)
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
                .alert(teacherArray[empty.firstIndex(of: responseinball) ?? 0], isPresented: $showAlert) {Button("OK", role: .cancel) { }
                }
                
                Spacer()
                    .frame(height: 20)
                
                ZStack {
                    Image("8BallEmpty")
                        .resizable()
                        .scaledToFit()
                    
                    Text(responseinball).padding(120).font(.custom("Papyrus", size: 20)).multilineTextAlignment(.center).foregroundColor(.black)
                }
                
                Spacer()
                    .frame(height: 80)
                
                Button("NEW QUESTION") {
                    self.areYouGoingToSecondView = true
                }
                .accentColor(.white)
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
        .navigationBarBackButtonHidden(true)
        NavigationLink(destination: QuestionSelectionView(), isActive: $areYouGoingToSecondView) { EmptyView() }
    }
  
}


struct ResponsePage_Previews: PreviewProvider {
    static var previews: some View {
        ResponsePage()
    }
}
