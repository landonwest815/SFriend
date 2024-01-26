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
                    Button { showingSheet.toggle() }
                    label: {
                        Image(systemName: "figure.wave")
                            .resizable()
                            .frame(width: 37.5, height: 75)
                    }
                    .foregroundStyle(.white)
                    .sheet(isPresented: $showingSheet) {
                        NavigationStack {
                            MenuSheet()
                            //Text("hello")
                        }
                        .presentationDetents([.height(550)])
                        .presentationBackground(.black)
                    }
                    
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