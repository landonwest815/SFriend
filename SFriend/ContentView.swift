//
//  ContentView.swift
//  SFriend
//
//  Created by Landon West on 1/23/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {

    var body: some View {
        ZStack {
            //HouseInterior()
            HouseExterior()
            MenuOverlay()
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
