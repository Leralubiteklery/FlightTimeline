//
//  FlightRowView.swift
//  FlightTimeLine
//
//  Created by Lera Savchenko on 29.10.23.
//

import SwiftUI

struct FlightRowView: View {
    @State private var isPresented = false
    let flight: FlightInformation
    
    var body: some View {
        Button(action: { isPresented.toggle() }) {
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
            .sheet(isPresented: $isPresented) {
                FlightDetailsView(isPresented: $isPresented, flight: flight)
            }
        }
    }
}


struct FlightRowView_Previews: PreviewProvider {
    static var previews: some View {
        FlightRowView(flight: FlightInformation.generateFlight())
    }
}
