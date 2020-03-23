//
//  ContentView.swift
//  Swift_UI_Tutorials
//
//  Created by admin on 3/23/20.
//  Copyright © 2020 manoj. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var pets = ["Catie", "Antonio", "Jessy", "Laurie", "Ray"]
    
    var body: some View {
        ScrollView {
            HStack {
                ForEach(pets, id: \.self) { pet in
                    Image(pet)
                    .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
