//
//  DepartureView.swift
//  Opdracht 2
//
//  Created by Wout Crevits on 30/09/2025.
//

import SwiftUI

struct InfoDepartureView {
    let shortDepAirport : String
    let longDepAriport : String
    let depTime : String
    let shortArrAirport : String
    let longArrAirport : String
    let arrTime : String
    let flightNumber : String
    let gateNumber : String
    let seatNumber : String
    let passengerName : String
    let className : String
    let flightDate : String
}

let informationDepartureView = InfoDepartureView (
    shortDepAirport: "BRU", longDepAriport: "Brussels", depTime: "8:15", shortArrAirport: "BCN", longArrAirport: "Barcelona", arrTime: "11:15", flightNumber: "SN23A", gateNumber: "B23", seatNumber: "27A", passengerName: "Wout Crevits", className: "Business", flightDate: "27/08/2024"
)

struct DepartureView: View {
    var body: some View {
        HStack {
            VStack {
                Text (informationDepartureView.shortDepAirport)
                Text (informationDepartureView.longDepAriport)
                Text (informationDepartureView.depTime)
            }
            VStack {
                Image(systemName: "airplane")
            }
            VStack {
                Text (informationDepartureView.shortArrAirport)
                Text (informationDepartureView.longArrAirport)
                Text (informationDepartureView.arrTime)
            }
        }.padding()
        Grid {
            GridRow {
                Text ("flight")
                Text ("gate")
                Text ("seat")
            }
            GridRow {
                Text (informationDepartureView.flightNumber)
                Text (informationDepartureView.gateNumber)
                Text (informationDepartureView.seatNumber)
            }
        }.padding().background(.tint)
        HStack {
            VStack {
                Text("Passenger")
                Text(informationDepartureView.passengerName)
                Text("Class")
                Text(informationDepartureView.className)
                Text("Flight date")
                Text(informationDepartureView.flightDate)
            }
            
            Image(systemName: "person.crop.artframe")
        }
    }
}

#Preview {
    DepartureView()
}
