//
//  ContentView.swift
//  hfhfhfhfhf
//
//  Created by Sean on 2/2/20.
//  Copyright © 2020 Intellectual Mongoose. All rights reserved.
//

import SwiftUI























struct ContentView: View {
    @State private var die1: String = "die0"
    @State private var die2: String = "die0"
    @State private var die3: String = "die0"
    @State private var die4: String = "die0"
    @State private var die5: String = "die0"
    @State private var die6: String = "die0"
    
    @State private var Sdie1: String = "die0"
    @State private var Sdie2: String = "die0"
    @State private var Sdie3: String = "die0"
    @State private var Sdie4: String = "die0"
    @State private var Sdie5: String = "die0"
    @State private var Sdie6: String = "die0"
    
    /*________________________________________
    __________________________________________
    
    This is an example of the Rule file.
    
    
              @State private var ghgh: Int = 8
     
              Text("\(Rules.go(x: self.ghgh))")
    
    
    This is how you access it.
    
    __________________________________________
    ________________________________________*/
    
    
    @State private var stufffff: String = "Roll"
    @State private var P1Score: Int = 0
    @State private var P2Score: Int = 0
    @State private var WhichPlayer: Int = 0
    @State private var P1Border: String = "Border"
    @State private var P2Border: String = "dieGone"
    @State private var scoreAlert: Bool = false
    @State private var alertPlayer: String = "Player 1"
    @State private var overallScore: Int = 1000
    
    func checkDie(die: String) {
        if die == "die0" {} else
        if die != "dieGone" {
            if self.Sdie1 == "die0" {
                self.Sdie1 = die
            }
            else if self.Sdie2 == "die0" {
                self.Sdie2 = die
            }
            else if self.Sdie3 == "die0" {
                self.Sdie3 = die
            }
            else if self.Sdie4 == "die0" {
                self.Sdie4 = die
            }
            else if self.Sdie5 == "die0" {
                self.Sdie5 = die
            }
            else if self.Sdie6 == "die0" {
                self.Sdie6 = die
            }
            if self.Sdie1 != "die0" && self.Sdie2 != "die0" && self.Sdie3 != "die0" && self.Sdie4 != "die0" && self.Sdie5 != "die0" && self.Sdie6 != "die0" {
                self.stufffff = "Reset"
            }
        }

    }
    var body: some View {
        ZStack {
            Color(red: 0.254, green: 0.41, blue: 0.242)
                .edgesIgnoringSafeArea(.all)
            // Die 1
            
            
            
            HStack {
                Button(action: {
                    self.checkDie(die: self.die1)
                    self.die1 = "dieGone"
                }) {
                    Image("\(die1)")
                        .renderingMode(.original)
                }
                .padding()
                
                // Die 2
                Button(action: {
                    self.checkDie(die: self.die2)
                    self.die2 = "dieGone"
                }) {
                    Image("\(die2)")
                        .renderingMode(.original)
                }
                .padding()
                
                // Die 3
                Button(action: {
                    self.checkDie(die: self.die3)
                    self.die3 = "dieGone"
                }) {
                    Image("\(die3)")
                        .renderingMode(.original)
                }
                .padding()
                
                
                Button(action: {
                    self.checkDie(die: self.die4)
                    self.die4 = "dieGone"
                }) {
                    Image("\(die4)")
                        .renderingMode(.original)
                }
                .padding()
                
                Button(action: {
                    self.checkDie(die: self.die5)
                    self.die5 = "dieGone"
                }) {
                    Image("\(die5)")
                        .renderingMode(.original)
                }
                .padding()
                
                Button(action: {
                    self.checkDie(die: self.die6)
                    self.die6 = "dieGone"
                }) {
                    Image("\(die6)")
                        .renderingMode(.original)
                }
                .padding()
       
        }
            .padding(.bottom, 650)
            
            HStack {
                Image("\(Sdie1)")
                    .padding()
                Image("\(Sdie2)")
                    .padding()
                Image("\(Sdie3)")
                    .padding()
                Image("\(Sdie4)")
                    .padding()
                Image("\(Sdie5)")
                    .padding()
                Image("\(Sdie6)")
                    .padding()
            }
            .padding(.bottom, 200)
            
            
            // Roll Button thing
            Button(action: {
                if self.stufffff == "Reset" {
                    self.die1 = "die0"
                    self.die2 = "die0"
                    self.die3 = "die0"
                    self.die4 = "die0"
                    self.die5 = "die0"
                    self.die6 = "die0"
                    
                    self.Sdie1 = "die0"
                    self.Sdie2 = "die0"
                    self.Sdie3 = "die0"
                    self.Sdie4 = "die0"
                    self.Sdie5 = "die0"
                    self.Sdie6 = "die0"
                    
                    
                    if self.P1Border == "Border" {
                        self.P1Border = "dieGone"
                        self.P2Border = "Border"
                        self.alertPlayer = "Player 1"
                        self.overallScore = self.P1Score
                    } else {
                        self.P1Border = "Border"
                        self.P2Border = "dieGone"
                        self.alertPlayer = "Player 2"
                        self.overallScore = self.P2Score
                    }
                    self.scoreAlert = true
                    self.WhichPlayer = -1
                    
                    
                    
                    self.stufffff = "Roll"
                } else if true {
                    if self.die1 != "dieGone" {
                        self.die1 = "die\(Int.random(in: 1...6))"
                    }
                    if self.die2 != "dieGone" {
                        self.die2 = "die\(Int.random(in: 1...6))"
                    }
                    if self.die3 != "dieGone" {
                        self.die3 = "die\(Int.random(in: 1...6))"
                    }
                    if self.die4 != "dieGone" {
                        self.die4 = "die\(Int.random(in: 1...6))"
                    }
                    if self.die5 != "dieGone" {
                        self.die5 = "die\(Int.random(in: 1...6))"
                    }
                    if self.die6 != "dieGone" {
                        self.die6 = "die\(Int.random(in: 1...6))"
                    }
                }
                
                
                
                
                
                
                
                self.WhichPlayer += 1
                
                if self.WhichPlayer == 3 {
                    self.stufffff = "Reset"
                }
                
                
                
                
                
                
            }) {
                Image("\(stufffff)")
                    .renderingMode(.original)
            }
            .alert(isPresented: $scoreAlert) { () -> Alert in
                return Alert(title: Text("Adding Scores to \(self.alertPlayer)"), message: Text("\(self.alertPlayer) gets \(self.overallScore) points."), dismissButton: .default(Text("Great")))
            }
            Image("\(P1Border)")
                .padding(.top, 500)
                .padding(.trailing, 300)
            Image("\(P2Border)")
                .padding(.top, 500)
                .padding(.leading, 300)
            HStack {
                VStack {
                    Text("Player 1").font(.largeTitle)
                    Text("\(P1Score)").font(.title).fontWeight(.semibold)
                    
                    }
                .padding()
                .padding(.horizontal, 70)
                
                VStack {
                    Text("Player 2").font(.largeTitle)
                    Text("\(P2Score)").font(.title).fontWeight(.semibold)
                }
                .padding()
                .padding(.horizontal, 70)
        }
            .padding(.top, 500)
            .frame(width: 600.0, height: 600.0)
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
