//
//  NavigationDemo.swift
//  Swift_UI_Tutorials
//
//  Created by admin on 4/5/20.
//  Copyright © 2020 manoj. All rights reserved.
//

import SwiftUI

struct Navigation: View {
    var body: some View {
        
        NavigationView {
            Text("Tap here")
                .font(.largeTitle)
                .navigationBarTitle("This is a navigation bar", displayMode: .inline)
                .navigationBarItems(trailing:
                    Button(action: {
                        print("Test")
                    }, label: {
                        Text("Help")
                    }))
        }
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        NavigationDemo()
    }
}
