//
//  ContentView.swift
//  openkrownUI
//
//  Created by Pedro Vicente on 20/12/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = "Red"
    let colors = ["Red", "Green", "Blue", "Black", "Tartan"]

    var body: some View {
        VStack {
            Picker("Select a paint color", selection: $selection) {
                ForEach(colors, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(.menu)

            Text("Selected color: \(selection)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ContentView_Menu:
    PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

