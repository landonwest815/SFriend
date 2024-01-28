//
//  SparklesSheet.swift
//  SFriend
//
//  Created by Landon West on 1/27/24.
//

import SwiftUI

struct SparklesSheet: View {
    var body: some View {
        
        List {
            Section {
                
                HStack {
                    Spacer()
                    Image(systemName: "sparkles")
                        .resizable()
                        .frame(width: 30, height: 30)
                    Spacer()
                }
                .padding(.bottom, 30)
                
                HStack {
                    Spacer()
                    Text("Sparkles are what allow you to fill this world with all sorts of symbols!")
                        .font(.system(size: 20))
                        .fontWeight(.heavy)
                        .fontDesign(.rounded)
                        .multilineTextAlignment(.center)
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    Text("Visit your SFriend at any time to see the tasks he has in store for you.")
                        .font(.system(size: 20))
                        .fontWeight(.heavy)
                        .fontDesign(.rounded)
                        .multilineTextAlignment(.center)
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    Text("Keep in mind that these tasks will change when you travel to other worlds!")
                        .font(.system(size: 20))
                        .fontWeight(.heavy)
                        .fontDesign(.rounded)
                        .multilineTextAlignment(.center)
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    Text("Discover what this universe has to offer.")
                        .font(.system(size: 20))
                        .fontWeight(.heavy)
                        .fontDesign(.rounded)
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
    SparklesSheet()
}
