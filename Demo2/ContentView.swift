//
//  ContentView.swift
//  Demo2
//
//  Created by David M Reed on 1/20/21.
//

import SwiftUI


struct ButtonCount: View {
    let buttonName: String
    @Binding var pressCount: Int

    var body: some View {
        VStack {
            Text("\(buttonName) \(pressCount) times")
            Button {
                pressCount += 1
            } label: {
                Text(buttonName)
            }
            .padding([.top, .bottom], 8)
        }
    }
}

struct ContentView: View {
    // State should always be private
    @State private var pressCounts = Array(repeating: 0, count: 5)

    var totalPresses: Int { pressCounts.reduce(0, +) }

    var body: some View {
        VStack {
            ForEach(pressCounts.indices, id: \.self) { idx in
                ButtonCount(buttonName: "Button\(idx+1)", pressCount: $pressCounts[idx])
            }
            Text("Total Counts \(totalPresses)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
