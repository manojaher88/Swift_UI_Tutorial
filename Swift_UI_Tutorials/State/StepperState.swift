//
//  StepperState.swift
//  Swift_UI_Tutorials
//
//  Created by admin on 3/29/20.
//  Copyright © 2020 manoj. All rights reserved.
//

import SwiftUI

struct StepperState: View {
    
    @State private var value: Double = 0
    
    var body: some View {
        
        //        ZStack {
        //            Stepper(onIncrement: {
        //                self.text += 1
        //            }, onDecrement: {
        //                self.text -= 1
        //            }, label: {
        //                Text("\(text)")
        //            })
        //                .scaledToFit()
        //
        //            Spacer()
        //        }
        ZStack {
            VStack {
                Stepper("Order Value", value: $value)
                Text("The value is \(value)")
                Slider(value: $value, in: 0...20)
                    .frame(width: 200, height: 50, alignment: .center)
            }
            Spacer()
        }
    }
}

struct StepperState_Previews: PreviewProvider {
    static var previews: some View {
        StepperState()
    }
}
