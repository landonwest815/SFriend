//
//  CalendarSheet.swift
//  SFriend
//
//  Created by Landon West on 1/24/24.
//

import SwiftUI

struct CalendarSheet: View {
    
    @Environment(\.dismiss) var dismiss
    @State private var answer: String = ""
    
    var body: some View {
        
        List {
            Section {
                
                HStack {
                    Spacer()
                    Image(systemName: "calendar")
                        .resizable()
                        .frame(width: 30, height: 30)
                    Spacer()
                }
                .padding(.bottom, 30)
                
                HStack {
                    Spacer()
                    Text("What is the most important thing on your schedule today?")
                        .font(.system(size: 18))
                        .fontWeight(.heavy)
                        .fontDesign(.rounded)
                        .padding(6)
                        .multilineTextAlignment(.center)
                    Spacer()
                }
                
                TextField("Something super important...", text: $answer, axis: .vertical)
                    .background(.black)
                    .font(.system(size: 18))
                    .fontWeight(.heavy)
                    .fontDesign(.rounded)
                    .padding(6)
                    .multilineTextAlignment(.center)

                HStack {
                    Spacer()
                    
                    Button { dismiss() }
                    label: {
                        Image(systemName: "x.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundStyle(.white)
                    }
                    .padding(6)
                    
                    Spacer()
                    
                    Button { dismiss() }
                    label: {
                        Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundStyle(.white)
                    }
                    .padding(6)

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
    CalendarSheet()
}
