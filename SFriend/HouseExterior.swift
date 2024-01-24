//
//  HouseExterior.swift
//  SFriend
//
//  Created by Landon West on 1/23/24.
//

import SwiftUI

struct HouseExterior: View {
    @State private var isShowingInterior = false
    
    var body: some View {
            
        NavigationView {
                ScrollViewReader { value in
                    ScrollView(.horizontal, showsIndicators: false) {
                        VStack {
                            Spacer()
                            HStack(alignment: .bottom, spacing: 50) {
                                Spacer()
                                
                                Image(systemName: "dog.fill")
                                    .resizable()
                                    .frame(width: 75, height: 60)
                                
                                VStack(spacing: 150) {
                                    Image(systemName: "sun.max.fill")
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                    
                                    NavigationLink(destination: HouseInterior())
                                        {
                                            Image(systemName: "house.fill")
                                                .resizable()
                                                .frame(width: 175, height: 150)

                                        }
                                        .foregroundStyle(.white)
                                        .id(1)
                                    
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
        .preferredColorScheme(.dark)
        
            
        }
    }



#Preview {
    HouseExterior()
}
