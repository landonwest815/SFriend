//
//  MenuSheet.swift
//  SFriend
//
//  Created by Landon West on 1/24/24.
//

import SwiftUI

struct MenuSheet: View {

    var body: some View {
        
        List {
            Section {
                
                HStack {
                    Spacer()
                    Image(systemName: "house.fill")
                        .resizable()
                        .frame(width: 30, height: 25)
                    Spacer()
                }
                .padding(.bottom, 30)
                
                HStack {
                    Spacer()
                    Text("Make your bed")
                        .font(.system(size: 20))
                        .fontWeight(.heavy)
                        .fontDesign(.rounded)
                        .padding(6)
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    Text("Let some fresh air inside")
                        .font(.system(size: 20))
                        .fontWeight(.heavy)
                        .fontDesign(.rounded)
                        .padding(6)
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    Text("Check in with the calendar")
                        .font(.system(size: 20))
                        .fontWeight(.heavy)
                        .fontDesign(.rounded)
                        .padding(6)
                        .strikethrough()
                        .foregroundStyle(.gray)
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    Text("Set your goal for today")
                        .font(.system(size: 20))
                        .fontWeight(.heavy)
                        .fontDesign(.rounded)
                        .padding(6)
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    Text("Write down the best part of your day")
                        .font(.system(size: 20))
                        .fontWeight(.heavy)
                        .fontDesign(.rounded)
                        .padding(6)
                        .multilineTextAlignment(.center)
                    Spacer()
                }
            }
            .listRowBackground(Color.black)
            .listRowSeparator(.hidden)
            
            
        }
        .scrollContentBackground(.hidden)
        .preferredColorScheme(.dark)
        
    }
}

#Preview {
    MenuSheet()
}
