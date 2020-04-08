//
//  MyDemo.swift
//  Swift_UI_Tutorials
//
//  Created by admin on 4/5/20.
//  Copyright © 2020 manoj. All rights reserved.
//

import SwiftUI

struct MyDemo: View {
    @State var selectedIndex: Int = 0
    @State var textAdded: String = ""
    @State var datPickerId = UUID()
    @State private var title = ""
    @State var editedData: String = "ajkscb cs scalskac laks klcaklacsknlcsnkl sacnkl acsklnscan acsnl csakl klnascncsak csknlasckn lcsaihcasihoioasc hiasc hi cashiocsah csscaacs sac  asccascasascacscsacsa sac csacksa lcasol acslkkl nas"
    
    
    let treats = ["Mice Cakes", "Mice Cream", "Croissant", "Pancakes", "Mice Cream", "Mice Cream", "Mice Cream", "Mice Cream", "Mice Cream", "Mice Cream", "Mice Cream"]
    
    var body: some View {
        
        NavigationView {
            Form {
                Section {
                    TitleTextField()
                    DateView().id(self.datPickerId)
                    
                }
                ForEach(0..<self.treats.count) {
                    Text(self.treats[$0])
                }
            }.navigationBarTitle("Select Snack")
        }
    }
    
    private func TitleTextField() -> some View {
        
        let boundText = Binding<String>(
            get: { self.title },
            set: { self.title = $0; self.datPickerId = UUID() }
        )
        
        
        return TextField("Title", text: boundText, onEditingChanged: { editing in
            if editing {
                self.datPickerId = UUID()
            }
        })
    }
}

struct MyDemo_Previews: PreviewProvider {
    static var previews: some View {
        MyDemo()
    }
}


struct DateView: View {
    @State var date = Date()
    var body: some View {
        DatePicker(selection: $date,
                   in: Date()...,
                   displayedComponents: .date,
                   label: {
                    Text("date")
        })
    }
}
