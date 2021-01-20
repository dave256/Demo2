//
//  ContentView.swift
//  Demo2
//
//  Created by David M Reed on 1/20/21.
//

import SwiftUI

struct ContentView: View {
    // State should always be private
    @State private var numPressed = 0

    var body: some View {
        VStack {
            Text("Button pressed \(numPressed) times")
            Button {
                numPressed += 1
            } label: {
                Text("Press Me")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
