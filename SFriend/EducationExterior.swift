//
//  EducationExterior.swift
//  SFriend
//
//  Created by Landon West on 1/26/24.
//

import SwiftUI

struct EducationExterior: View {
    
    @Environment(\.dismiss) var dismiss
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
                                            Button { dismiss() }
                                            label: {
                                                Image(systemName: "house.fill")
                                                    .resizable()
                                                    .frame(width: 50, height: 40)
                                                    .foregroundStyle(.white)
                                                    .scaleEffect(showTravelOptions ? 1 : 0.5)
                                                                .opacity(showTravelOptions ? 1 : 0)
                                                                .transition(.opacity)
                                                                .animation(.easeOut(duration: 0.25), value: showTravelOptions)
                                            }
                                        }
                                    
                                    
                                    Button { showTravelOptions.toggle() }
                                    label: {
                                        Image(systemName: "bus.fill")
                                            .resizable()
                                            .frame(width: 100, height: 100)
                                            .foregroundStyle(.white)
                                    }
                                    .frame(width:150)
                                }
                                
                                Image(systemName: "signpost.right.and.left.fill")
                                    .resizable()
                                    .frame(width: 90, height: 70)
                                    .id(1)
                                
                                VStack(spacing: 150) {
//                                    Image(systemName: "sun.max.fill")
//                                        .resizable()
//                                        .frame(width: 50, height: 50)
                                    
                                    NavigationLink(destination: EducationInterior())
                                        {
                                            Image(systemName: "building.columns.fill")
                                                .resizable()
                                                .frame(width: 175, height: 150)

                                        }
                                        .foregroundStyle(.white)
                                    
                                }
                                
                                Image(systemName: "tree.fill")
                                    .resizable()
                                    .frame(width: 175, height: 150)
                                
                                Spacer()
                            }
                            
                            Image(systemName: "square.fill")
                                .resizable()
                                .frame(width: 1100, height: 350)
                        }
                        .frame(height: 1000)
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
    EducationExterior()
}
