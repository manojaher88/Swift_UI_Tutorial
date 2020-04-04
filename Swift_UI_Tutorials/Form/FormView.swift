//
//  FormView.swift
//  Swift_UI_Tutorials
//
//  Created by admin on 4/3/20.
//  Copyright © 2020 manoj. All rights reserved.
//

import SwiftUI


struct Treat: Identifiable {
  var id = UUID()
  var name: String
  var imageName: String
  var description: String
}

extension Treat {
  static let demoTreats = [
    Treat(name: "Fish Cakes", imageName: "FlyingFish", description: "Lots of fish, lots of cakes!"),
    Treat(name: "Mice Cream", imageName: "MiceCream", description: "Every kitty's favorite flavored Ice Cream"),
    Treat(name: "Croissant", imageName: "Croissant", description: "Seems like cats wouldn't like them, but they do!"),
    Treat(name: "Pancakes", imageName: "PanCakes", description: "They're cakes, but in the shape of a pan")
  ]
}

struct FormView: View {
    
    @State var selectedIndex: Int = 0
    @State var editedData: String = "ajkscb cs scalskac laks klcaklacsknlcsnkl sacnkl acsklnscan acsnl csakl klnascncsak csknlasckn lcsaihcasihoioasc hiasc hi cashiocsah csscaacs sac  asccascasascacscsacsa sac csacksa lcasol acslkkl nas"
    
    let treats = ["Mice Cakes", "Mice Cream", "Croissant", "Pancakes", "Mice Cream", "Mice Cream", "Mice Cream", "Mice Cream", "Mice Cream", "Mice Cream", "Mice Cream"]
    
    var body: some View {
        
        NavigationView {
            Form {
                Section {
                    Picker(selection: $selectedIndex, label: Text("Snack Type"), content: {
                        ForEach(0..<self.treats.count) {
                            Text(self.treats[$0])
                        }
                    })
                    
                    Text("Selected Snack = \(self.treats[selectedIndex])")
                }
                ForEach(0..<self.treats.count) {
                    Text(self.treats[$0])
                }
            }.navigationBarTitle("Select Snack")
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
