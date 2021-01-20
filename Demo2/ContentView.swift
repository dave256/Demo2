//
//  ContentView.swift
//  Demo2
//
//  Created by David M Reed on 1/20/21.
//

import SwiftUI

struct PressCount {
    var count1 = 0
    var count2 = 0
}

struct ContentView: View {
    // State should always be private
    @State private var pressCounts = PressCount()

    var body: some View {
        VStack {
            Text("Button 1 pressed \(pressCounts.count1) times")
            Button {
                pressCounts.count1 += 1
            } label: {
                Text("Button 1")
            }
            .padding([.top, .bottom], 8)

            Text("Button 2 pressed \(pressCounts.count2) times")
            Button {
                pressCounts.count2 += 1
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
