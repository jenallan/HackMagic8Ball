//
//  QuestionSelection.swift
//  HackMagic8Ball
//  Created by Jennifer Allan on 2/3/23.
//
import Foundation
import SwiftUI

let units = ["All", "English Teacher","History Teacher","Math Teacher","Science Teacher", "Language Teacher", "Art Teacher", "Comp Sci Teacher", "Dean", "Administrator", "Hackley Fan Faves"]
let extraUnits = ["None", "English Teacher","History Teacher","Math Teacher","Science Teacher", "Language Teacher", "Art Teacher", "Comp Sci Teacher", "Dean", "Administrator", "Hackley Fan Faves"]

let englishResponses = ["Heh", "Fruit it up!", "That's life in the fast lane", "Oh, sugar and molasses!", "That's a question only you can answer", "Just do your best"]
let englishTeachers = ["Mr. Flanigan", "Dr. Feurgeson", "Dr. Feurgeson", "Oh, sugar and molasses!", "Ms. Moriarty", "Ms. Moriarty"]
let mathResponses = ["It's good to know stuff", "Don't get fatootzed", "The world is your oyster", "This is going to be easy", "You're never going to use this"]
let mathTeachers = ["Mr. Clark", "Ms. Kaplan", "Ms. Kaplan", "Mr. Ruocco", "Mr. Ruocco"]
let historyResponses = ["Si, for all of you that don't know that's yes in Spanish", "Are you kidding me right now"]
let historyTeachers = ["Mr. Sykes", "Mr. Sykes"]
let scienceResponses = ["Good question...I don't know", "Hmmmm...","Focus on the task at hand", "Believe in my methods", "Make good choices", "Feelings are not facts"]
let scienceTeachers = ["Dr. Ying", "Dr. Ying","Mr. McLay", "Mr. McLay", "Ms. EK", "Ms. Johnson"]
let languageResponses = ["On ne sait jamais!", "Si", "No", "Be solution-forward", "Check Schoology", "Phone a friend"]
let languageTeachers = ["Ms. Crepeau", "Dr. Sosa", "Dr. Sosa", "Ms. Washington", "Ms. Washington", "Ms. Washington"]
let artResponses = ["You tell me", "No way", "Not today another day..."]
let artTeachers = ["Ms. Coble", "Ms. Coble", "Ms. Coble"]
let CSResponses = ["Ask a peer and then come talk to me", "Java.lang.Tranchida : That should have been a thought bubble", "Use the power of two human eyes"]
let CSTeachers = ["Ms. Tranchida", "Ms. Tranchida", "Mr. Shaw"]
let deanResponses = ["Yes", "No"]
let deanTeachers = ["Ms. Leffler", "Ms. Stanek"]
let adminResponses = ["Suck it up buttercup", "You're good to go", "That's a bit of a stretch", "That might be likely", "Yeah, not so much", "Yeah buddy!", "I don't think so!", "It depends..."]
let adminTeachers = ["Mr. Arnold", "Ms. Coy", "Mr. Latson", "Mr. Latson", "Mr. Latson", "Mr. Wirtz", "Mr. Wirtz", "Ms. Hall"]
let hackFavResponses = ["YEESSSS", "That's Crazy", "No", "Like I Don't Know","Absolutely Not", "No way", "Ask Again Later", "100%", "Such a good question"]
let hackFaves = ["Kylie", "Jen", "Grace", "Kylie","Ella", "Aidan", "Graham", "Zara", "Tibet"]


let allResponses = englishResponses + mathResponses + historyResponses + scienceResponses + languageResponses + artResponses + CSResponses + deanResponses + adminResponses + hackFavResponses
let allTeachers = englishTeachers + mathTeachers + historyTeachers + scienceTeachers + languageTeachers + artTeachers + CSTeachers + deanTeachers + adminTeachers + hackFaves

public var empty: [String] = []
public var teacherArray: [String] = []
var responseinball = "NOT WORKING"

struct QuestionSelectionView: View {
    @State private var startingValue: String = ""
    @State private var startingUnit = "All"
    @State private var extraStartingUnit = "None"
    @State private var extraStartingUnit2 = "None"
    @State private var showingAlert = false
    @State private var errorTitle = "Error"
    @State private var errorMessage = "Please type a question"
    
