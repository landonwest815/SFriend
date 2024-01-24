//
//  HouseInterior.swift
//  SFriend
//
//  Created by Landon West on 1/23/24.
//

import SwiftUI

struct HouseInterior: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            ScrollViewReader { value in
                ScrollView(.horizontal, showsIndicators: false) {
                    VStack {
                        HStack(alignment: .bottom, spacing: 50) {
                            Spacer()
                            
                            Button {
                                dismiss()
                            }
                        label: {
                            Image(systemName: "door.left.hand.open")
                                .resizable()
                                .frame(width: 100, height: 150)
                                .padding(.trailing)
                        }
                        .foregroundStyle(.white)
                            
                            VStack(spacing: 25) {
                                Image(systemName: "photo.artframe")
                                    .resizable()
                                    .frame(width: 75, height: 60)
                                Image(systemName: "bed.double.fill")
                                    .resizable()
                                    .frame(width: 150, height: 100)
                                    .id(1)
                            }
                            
                            VStack {
                                Spacer()
                                Spacer()
                                HStack(spacing:30) {
                                    Image(systemName: "window.casement")
                                        .resizable()
                                        .frame(width: 150, height: 100)
                                    Image(systemName: "calendar")
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                }
                                Spacer()
                            }
                            
                            VStack(spacing:3) {
                                Spacer()
                                Spacer()
                                HStack {
                                    Spacer()
                                    Spacer()
                                    Image(systemName: "clock.fill")
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                    Spacer()
                                }
                                .frame(width: 150)
                                Spacer()
                                
                                HStack(alignment: .bottom, spacing:0)
                                {
                                    Image(systemName: "lamp.desk.fill")
                                        .resizable()
                                        .frame(width: 50, height: 60)
                                    Image(systemName: "macbook")
                                        .resizable()
                                        .frame(width: 70, height: 40)
                                        .symbolRenderingMode(.monochrome)
                                }
                                .frame(width: 150)
                                Image(systemName: "table.furniture.fill")
                                    .resizable()
                                    .frame(width: 150, height: 75)
                            }
                            Spacer()
                        }
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .frame(width: 1100, height: 25)
                        Spacer()
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
