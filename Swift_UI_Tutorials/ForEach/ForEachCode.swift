//
//  ForEach.swift
//  Swift_UI_Tutorials
//
//  Created by admin on 3/29/20.
//  Copyright © 2020 manoj. All rights reserved.
//

import SwiftUI

struct ForEachCode: View {
    
    let tips = ["Dream of mice", "Testing 2", "Testing 3"]
    
    var body: some View {
        
        VStack {
            ForEach(Range(0...3)) {i in
                VStack {
                    Text("Hi there \(i)")
                }
            }
        }
        
        
    }
}

struct ForEachCode_Previews: PreviewProvider {
    static var previews: some View {
        ForEachCode()
    }
}
