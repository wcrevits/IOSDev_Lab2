//
//  DepartureView.swift
//  Opdracht 2
//
//  Created by Wout Crevits on 30/09/2025.
//

import SwiftUI

struct DepartureView: View {
    let information : FlightInfo
    var body: some View {
        HStack {
            VStack {
                Text (information.shortDepAirport)
                Text (information.longDepAriport)
                Text (information.depTime)
            }
            VStack {
                Image(systemName: "airplane")
            }
            VStack {
                Text (information.shortArrAirport)
                Text (information.longArrAirport)
                Text (information.arrTime)
            }
        }.padding()
        Grid {
            GridRow {
                Text ("flight")
                Text ("gate")
                Text ("seat")
            }.padding(.top, 15)
            Divider()
            GridRow {
                Text (information.flightNumber)
                Text (information.gateNumber)
                Text (information.seatNumber)
            }.fontWeight(.bold).padding(.bottom, 15)
        }.background(.tint)
            .cornerRadius(12)
            .foregroundColor(.white)
            .listRowSpacing(2)
            .padding()
        HStack {
            VStack {
                Text("Passenger")
                Text(information.passengerName)
                Text("Class")
                Text(information.className)
                Text("Flight date")
                Text(information.flightDate)
            }
            
            Image(systemName: "person.crop.artframe").font(.system(size: 200)).foregroundColor(.gray)
                
        }
    }
}
