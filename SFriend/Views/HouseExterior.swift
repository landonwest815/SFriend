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
                    VStack(spacing:3) {
                        Spacer()
                        HStack(alignment: .bottom, spacing: 30) {
                            Spacer()
                            
                            PopupPrompts(imageName: "bus.fill", width: 100, height: 100, promptText: "Where to?", promptImage1: SFElement(imageName: "graduationcap.fill", width: 50, height: 50), promptImage2: SFElement(imageName: "suitcase.fill", width: 50, height: 50), showOptions: $showTravelOptions)
                            
                            SFElement(imageName: "signpost.right.and.left.fill", width: 90, height: 70)
                                .id(1)
                            
                            VStack(spacing: 150) {
                                
                                NavigationLink(destination: HouseInterior())
                                    {
                                        SFElement(imageName: "house.fill", width: 175, height: 150)
                                    }
                                    .foregroundStyle(.white)
                                
                            }
                            
                            SFElement(imageName: "tree.fill", width: 175, height: 150)
                            
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
