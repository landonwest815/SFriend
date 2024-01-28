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
            HStack(spacing:10) {
                VStack {
                    
                    ZStack {
                        SFElement(imageName: "figure.wave", width: 35, height: 70, sheet: AnyView(MenuSheet()))
                        SFElement(imageName: "4.circle.fill", width: 20, height: 20)
                            .padding(.leading, 50)
                            .padding(.bottom, 75)
                    }
                    
                    Text("Landon")
                        .font(.system(size: 18))
                        .fontWeight(.heavy)
                        .fontDesign(.rounded)
                }
            }
            Spacer()
        }
        .padding(20)
        .preferredColorScheme(.dark)
    }
}

#Preview {
    MenuOverlay()
}
