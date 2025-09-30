//
//  ContentView.swift
//  Opdracht 2
//
//  Created by Wout Crevits on 30/09/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("departure", systemImage: "airplane.departure") {
                HomeView()
            }
            Tab("home", systemImage: "House") {
                HomeView()
            }
            Tab("arrival", systemImage: "airplane.arrival") {
                HomeView()
            }
        }
    }
}

#Preview {
    ContentView()
}
