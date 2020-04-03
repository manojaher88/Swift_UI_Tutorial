//
//  List.swift
//  Swift_UI_Tutorials
//
//  Created by admin on 4/3/20.
//  Copyright © 2020 manoj. All rights reserved.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        
        List {
            Section(header: Text("Section Header"), footer: Text("Section Footer"), content: {
                
                CommonCell()
                Text("Cell 2")
            })
        }.listStyle(GroupedListStyle())
    }
}


struct CommonCell: View {
    
    @State var isOn: Bool = true
    var isOnString: String {
        isOn ? "IS ON" : "IS OFF"
    }
    
    var body: some View {
        HStack {
            Text("Cell 1")
                .alignmentGuide(.leading) { (dimension) -> CGFloat in
                    dimension.height
            }
            
            Spacer()
            
            Toggle(isOn: $isOn) {
                Text(isOnString)
            }.scaledToFit()
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
