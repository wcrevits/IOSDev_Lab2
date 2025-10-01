//
//  ContentView.swift
//  Opdracht 2
//
//  Created by Wout Crevits on 30/09/2025.
//

import SwiftUI

let infoDepFlight = FlightInfo (
    shortDepAirport: "BRU", longDepAriport: "Brussels", depTime: "8:15", shortArrAirport: "BCN", longArrAirport: "Barcelona", arrTime: "11:15", flightNumber: "SN23A", gateNumber: "B23", seatNumber: "27A", passengerName: "Wout Crevits", className: "Business", flightDate: "27/08/2024"
)

let infoArrFlight = FlightInfo (
    shortDepAirport: "BCN", longDepAriport: "Barcelona", depTime: "13:05", shortArrAirport: "BRU", longArrAirport: "Brussels", arrTime: "15:15", flightNumber: "SN205", gateNumber: "XD-30", seatNumber: "17C", passengerName: "Wout Crevits", className: "Business", flightDate: "01/09/2024"
)


struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Departure", systemImage: "airplane.departure") {
                DepartureView(information: infoDepFlight)
            }
            Tab("Info", systemImage: "info.bubble.fill") {
                HomeView()
            }
            Tab("Arrival", systemImage: "airplane.arrival") {
                DepartureView(information: infoArrFlight)
            }
        }
    }
}

#Preview {
    ContentView()
}
