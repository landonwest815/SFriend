//
//  MenuOverlay.swift
//  SFriend
//
//  Created by Landon West on 1/24/24.
//

import SwiftUI

struct MenuOverlay: View {
    
    @State private var showingSheet = false

    var body: some View {
        
        VStack {
            HStack(spacing:30) {
                VStack {
                    
                    SFElement(imageName: "figure.wave", width: 37.5, height: 75, sheet: AnyView(MenuSheet()))
                    
                    Text("Landon")
                        .font(.system(size: 18))
                        .fontWeight(.heavy)
                        .fontDesign(.rounded)
                }
            }
            Spacer()
        }
        .padding(30)
        .preferredColorScheme(.dark)
    }
}

#Preview {
    MenuOverlay()
}
