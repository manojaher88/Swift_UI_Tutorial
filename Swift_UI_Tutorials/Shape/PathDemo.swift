//
//  PathDemo.swift
//  Swift_UI_Tutorials
//
//  Created by admin on 4/7/20.
//  Copyright © 2020 manoj. All rights reserved.
//

import SwiftUI

struct PathDemo: View {
    @State var isShowing = false
    
    var body: some View {
        
        GeometryReader { proxy in
            ZStack {
                if self.isShowing {
                    ScaledShape(shape: Circle(), scale: CGSize(width: proxy.frame(in: .local).size.width, height: proxy.frame(in: .local).size.height))
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [.green, .red, .yellow]), startPoint: UnitPoint(x: 0.5, y: 0.0), endPoint: UnitPoint(x: 1.0, y: 0.5))
                    )
                        .animation(.linear)
                }
                
                Path { path in
                    print(proxy.frame(in: .global))
                    print(proxy.frame(in: .local))
                    path.addRoundedRect(in: proxy.frame(in: .local), cornerSize: CGSize(width: 10, height: 10))
                }
                .fill(Color.black)
                
                Path { path in
                    print(proxy.frame(in: .global))
                    print(proxy.frame(in: .local))
                    path.addRoundedRect(in: proxy.frame(in: .local), cornerSize: CGSize(width: 50, height: 50))
                }
                .fill(Color.yellow)
                
                VStack {
                    
                    RayLogoShape()
                        .fill(Color.white)
                        .opacity(self.isShowing ? 1 : 0)
                        .aspectRatio(1.0, contentMode: .fit)
                        .frame(width: 100, height: 100, alignment: .center)
                    
                    Button(action: {
                        withAnimation {
                            self.isShowing.toggle()
                        }
                    }) {
                        Text("hello there")
                    }
                }
            }
        }
        .frame(width: 200, height: 200, alignment: .center)
    }
}

struct RayLogoShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            
            path.move(to: CGPoint(x: 0, y: 111))
            path.addLine(to: CGPoint(x: 111, y: 111))
            path.addLine(to: CGPoint(x: 111, y: 16.79))
            path.addLine(to: CGPoint(x: 72.64, y: 83.44))
            path.addLine(to: CGPoint(x: 57.36, y: 56.31))
            path.addLine(to: CGPoint(x: 39.98, y: 83.97))
            
            path.addCurve(to: CGPoint(x: 24.83, y: 47.88), control1: CGPoint(x: 39.98, y: 83.97), control2: CGPoint(x: 28.39, y: 56.31))
            path.addCurve(to: CGPoint(x: 49.20, y: 17.85), control1: CGPoint(x: 29.18, y: 44.72), control2: CGPoint(x: 49.20, y: 33.13))
            path.addCurve(to: CGPoint(x: 0, y: 0), control1: CGPoint(x: 49.20, y: 2.57), control2: CGPoint(x: 15.01, y: 0))
            path.addLine(to: CGPoint(x: 0, y: 111))
        }
    }
}


struct PathDemo_Previews: PreviewProvider {
    static var previews: some View {
        PathDemo()
    }
}

// PATH Operations
// 1. Move to point
// 2. Add line
// 3. Add ARC
// 4. Add Ellipse
// 5. Add Quadractic curve
