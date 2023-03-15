//
//  QuestionSelection.swift
//  HackMagic8Ball
//  Created by Jennifer Allan on 2/3/23.
//

import Foundation
import SwiftUI

let units = ["English Teacher","History Teacher","Math Teacher","Science Teacher", "Language Teacher", "Art Teacher", "Comp Sci Teacher", "Dean", "Administrator", "Hackley Fan Faves"]
let extraUnits = ["None", "English Teacher","History Teacher","Math Teacher","Science Teacher", "Language Teacher", "Art Teacher", "Comp Sci Teacher", "Dean", "Administrator", "Hackley Fan Faves"]

let englishResponses = ["EnglishYes", "EnglishNo"]
let mathResponses = ["MathYes", "MathNo"]
let historyResponses = ["hisYes", "hisNo"]
let scienceResponses = ["SciYes", "SciNo"]
let languageResponses = ["LangYes", "LangNo"]
let artResponses = ["artYes", "ArtNo"]
let CSResponses = ["CSYes", "CSNo"]
let deanResponses = ["DeanYes", "DeanNo"]
let adminResponses = ["adminYes", "adminNo"]
let hackFavResponses = ["HackYes", "HackNo"]

public var empty: [String] = []

struct QuestionSelectionView: View {
    @State private var startingValue: String = ""
    @State private var startingUnit = "Hackley Fan Faves"
    @State private var extraStartingUnit = "None"
    @State private var extraStartingUnit2 = "None"
    
    @State var areYouGoingToSecondView: Bool = false
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
                
                Section {
                    
                    Button("SUBMIT") {
                        
                        self.areYouGoingToSecondView = true
                    }
                    .disabled(startingValue.isEmpty)
                    
                }
            }
            .onAppear{
                empty = []
            }
            .onDisappear{
               myFunc(var1: startingUnit, var2: extraStartingUnit, var3: extraStartingUnit2)
                if empty.isEmpty == true {
                    empty += responses
                }
            }
            NavigationLink(destination: ShakeView(), isActive: $areYouGoingToSecondView) { EmptyView() }
        }
    }
}

func myFunc (var1: String, var2: String, var3: String) {
        if ((var1  == "English Teacher" || var2  == "English Teacher") || var3 == "English Teacher") {
            empty.append(contentsOf: englishResponses)
        }
        if ((var1  == "History Teacher" || var2  == "History Teacher") || var3 == "History Teacher") {
            empty.append(contentsOf: historyResponses)
        }
        if ((var1  == "Math Teacher" || var2  == "Math Teacher") || var3 == "Math Teacher") {
            empty.append(contentsOf: mathResponses)
        }
        if ((var1  == "Science Teacher" || var2  == "Science Teacher") || var3 == "Science Teacher") {
            empty.append(contentsOf: scienceResponses)
        }
        if ((var1  == "Language Teacher" || var2  == "Language Teacher") || var3 == "Language Teacher") {
            empty.append(contentsOf: languageResponses)
        }
        if ((var1  == "Art Teacher" || var2  == "Art Teacher") || var3 == "Art Teacher") {
            empty.append(contentsOf: artResponses)
        }
        if ((var1  == "Comp Sci Teacher" || var2  == "Comp Sci Teacher") || var3 == "Comp Sci Teacher") {
            empty.append(contentsOf: CSResponses)
        }
        if ((var1  == "Dean" || var2  == "Dean") || var3 == "Dean") {
            empty.append(contentsOf: deanResponses)
        }
        if ((var1  == "Administrator" || var2  == "Administrator") || var3 == "Administrator") {
            empty.append(contentsOf: adminResponses)
        }
        if ((var1  == "Hackley Fan Faves" || var2  == "Hackley Fan Faves") || var3 == "Hackley Fan Faves") {
            empty.append(contentsOf: hackFavResponses)
        }
    }
