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
            Tab("Departure", systemImage: "airplane.departure") {
                DepartureView()
            }
            Tab("Info", systemImage: "info.bubble.fill") {
                HomeView()
            }
            Tab("Arrival", systemImage: "airplane.arrival") {
                DepartureView()
            }
        }
    }
}

#Preview {
    ContentView()
}
