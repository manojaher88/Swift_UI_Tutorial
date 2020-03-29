//
//  StackVews.swift
//  Swift_UI_Tutorials
//
//  Created by admin on 3/29/20.
//  Copyright © 2020 manoj. All rights reserved.
//

import SwiftUI

struct StackVews: View {
    var body: some View {
        Test()
            .frame(width: 200, height: 200, alignment: .center)
        //        ScrollView(.vertical, showsIndicators: false) {
        //            ZStack(alignment: .bottomTrailing) {
        //                Image("Jessy").resizable().padding()
        //                Image("Catie").resizable().padding()
        //                Image("Ray").resizable().padding()
        //            }
        //        }
        
        
        
        
    }
}

struct StackVews_Previews: PreviewProvider {
    static var previews: some View {
        StackVews()
    }
}


struct Test: View {
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Circle()
                .fill(Color.blue)
                .padding()
                .frame(width: 200, height: 200, alignment: .center)
                .shadow(radius: 8)
            
            VStack(alignment: .center, spacing: 10, content: {
                Image("Ray")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.red)
                    .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
                    .background(Color.yellow)
                    .cornerRadius(8)
                    .lineLimit(nil)
                
                Text("Where how are you?")
                    .frame(width: nil, height: 30, alignment: .center)
                    .foregroundColor(.green)
                    .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
                    .background(Color.yellow)
                    .cornerRadius(8)
            })
        }
    }
}
