//
//  HouseExterior.swift
//  SFriend
//
//  Created by Landon West on 1/23/24.
//

import SwiftUI

struct HouseExterior: View {
    @State private var isShowingInterior = false
    @State private var showTravelOptions = false
    
    var body: some View {
            
        
        NavigationView {
            ScrollViewReader { value in
                ScrollView(.horizontal, showsIndicators: false) {
                    VStack(spacing:3) {
                        Spacer()
                        HStack(alignment: .bottom, spacing: 30) {
                            Spacer()
                            
                            VStack(spacing:25){
                                    
                                    HStack {
                                        Spacer()
                                        Text("Where to?")
                                            .font(.system(size: 18))
                                            .fontWeight(.heavy)
                                            .fontDesign(.rounded)
                                            .padding(6)
                                            .scaleEffect(showTravelOptions ? 1 : 0.5)
                                                        .opacity(showTravelOptions ? 1 : 0)
                                                        .transition(.opacity)
                                                        .animation(.easeOut(duration: 0.25), value: showTravelOptions)
                                        Spacer()
                                    }
                                    .frame(width:125)
                                    
                                    HStack(spacing:35) {
                                        NavigationLink(destination: EducationExterior())
                                        {
                                            SFElement(imageName: "graduationcap.fill", width: 50, height: 50)
                                                .scaleEffect(showTravelOptions ? 1 : 0.5)
                                                            .opacity(showTravelOptions ? 1 : 0)
                                                            .transition(.opacity)
                                                            .animation(.easeOut(duration: 0.25), value: showTravelOptions)
                                            
                                        }
                                        
                                        SFElement(imageName: "suitcase.fill", width: 50, height: 50)
                                            .padding(.bottom, 15)
                                            .scaleEffect(showTravelOptions ? 1 : 0.5)
                                                        .opacity(showTravelOptions ? 1 : 0)
                                                        .transition(.opacity)
                                                        .animation(.easeOut(duration: 0.25), value: showTravelOptions)
                                    }
                                    .foregroundStyle(.white)
                                
                                
                                Button { showTravelOptions.toggle() }
                                label: {
                                    SFElement(imageName: "bus.fill", width: 100, height: 100)
                                }
                                .foregroundStyle(.white)
                                .frame(width:150)
                            }
                            
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
            .onDisappear() {
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
