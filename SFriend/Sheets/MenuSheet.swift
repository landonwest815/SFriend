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
                    Text("Make your bed")
                        .font(.system(size: 20))
                        .fontWeight(.heavy)
                        .fontDesign(.rounded)
                        .padding(3)
                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                    
                    SFElement(imageName: "sparkles", width: 25, height: 25)
                        .padding(.leading, 15)
                    Text("1")
                        .font(.system(size: 20))
                        .fontWeight(.heavy)
                        .fontDesign(.rounded)
                }
                
                HStack {
                    Text("Let some fresh air inside")
                        .font(.system(size: 20))
                        .fontWeight(.heavy)
                        .fontDesign(.rounded)
                        .padding(3)
                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                    
                    SFElement(imageName: "sparkles", width: 25, height: 25)
                        .padding(.leading, 15)
                    Text("1")
                        .font(.system(size: 20))
                        .fontWeight(.heavy)
                        .fontDesign(.rounded)
                    
                }
                
                HStack {
                    Text("Check in with the calendar")
                        .font(.system(size: 20))
                        .fontWeight(.heavy)
                        .fontDesign(.rounded)
                        .padding(3)
                        .strikethrough()
                        .foregroundStyle(.gray)
                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                    
                    SFElement(imageName: "sparkles", width: 25, height: 25, opacity: 0.5)
                        .padding(.leading, 15)
                    Text("3")
                        .font(.system(size: 20))
                        .fontWeight(.heavy)
                        .fontDesign(.rounded)
                        .opacity(0.5)
                }
                
                HStack {
                    Text("Write down the best part of your day")
                        .font(.system(size: 20))
                        .fontWeight(.heavy)
                        .fontDesign(.rounded)
                        .padding(3)
                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                    
                    SFElement(imageName: "sparkles", width: 25, height: 25)
                        .padding(.leading, 15)
                    Text("3")
                        .font(.system(size: 20))
                        .fontWeight(.heavy)
                        .fontDesign(.rounded)
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
