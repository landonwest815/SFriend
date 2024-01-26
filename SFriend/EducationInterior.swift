//
//  EducationInterior.swift
//  SFriend
//
//  Created by Landon West on 1/26/24.
//

import SwiftUI

struct EducationInterior: View {
    
    @Environment(\.dismiss) var dismiss

    var body: some View {
        
            ZStack {
                ScrollViewReader { value in
                    ScrollView(.horizontal, showsIndicators: false) {
                        VStack {
                            HStack(alignment: .bottom, spacing: 50) {
                                Spacer()
                                
                                VStack(spacing:5) {
                                   
                                    ZStack {
                                        VStack {
                                            Spacer()
                                            Image(systemName: "chair.fill")
                                                .resizable()
                                                .frame(width: 60, height: 85)
                                                .fontWeight(.thin)
                                        }
                                        
                                        VStack(spacing:3) {
                                            Spacer()
                                            
                                            HStack(alignment: .bottom) {
                                                Image(systemName: "globe.desk.fill")
                                                    .resizable()
                                                    .frame(width: 50, height: 50)
                                                    .fontWeight(.thin)
                                               
                                                Spacer()
                                        
                                                Image(systemName: "archivebox.fill")
                                                    .resizable()
                                                    .frame(width: 35, height: 25)
                                                    .fontWeight(.thin)
                                                    .padding(.trailing, 10)
                                            }
                                            .frame(width: 175)
                                            
                                            Image(systemName: "table.furniture.fill")
                                                .resizable()
                                                .frame(width: 175, height: 75)
                                                .fontWeight(.thin)
                                        }
                                    }
                                }
                                
                                VStack(spacing:25) {
                                    
                                    ZStack {
                                        Image(systemName: "light.panel.fill")
                                            .resizable()
                                            .frame(width: 250, height: 125)
                                            .fontWeight(.thin)
                                        
                                        HStack {
                                            Image(systemName: "function")
                                                .resizable()
                                                .frame(width: 50, height: 25)
                                                .foregroundStyle(.black)
                                            
                                            Image(systemName: "equal")
                                                .resizable()
                                                .frame(width: 15, height: 10)
                                                .foregroundStyle(.black)
                                            
                                            Image(systemName: "x.squareroot")
                                                .resizable()
                                                .frame(width: 35, height: 25)
                                                .foregroundStyle(.black)
                                        }
                                    }
                                    
                                    HStack(spacing:25) {
                                        Image(systemName: "studentdesk")
                                            .resizable()
                                            .frame(width: 85, height: 85)
                                        
                                        Image(systemName: "studentdesk")
                                            .resizable()
                                            .frame(width: 85, height: 85)
                                        
                                        Image(systemName: "studentdesk")
                                            .resizable()
                                            .frame(width: 85, height: 85)
                                    }
                                }
                                        
                                VStack {
                                    Spacer()
                                    Spacer()
                                    Spacer()
                                    Image(systemName: "window.vertical.closed")
                                        .resizable()
                                        .frame(width: 110, height: 100)
                                    Spacer()
                                }
                                
                                Button {
                                    dismiss()
                                }
                                label: {
                                    Image(systemName: "door.left.hand.open")
                                        .resizable()
                                        .frame(width: 100, height: 150)
                                        .padding(.trailing)
                                        .id(1)
                                }
                                .foregroundStyle(.white)
                                
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
    EducationInterior()
}
