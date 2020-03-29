//
//  Button_SwiftUi.swift
//  Swift_UI_Tutorials
//
//  Created by admin on 3/23/20.
//  Copyright © 2020 manoj. All rights reserved.
//

import SwiftUI


struct ButtonDemo: View {
    let textName = "Tap me"
    var body: some View {
        
        
        
        VStack {
            Button(action: {
                print("Tappad")
            }) {
                VStack {
                    Image("Mascot")
                        .resizable()
                        .renderingMode(.original)
                        .scaledToFit()
                        .contentShape(Circle())
                        .shadow(radius: 10)
                        .padding()
                    Text("Tap me")
                        .foregroundColor(.primary)
                        .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
                        .background(Color.red)
                        .cornerRadius(8.0)
                        .shadow(color: .gray, radius: 2, x: 0, y: 2)
                }
            }
            
            
        }
        
        
        
    }
}


struct ButtonDemo_Previews: PreviewProvider {
    static var previews: some View {
        
        ButtonDemo()
        
    }
}
