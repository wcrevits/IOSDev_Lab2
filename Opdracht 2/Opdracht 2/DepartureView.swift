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
                Text (information.shortDepAirport).foregroundStyle(.tint)
                    .font(.largeTitle).fontWeight(.semibold)
                Text (information.longDepAriport).foregroundStyle(.gray)
                    .font(.title)
                Text (information.depTime).font(.system(size:20))
            }
            VStack {
                Image(systemName: "airplane").foregroundStyle(.gray).font(.system(size:50))
            }
            VStack {
                Text (information.shortArrAirport).foregroundStyle(.tint)
                    .font(.largeTitle).fontWeight(.semibold)
                Text (information.longArrAirport).foregroundStyle(.gray)
                    .font(.title)
                Text (information.arrTime).font(.system(size:20))
            }
        }.padding()
        Grid {
            GridRow {
                Text ("flight")
                Text ("gate")
                Text ("seat")
            }.padding(.top, 20)
            Divider()
            GridRow {
                Text (information.flightNumber)
                Text (information.gateNumber)
                Text (information.seatNumber)
            }.fontWeight(.bold).padding(.bottom, 20)
        }.background(.tint)
            .cornerRadius(12)
            .foregroundColor(.white)
            .listRowSpacing(2)
            .padding()
        HStack {
            VStack {
                Text("Passenger").foregroundStyle(.gray)
                Text(information.passengerName).padding(.bottom, 20)
                Text("Class").foregroundStyle(.gray)
                Text(information.className).padding(.bottom, 20)
                Text("Flight date").foregroundStyle(.gray)
                Text(information.flightDate).padding(.bottom, 20)
            }
            
            Image(systemName: "person.crop.artframe").font(.system(size: 200)).foregroundColor(.gray)
        }
    }
}
