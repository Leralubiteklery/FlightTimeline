//
//  FlightRowView.swift
//  FlightTimeLine
//
//  Created by Lera Savchenko on 29.10.23.
//

import SwiftUI

struct FlightRowView: View {
    let flight: FlightInformation
    
    var body: some View {
        HStack {
            Text("\(flight.airline) \(flight.number)")
                .frame(width: 120, alignment: .leading)
            Text(flight.otherAirport)
                .frame(alignment: .leading)
            Spacer()
            Text(flight.flightStatus)
                .frame(alignment: .trailing)
        }
        .foregroundColor(.black)
    }
}

struct FlightRowView_Previews: PreviewProvider {
    static var previews: some View {
        FlightRowView(flight: FlightInformation.generateFlight())
    }
}
