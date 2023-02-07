//
//  LoadingScreen.swift
//  HackMagic8Ball
//
//  Created by Jennifer Allan on 1/30/23.
//

import SwiftUI

struct LoadingView: View {
    struct ContentView: View{
        @State private var startingValue: String = ""
        
        var body: some View {
            Form{
                Section{
                    TextField("Enter your question", text: $startingValue)
                }
            header:
                { Text("Question")}
                
                Section{
                    Text("Hello World")
                }
            header:
                { Text("Response Type")}
                
            }
            
        }
    }
    
    var body: some View {
        VStack {
            Text("Hackley Magic 8 Ball")
                .font(.custom(
                    "AmericanTypewriter",
                    fixedSize:36))
            NavigationView{
                NavigationLink(destination: ContentView())
                {  Image("8Ball")
                        .resizable()
                        .scaledToFit()
                    .frame(width: 250, height: 250)}
                
            }
            
        }
        
    }
}
    
    //        VStack {
    //            Text("Hackley Magic 8 Ball")
    //                .font(.custom(
    //                "AmericanTypewriter",
    //                fixedSize:36))
    
    
    //            Button {
    //                print("Button pressed")
    //            } label: {
    //                Image("8Ball")
    //                    .resizable()
    //                    .scaledToFit()
    //                    .frame(width: 250, height: 250)
    ////                Image(systemName: "8.circle.fill")
    ////                    .foregroundColor(.black)
    ////                    .font(.system(size: 250))
    //            }
    //            .contentShape(Rectangle())
    
    //            Text("Click the 8 Ball to Start")
    //                .font(.custom(
    //                "Arial",
    //                fixedSize:36))
    //        }
    //        .padding()
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            LoadingView()
        }
    }
    
