//
//  QuestionSelection.swift
//  HackMagic8Ball
//
//  Created by Jennifer Allan on 2/3/23.
//

import Foundation
import SwiftUI

let units = ["English Teacher","History Teacher","Math Teacher","Science Teacher", "Language Teacher", "Art Teacher", "Comp Sci Teacher", "Dean", "Administrator", "Hackley Fan Faves"]
let extraUnits = ["None", "English Teacher","History Teacher","Math Teacher","Science Teacher", "Language Teacher", "Art Teacher", "Comp Sci Teacher", "Dean", "Administrator", "Hackley Fan Faves"]

struct QuestionSelectionView: View {
    @State private var startingValue: String = ""
    @State private var startingUnit = "Hackley Fan Faves"
    @State private var extraStartingUnit = "None"
    @State private var extraStartingUnit2 = "None"
    var body: some View {
        ZStack {
            
            Rectangle()
                .fill(Gradient(colors: [.indigo, .purple]))
                .ignoresSafeArea()
            
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
                    Picker("Type #3", selection: $extraStartingUnit2){
                        ForEach(extraUnits, id: \.self){
                            Text("\($0)")
                        }
                    }
                }
                Section{
//                    var hasAsked = false
//                    if (startingValue != "") { hasAsked = true }
//                    NavigationLink(destination: ShakeView(), isActive: $hasAsked)
                    NavigationLink(destination: ShakeView())
                    {
                        Text("SUBMIT")
                    }
                }
            }
        }
    }
}
       
