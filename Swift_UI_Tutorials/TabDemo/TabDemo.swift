//
//  TableDemo.swift
//  Swift_UI_Tutorials
//
//  Created by admin on 4/5/20.
//  Copyright © 2020 manoj. All rights reserved.
//

import SwiftUI

struct TabDemo: View {
    var body: some View {
        
        TabView {
            Text("The First Tab")
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("First")
                }
            Text("Another Tab")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Second")
                }
            Text("The Last Tab")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Third")
                }
        }
        .font(.headline)

    }
}

struct TabDemo_Previews: PreviewProvider {
    static var previews: some View {
        TabDemo()
    }
}
