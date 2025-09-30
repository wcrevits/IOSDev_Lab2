//
//  DepartureView.swift
//  Opdracht 2
//
//  Created by Wout Crevits on 30/09/2025.
//

import SwiftUI

enum FlightClass {
    case economy, economyPlus, bussiness
}

struct Info {
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
    let className : FlightClass
    let flightDate : String
}

let information = Info (
    shortDepAirport: "BRU", longDepAriport: "Brussels", depTime: "8:15", shortArrAirport: "BCN", longArrAirport: "Barcelona", arrTime: "11:15", flightNumber: "SN23A", gateNumber: "B23", seatNumber: "27A", passengerName: "Dir Hostens", className: FlightClass.bussiness, flightDate: "27/08/2024"
)

struct DepartureView: View {
    var body: some View {
        Grid {
            GridRow {
                Grid {
                    GridRow {
                        Text (information.shortDepAirport)
                    }
                    GridRow {
                        Text (information.longDepAriport)
                    }
                    GridRow {
                        Text (information.depTime)
                    }
                }
                Grid {
                    GridRow {
                        Text (" ")
                    }
                    GridRow {
                        Image(systemName: "airplane")
                    }
                    GridRow {
                        Text (" ")
                    }
                }
                Grid {
                    GridRow {
                        Text (information.shortArrAirport)
                    }
                    GridRow {
                        Text (information.longArrAirport)
                    }
                    GridRow {
                        Text (information.arrTime)
                    }
                }
            }
            .padding()
            GridRow {
                Grid {
                    GridRow {
                        Text ("Text")
                    }
                    GridRow {
                        Text ("Text")
                    }
                }
                Grid {
                    GridRow {
                        Text ("Text")
                    }
                    GridRow {
                        Text ("Text")
                    }
                }
                Grid {
                    GridRow {
                        Text ("Text")
                    }
                    GridRow {
                        Text ("Text")
                    }
                }
            }
            .padding()
            GridRow {
                Grid {
                    Text ("Text")
                }
                Grid {
                    
                    Image(systemName: "person.crop.artframe")
                }
            }
        }
    }
}

#Preview {
    DepartureView()
}
