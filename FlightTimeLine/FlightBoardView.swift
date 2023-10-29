//
//  FlightBoardView.swift
//  FlightTimeLine
//
//  Created by Lera Savchenko on 28.10.23.
//

import SwiftUI

struct FlightBoardView: View {
    let boardName: String
    let flightInfo: [FlightInformation]
    
    var body: some View {
        List(flightInfo) { flight in
            NavigationLink(destination: FlightDetailsView(flight: flight)) {
                FlightRowView(flight: flight)
            }
        }
        .navigationTitle(boardName)
    }
}

struct FlightBoardView_Previews: PreviewProvider {
    static var previews: some View {
        FlightBoardView(
            boardName: "Arrivals",
            flightInfo: FlightInformation.generateFlights()
        )
    }
}
