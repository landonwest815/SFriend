//
//  HouseInterior.swift
//  SFriend
//
//  Created by Landon West on 1/23/24.
//

import SwiftUI

struct HouseInterior: View {
    
    @Environment(\.dismiss) var dismiss
    @State private var showingSheet = false
    @State private var bedMade = false
    @State private var windowOpen = false
    @State private var bedAlreadyMade = 0

    var body: some View {
        ZStack {
            ScrollViewReader { value in
                ScrollView(.horizontal, showsIndicators: false) {
                    VStack {
                        HStack(alignment: .bottom, spacing: 50) {
                            
                            SFElement(imageName: "door.left.hand.open", width: 100, height: 150, actionOption: .dismiss)
                            
                            VStack(spacing: 25) {
                                
                                // Pictureframe
                                SFElement(imageName: "photo.artframe", width: 75, height: 60).opacity(0.5)
                                
                                // Interactable Bed
                                let bed = SFElement(imageName: "bed.double", imageName2: "bed.double.fill", width: 150, height: 100, actionOption: .replaceImage)
                                    .id(1)
                                bed

                            }
                            
                            VStack {
                                Spacer()
                                Spacer()
                                HStack(spacing:30) {
                                    
                                    // Window
                                    SFElement(imageName: "window.vertical.open", imageName2: "window.vertical.closed", width: 110, height: 100, actionOption: .switchImage)
                                        
                                    // Calendar
                                    SFElement(imageName: "calendar", width: 50, height: 50, sheet: AnyView(CalendarSheet()))
                                    
                                }
                                Spacer()
                            }
                            
                            VStack(spacing:3) {
                                Spacer()
                                Spacer()
                                HStack {
                                    Spacer()
                                    Spacer()
                                    
                                    SFElement(imageName: "clock.fill", width: 50, height: 50)
                                    
                                    Spacer()
                                }
                                .frame(width: 150)
                                Spacer()
                                
                                HStack(alignment: .bottom, spacing:0)
                                {
                                    SFElement(imageName: "lamp.desk.fill", width: 50, height: 60)
                                    
                                    SFElement(imageName: "macbook", width: 70, height: 40)
                                        .symbolRenderingMode(.monochrome)
                                }
                                .frame(width: 150)
                                
                                SFElement(imageName: "table.furniture.fill", width: 150, height: 75)
                            }
                        }
                        
                        SFElement(imageName: "square.fill", width: 1100, height: 25)
                    }
                    .frame(height: 400)
                    .onAppear() {
                        value.scrollTo(1)
                    }
                }
            }
        }
        .navigationBarBackButtonHidden()
        .preferredColorScheme(.dark)
    }
}

#Preview {
    HouseInterior()
}