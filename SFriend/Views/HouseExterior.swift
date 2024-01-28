//
//  HouseExterior.swift
//  SFriend
//
//  Created by Landon West on 1/23/24.
//

import SwiftUI

struct HouseExterior: View {
    @State private var showTravelOptions = false
    
    var body: some View {
            
        NavigationView {
            ScrollViewReader { value in
                ScrollView(.horizontal, showsIndicators: false) {
                    VStack(spacing:-5) {
                        Spacer()
                        HStack(alignment: .bottom, spacing: 30) {
                            Spacer()
                            
                            PopupPrompts(image: SFElement(imageName: "bus.fill", width: 75, height: 75), promptText: "Where to?", promptImage1: SFElement(imageName: "graduationcap.fill", width: 50, height: 50), promptImage2: SFElement(imageName: "suitcase.fill", width: 50, height: 50), showOptions: $showTravelOptions)
                                .padding(.bottom, 10)
                            
                            SFElement(imageName: "camera.macro", width: 40, height: 40)
                                .id(1)
                                .padding(.bottom, 10)
                            
                            VStack {
                                NavigationLink(destination: HouseInterior())
                                {
                                    SFElement(imageName: "house.lodge.fill", width: 250, height: 150)
                                }
                                .foregroundStyle(.white)
                            }
                            
                            SFElement(imageName: "tree.fill", width: 120, height: 100)
                                .padding(.bottom, 10)
                            
                            Spacer()
                        }
                        
                        SFElement(imageName: "square.fill", width: 1100, height: 350)
                    }
                    .frame(height: 1000)
                    .onAppear() {
                        value.scrollTo(1)
                    }
                    
                }
                .onTapGesture {
                    showTravelOptions = false
                }
                
            }
            .onAppear() {
                showTravelOptions = false
            }
            
        }
        .navigationBarBackButtonHidden()
        .preferredColorScheme(.dark)
    }
}

#Preview {
    HouseExterior()
}
