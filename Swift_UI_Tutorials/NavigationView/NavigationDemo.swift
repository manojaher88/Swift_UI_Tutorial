//
//  NavigationDemo.swift
//  Swift_UI_Tutorials
//
//  Created by admin on 4/4/20.
//  Copyright © 2020 manoj. All rights reserved.
//

import SwiftUI

struct NavigationDemo: View {
    
    @State private var isPresented = false
    
    var body: some View {
        
        NavigationView {
            ZStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack {
                        
                        ForEach(Book.allBooks()) { book in
                            GeometryReader { proxy in
                                
                                NavigationLink(destination: BookDetailView(book: book)) {
                                    BookView(book: book, proxy: proxy)
                                }
                                    
                                .background(Image(book.imageName)
                                .renderingMode(.original)
                                .resizable()
                                .scaledToFill()
                                .overlay(Color.green)
                                .blendMode(.multiply)
                                .blur(radius: 1))
                                    
                                .cornerRadius(10)
                                .padding(.vertical)
                                .shadow(radius: 3)
                                .rotation3DEffect(Angle(degrees: Double(proxy.frame(in: .global).midX) / 40), axis: (x: -4, y: -3, z: -3))
                                
                                
                            }
                            .frame(width: 200, height: 300)
                        }
                    }
                }
                Spacer()
                    .layoutPriority(1)
            }
            .background(Color.black)
            .edgesIgnoringSafeArea(.bottom)
            .navigationBarTitle("RW Swift Books")
                
            .navigationBarItems(trailing:
                Button(action: {
                    self.isPresented.toggle()
                }, label: {
                    Text("Help")
                }))
                
                .sheet(isPresented: self.$isPresented, content: {
                    HelpView()
                })
        }
    }
}

struct NavigationDemo_Previews: PreviewProvider {
    static var previews: some View {
        NavigationDemo()
    }
}



struct KittySnackPicker: View {
  
  @State var selectedSnackIndex = 0
  
  let treats = Treat.demoTreats
  
  var body: some View {
    Picker(selection: $selectedSnackIndex, label: Text("Snack Type")) {
      ForEach(0 ..< treats.count) {
        Text(self.treats[$0].name).tag($0)
      }
    }
  }
}

struct KittySnackPicker_Previews: PreviewProvider {
  static var previews: some View {
    KittySnackPicker()
  }
}



struct BookView: View {
  
  var book: Book
  var proxy: GeometryProxy
  
  var body: some View {
    
    VStack {
      Text(book.title)
        .fontWeight(.bold)
        .font(Font.system(.headline, design: .rounded))
        .minimumScaleFactor(0.75)
        .padding(.top)
        .multilineTextAlignment(.center)
        .lineLimit(nil)
        .foregroundColor(.white)
      
      Image(book.imageName)
        .renderingMode(.original)
        .resizable()
        .scaledToFit()
        .padding()
        .shadow(color: .gray, radius: 20)
    }
    .padding()
      .frame(width: max(proxy.size.width - proxy.frame(in: .global).midX, proxy.size.width),
      height: proxy.size.height - 50)
  }
}




struct BookDetailView: View {
  
  var book: Book
  
  var body: some View {
    VStack {
      
      Text(book.title)
      Image(book.imageName)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 200, height: 200)
    }
  }
}

struct BookDetailView_Previews: PreviewProvider {
  static var previews: some View {
    BookDetailView(book: Book.allBooks().randomElement()!)
  }
}



struct HelpView: View {
  var body: some View {
    
    ZStack {
      VStack {
        Image("Swift Shopping")
          .resizable()
          .scaledToFit()
        
        Text("For more help go to raywenderlich.com")
          .font(Font.system(.largeTitle, design: .rounded))
          .foregroundColor(.white)
          .fontWeight(.bold)
          .lineLimit(nil)
      }
      .padding()
      
      Spacer()
      .layoutPriority(1)
    }
    .background(Image("Team")
      .renderingMode(.original)
      .resizable()
      .scaledToFill()
      .opacity(1)
      .blendMode(.multiply)
      .blur(radius: 1))
      
      .edgesIgnoringSafeArea(.all)
  }
  
}
