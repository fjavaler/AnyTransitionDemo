//
//  ContentView.swift
//  Shared
//
//  Created by Frederick Javalera on 9/28/21.
//

import SwiftUI

struct ContentView: View {
  
  @State private var showRectangle: Bool = false
  
  var body: some View {
    VStack {
      Spacer()
      
      if showRectangle {
        RoundedRectangle(cornerRadius: 25)
          .frame(width: 250, height: 250)
      }
      
      Spacer()
      
      Text("Click Me!")
        .padding(.horizontal, 40)
        .onTapGesture {
          withAnimation(.easeInOut) {
            showRectangle.toggle()
          }
        }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
