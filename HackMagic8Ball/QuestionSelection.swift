//
//  QuestionSelection.swift
//  HackMagic8Ball
//
//  Created by Jennifer Allan on 2/3/23.
//

import Foundation
import SwiftUI

struct QuestionSelectionView: View {
    @State private var startingValue: String = ""
    let units = ["English Teacher","History Teacher","Math Teacher","Science Teacher", "Language Teacher", "Art Teacher", "Comp Sci Teacher", "Dean", "Administrator", "Hackley Fan Faves"]
    let extraUnits = ["None", "English Teacher","History Teacher","Math Teacher","Science Teacher", "Language Teacher", "Art Teacher", "Comp Sci Teacher", "Dean", "Administrator", "Hackley Fan Faves"]
    @State private var startingUnit = "Hackley Fan Faves"
    @State private var extraStartingUnit = "None"
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
                    Picker("Type #3", selection: $extraStartingUnit){
                        ForEach(extraUnits, id: \.self){
                            Text("\($0)")
                        }
                    }
                }
                Section{
                    NavigationLink(destination: ShakeView())
                    {
                        Text("SUBMIT")
                        
                    }
                }
            }
    // THIS SHOULD MAKE THE BACKGROUND OF THE FORM PURPLE BUT NOT THE ACTUAL INPUT SPOTS BUT IT ISN'T WORKING IDK WHY
            .background(Color.purple)
            .onAppear {
              UITableView.appearance().backgroundColor = .clear
            }
            .onDisappear {
              UITableView.appearance().backgroundColor = .systemGroupedBackground
        }
        }
    }
}
       
