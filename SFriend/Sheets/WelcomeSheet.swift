//
//  WelcomeSheet.swift
//  SFriend
//
//  Created by Landon West on 1/27/24.
//

import SwiftUI

struct WelcomeSheet: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {

        List {
            Section {
                
                HStack {
                    Spacer()
                    Image(systemName: "party.popper.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                    Spacer()
                }
                .padding(.bottom, 30)
                
                HStack {
                    Spacer()
                    Text("Welcome to SFriend!")
                        .font(.system(size: 18))
                        .fontWeight(.heavy)
                        .fontDesign(.rounded)
                        .padding(6)
                        .multilineTextAlignment(.center)
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    Text("Complete all sorts of tasks and activities to grow this universe into a personalized landscape.")
                        .font(.system(size: 18))
                        .fontWeight(.heavy)
                        .fontDesign(.rounded)
                        .padding(6)
                        .multilineTextAlignment(.center)
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    Text("Hint: Tap on EVERYTHING!")
                        .font(.system(size: 18))
                        .fontWeight(.heavy)
                        .fontDesign(.rounded)
                        .padding(6)
                        .multilineTextAlignment(.center)
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    Button { dismiss() }
                    label: {
                        Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundStyle(.white)
                    }
                    .padding(30)
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
    WelcomeSheet()
}
