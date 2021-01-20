//
//  ContentView.swift
//  Demo2
//
//  Created by David M Reed on 1/20/21.
//

import SwiftUI

struct ContentView: View {
    // State should always be private
    @State private var button1Count = 0
    @State private var button2Count = 0

    var body: some View {
        VStack {
            Text("Button 1 pressed \(button1Count) times")
            Button {
                button1Count += 1
            } label: {
                Text("Button 1")
            }
            .padding([.top, .bottom], 8)

            Text("Button 2 pressed \(button2Count) times")
            Button {
                button2Count += 1
            } label: {
                Text("Button 2")
            }
            .padding([.top, .bottom], 8)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
