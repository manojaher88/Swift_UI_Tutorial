//
//  TextContentView.swift
//  SwiftUITutorial
//
//  Created by admin on 3/23/20.
//  Copyright © 2020 manoj. All rights reserved.
//

import SwiftUI


struct TextView: View {
    
    var body: some View {
        Text("Pets kbsca asc cas asc sac s c asc sac sac sca shjcsa sac sca sac csa as c csa sc sca acs sac  as sca sca c  acs sacasc asc acs asc  cas acs asc csa")
            .foregroundColor(.primary)
            .lineLimit(nil)
            .multilineTextAlignment(.center)
            .lineLimit(0)
            .padding()
            .background(Color.yellow)
            .border(Color.black, width: 1)
        
    }
}


struct TextView_Provider: PreviewProvider {
    
    static var previews: some View {
        Group{
            TextView()
                .environment(\.colorScheme, .light)
            TextView()
            .environment(\.colorScheme, .dark)
        }
    }
}
