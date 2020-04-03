//
//  ContentView.swift
//  Swift_UI_Tutorials
//
//  Created by admin on 3/23/20.
//  Copyright © 2020 manoj. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let pets = ["Catie", "Antonio", "Jessy", "Laurie", "Ray"]
    
    var body: some View {
        
        //        VStack {
        //            ForEach(self.pets, id: \.self) { tip in
        //                Image(tip)
        //                    .resizable()
        //                .scaleToFit()
        //            }
        //        }
        
        VStack {
            ForEach(Range(0...3)) {_ in
                Image("Catie")
                    .resizable()
                    .scaledToFit()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
