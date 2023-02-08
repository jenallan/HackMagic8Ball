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
        let units = ["English Teacher","History Teacher","Math Teacher","Science Teacher", "Language Teacher", "Art Teacher", "Comp Sci Teacher", "Dean", "Administrator", "Hackley Fan Faves"]
        let extraUnits = ["None", "English Teacher","History Teacher","Math Teacher","Science Teacher", "Language Teacher", "Art Teacher", "Comp Sci Teacher", "Dean", "Administrator", "Hackley Fan Faves"]
        @State private var startingUnit = "Hackley Fan Faves"
        @State private var extraStartingUnit = "None"
        var body: some View {
            Form{
                Section{
                    TextField("Enter your question", text: $startingValue)
                }
            header:
                {
                    Text("Question")
                        .font(.custom("AmericanTypewriter",fixedSize: 15))
                }
                Section{
                    Picker("Response Type", selection: $startingUnit){
                        ForEach(units, id: \.self){
                            Text("\($0)")
                        }
                    }
                }header:{
                    Text("Response Type")
                        .font(.custom("AmericanTypewriter",fixedSize: 15))
                }
                Section{
                    Picker("Response Type", selection: $extraStartingUnit){
                        ForEach(extraUnits, id: \.self){
                            Text("\($0)")
                        }
                    }
                }
                Section{
                    Picker("Response Type", selection: $extraStartingUnit){
                        ForEach(extraUnits, id: \.self){
                            Text("\($0)")
                        }
                    }
                }
            }
        }
    }
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Rectangle()
                    .fill(Gradient(colors: [.indigo, .purple]))
                    .ignoresSafeArea()
                Text("Hackley Magic 8 Ball").font(.custom("Papyrus", size: 36))
                    .foregroundColor(.white).offset(x: 0, y:-110)
                
                NavigationLink(destination: ContentView())
                {  Image("8Ball")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, height: 250).offset(x: 0, y:55)
                    
                }
                
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
    
