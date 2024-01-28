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
            ZStack(alignment: .top) {
                HStack {
                    ZStack {
                        SFElement(imageName: "figure.wave", width: 35, height: 70, sheet: AnyView(MenuSheet()))
                        SFElement(imageName: "4.circle.fill", width: 20, height: 20)
                            .padding(.leading, 50)
                            .padding(.bottom, 75)
                    }
                }
                
                HStack {
                    SFElement(imageName: "gear", width: 30, height: 30, sheet: AnyView(SparklesSheet()))
                        .padding(.trailing, 10)
                    SFElement(imageName: "text.book.closed.fill", width: 25, height: 30, sheet: AnyView(SparklesSheet()))
                    Spacer()
                    SFElement(imageName: "sparkles", width: 30, height: 30, sheet: AnyView(SparklesSheet()))
                    Text("17")
                        .font(.system(size: 18))
                        .fontWeight(.heavy)
                        .fontDesign(.rounded)
                }
                    .padding(.trailing, 15)
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
