//
//  ScrollViewAndStackView.swift
//  Swift_UI_Tutorials
//
//  Created by admin on 4/3/20.
//  Copyright © 2020 manoj. All rights reserved.
//

import SwiftUI

struct ScrollViewAndStackView: View {
    
    var books: [Book] = Book.allBooks()
    
    var body: some View {
        GeometryReader { proxy in
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack {
                    ForEach(0..<self.books.count) { i in
                        VStack {
                            Image(self.books[i].imageName)
                                .resizable()
                                .scaledToFit()
                            Text(self.books[i].title)
                                .padding([.leading, .trailing])
                            
                            }
                        .frame(width: proxy.size.width - 20, height: 200)
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 3)
                        .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                    }
                }
            })
        }
    }
}

struct ScrollViewAndStackView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewAndStackView()
    }
}


struct Book: Identifiable {
    var id: UUID = UUID()
    var imageName: String
    var title: String
}

extension Book {
    
    static func allBooks()->[Book] {
        
        let rxSwift = Book(imageName: "rxswift", title: "Rx Swift")
        let mascot = Book(imageName: "mascot", title: "Mascot this is a big title and is working")
        let metal = Book(imageName: "metal", title: "Metal")
        let swiftUI = Book(imageName: "swiftui", title: "Swift UI")
        let vapor = Book(imageName: "vapor", title: "Vapor")
        
        return [rxSwift, mascot, metal, swiftUI, vapor]
    }
}
