//
//  ExamView.swift
//  Swift_UI_Tutorials
//
//  Created by admin on 3/29/20.
//  Copyright © 2020 manoj. All rights reserved.
//

import SwiftUI

struct ExamView: View {
    var body: some View {
        
        ZStack {
            
            Spacer()
            
            VStack {
                Image("cat")
                    .resizable()
                    .blendMode(.hardLight)
                    .scaledToFit()
                
                Text("😻 Meow 😻")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .shadow(radius: 10)
                    .rotationEffect(Angle(degrees: 350))
            }
        }
        .background(Color.green)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ExamView_Previews: PreviewProvider {
    static var previews: some View {
        ExamView()
    }
}
