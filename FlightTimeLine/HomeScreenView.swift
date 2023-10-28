//
//  HomeScreenVie.swift
//  FlightTimeLine
//
//  Created by Lera Savchenko on 28.10.23.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        Image(systemName: "airplane")
            .resizable()
            .frame(width: 250, height: 250)
            .opacity(0.1)
            .rotationEffect(.degrees(-90))
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
