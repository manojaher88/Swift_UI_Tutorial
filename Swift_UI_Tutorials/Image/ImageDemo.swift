//
//  LiveUpdate.swift
//  SwiftUITutorial
//
//  Created by admin on 3/23/20.
//  Copyright © 2020 manoj. All rights reserved.
//

import SwiftUI


// Image
//

struct ImageDemo: View {
    
    var body: some View {
        VStack {
            
            Image("Ray")
//                .resizable()
                .resizable(capInsets: EdgeInsets(), resizingMode: Image.ResizingMode.tile)
                .scaledToFill()
                .saturation(0.7)
                .contrast(100)
                .hueRotation(Angle.degrees(300))
                .edgesIgnoringSafeArea([.top, .bottom])
            
            
            //.clipShape(Circle())
//                .mask(Image("Mascot").resizable())
//                .padding()
            
            
        }
        
    }
}


struct ImageDemo_Preview: PreviewProvider {
    
    static var previews: some View {
        Group {
            ImageDemo()
            ImageDemo()
                .previewDevice("iPhone SE")
        }
    }
}