    @State var areYouGoingToSecondView: Bool = false
    var body: some View {
        ZStack {
            
            Rectangle()
                .fill(Gradient(colors: [.indigo, .purple]))
                .ignoresSafeArea()
            
            //Form{
            VStack {
                
                Text("Question")
                    .font(.system(size: 16))
                    .fontWeight(.bold)
                
                
                CustomTextField(placeholder: "Enter your question", text: $startingValue)
//                }
                    .frame(maxWidth: 346)

                Spacer()
                    .frame(height: 80)
                
                Text("Response Type")
                    .font(.system(size: 16))
                    .fontWeight(.bold)
                
                Section{
                    Picker(selection: $startingUnit, label: EmptyView()){
                        ForEach(units, id: \.self){
                            Text("\($0)")
                        }
                    }
                    .accentColor(.white)
                    .background(
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.white)
                            .opacity(0.1)
                            .frame(minWidth: 185)
                            .frame(minHeight: 50)
                            .background(
                                Color.white
                                    .opacity(0.005)
                                    .blur(radius: 10)
                            )
                    )

                    .padding()
                }

                Section{
                    Picker(selection: $extraStartingUnit, label: EmptyView()){
                        ForEach(extraUnits, id: \.self){
                            Text("\($0)")
                        }
                    }
                    .accentColor(.white)
                    
                }
                .background(
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white)
                        .opacity(0.1)
                        .frame(minWidth: 185)
                        .frame(minHeight: 50)
                        .background(
                            Color.white
                                .opacity(0.005)
                                .blur(radius: 10)
                        )
                    
                )
                
                Section{
                    Picker(selection: $extraStartingUnit2, label: EmptyView()){
                        ForEach(extraUnits, id: \.self){
                            Text("\($0)")
                        }
                    }
                    .accentColor(.white)
                }
                .background(
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white)
                        .opacity(0.1)
                        .frame(minWidth: 185)
                        .frame(minHeight: 50)
                        .background(
                            Color.white
                                .opacity(0.005)
                                .blur(radius: 10)
                        )
                )
                .padding()
                
                Spacer()
                    .frame(height: 160)
                
                Section {
                    ZStack{
                        Button("SUBMIT") {
                            self.areYouGoingToSecondView = true
                           
                        }
                        .disabled(startingValue.isEmpty) //button doesnt navigate when no input
                        
                        Button("       "){
                            showingAlert = true
                        }
                        .alert(errorTitle, isPresented: $showingAlert) {
                            Button("Ok", role: .cancel) {}
                        } message: {
                            Text(errorMessage)
                        }
                        .disabled(!startingValue.isEmpty)
                    }
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
            .onAppear{
                empty = []
                teacherArray = []
            }
            .onDisappear{
                          myFunc(var1: startingUnit, var2: extraStartingUnit, var3: extraStartingUnit2)
                           if empty.isEmpty == true {
                               empty += responses
                           }
                           responseinball = empty.randomElement()!
                           myTeacherFunc(var1: startingUnit, var2: extraStartingUnit, var3: extraStartingUnit2)
                       }
        }
        .navigationBarBackButtonHidden(true) //ADDED
        .foregroundColor(Color.white)
            NavigationLink(destination: ShakeView(), isActive: $areYouGoingToSecondView) { EmptyView() }
        
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
        if (var1  == "All") {
            empty.append(contentsOf: allResponses)
        }
}

func myTeacherFunc (var1: String, var2: String, var3: String) {
        if ((var1  == "English Teacher" || var2  == "English Teacher") || var3 == "English Teacher") {
            teacherArray.append(contentsOf: englishTeachers)
        }
        if ((var1  == "History Teacher" || var2  == "History Teacher") || var3 == "History Teacher") {
            teacherArray.append(contentsOf: historyTeachers)
        }
        if ((var1  == "Math Teacher" || var2  == "Math Teacher") || var3 == "Math Teacher") {
            teacherArray.append(contentsOf: mathTeachers)
        }
        if ((var1  == "Science Teacher" || var2  == "Science Teacher") || var3 == "Science Teacher") {
            teacherArray.append(contentsOf: scienceTeachers)
        }
        if ((var1  == "Language Teacher" || var2  == "Language Teacher") || var3 == "Language Teacher") {
            teacherArray.append(contentsOf: languageTeachers)
        }
        if ((var1  == "Art Teacher" || var2  == "Art Teacher") || var3 == "Art Teacher") {
            teacherArray.append(contentsOf: artTeachers)
        }
        if ((var1  == "Comp Sci Teacher" || var2  == "Comp Sci Teacher") || var3 == "Comp Sci Teacher") {
            teacherArray.append(contentsOf: CSTeachers)
        }
        if ((var1  == "Dean" || var2  == "Dean") || var3 == "Dean") {
            teacherArray.append(contentsOf: deanTeachers)
        }
        if ((var1  == "Administrator" || var2  == "Administrator") || var3 == "Administrator") {
            teacherArray.append(contentsOf: adminTeachers)
        }
        if ((var1  == "Hackley Fan Faves" || var2  == "Hackley Fan Faves") || var3 == "Hackley Fan Faves") {
            teacherArray.append(contentsOf: hackFaves)
        }
        if (var1  == "All") {
            teacherArray.append(contentsOf: allTeachers)
        }
    }

