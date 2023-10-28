//
//  FlightBoardView.swift
//  FlightTimeLine
//
//  Created by Lera Savchenko on 28.10.23.
//

import SwiftUI

struct FlightBoardView: View {
    let boardName: String
    
    var body: some View {
        Text(boardName)
            .font(.title)
    }
}

struct FlightBoardView_Previews: PreviewProvider {
    static var previews: some View {
        FlightBoardView(boardName: "Arrivals")
    }
}
