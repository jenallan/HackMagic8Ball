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
                        .font(.system(size: 15))
                }
                Section{
                    Picker("Type #1", selection: $startingUnit){
                        ForEach(units, id: \.self){
                            Text("\($0)")
                        }
                    }
                }header:{
                    Text("Response Type")
                        .font(.system(size: 15))
                }
                Section{
                    Picker("Type #2", selection: $extraStartingUnit){
                        ForEach(extraUnits, id: \.self){
                            Text("\($0)")
                        }
                    }
                }
                Section{
                    Picker("Type #3", selection: $extraStartingUnit){
                        ForEach(extraUnits, id: \.self){
                            Text("\($0)")
                        }
                    }
                }
            }
// THIS SHOULD MAKE THE BACKGROUND OF THE FORM PURPLE BUT NOT THE ACTUAL INPUT SPOTS BUT IT ISN'T WORKING IDK WHY
//            .background(Color.purple)
//            .onAppear {
//              UITableView.appearance().backgroundColor = .clear
//            }
//            .onDisappear {
//              UITableView.appearance().backgroundColor = .systemGroupedBackground
//            }
        }
    }
    
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

    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
    
