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
                                Button {
                                    if bedMade { bedAlreadyMade += 1 }
                                    withAnimation {
                                        bedMade = true
                                    }
                                }
                                label: {
                                    Image(systemName: bedMade ? "bed.double.fill": "bed.double")
                                        .resizable()
                                        .frame(width: 150, height: 100)
                                        .id(1)
                                        .foregroundStyle(.white)
                                }
                                .symbolEffect(.bounce.down, value: bedAlreadyMade)
                                .contentTransition(.symbolEffect(.replace))
                            }
                            
                            VStack {
                                Spacer()
                                Spacer()
                                HStack(spacing:30) {
                                    
                                    Button {
                                        withAnimation {
                                            windowOpen.toggle()
                                        }
                                    }
                                    label: {
                                        Image(systemName: windowOpen ? "window.vertical.open": "window.vertical.closed")
                                            .resizable()
                                            .frame(width: 110, height: 100)
                                            .foregroundStyle(.white)
                                    }
                                    .contentTransition(.symbolEffect(.replace.offUp))
                                        
                                    Button { showingSheet.toggle() }
                                    label: {
                                    Image(systemName: "calendar")
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                        .foregroundStyle(.white)
                                    }
                                    .sheet(isPresented: $showingSheet) {
                                        NavigationStack {
                                            CalendarSheet()
                                        }
                                        .presentationDetents([.height(550)])
                                        .presentationBackground(.black)
                                    }
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
