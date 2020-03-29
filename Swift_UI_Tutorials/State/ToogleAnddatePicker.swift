//
//  ToogleAnddatePicker.swift
//  Swift_UI_Tutorials
//
//  Created by admin on 3/29/20.
//  Copyright © 2020 manoj. All rights reserved.
//

import SwiftUI

struct ToogleAnddatePicker: View {
    
    @State var isOn: Bool = true
    var isTrueString: String {
        return isOn ? "Hi this true???" : "Hi this false???"
    }
    
    @State var pickedDate = Date()
    
    var body: some View {
        
        ZStack {
            VStack {
                
                Toggle(isOn: $isOn, label: {
                    Text("Hi this true???")
                })
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                
                Text("\(isTrueString)")
                
                //                DatePicker(selection: $pickedDate, displayedComponents: [.hourAndMinute, .date], label: {
                //                    Text("Select Date")
                //                })
                
                DatePicker(selection: $pickedDate, in: ClosedRange(uncheckedBounds: (lower: Date(), upper: Date(timeIntervalSinceNow: 900000))), displayedComponents: [.date, .hourAndMinute], label: {
                    Text("Select Date")
                })
            }
        }
    }
}

struct ToogleAnddatePicker_Previews: PreviewProvider {
    static var previews: some View {
        ToogleAnddatePicker()
    }
}
