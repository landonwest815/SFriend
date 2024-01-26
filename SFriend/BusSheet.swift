//
//  BusSheet.swift
//  SFriend
//
//  Created by Landon West on 1/26/24.
//

import SwiftUI

struct BusSheet: View {
    
    @Environment(\.dismiss) var dismiss

    var body: some View {
        
        List {
            Section {
                
                HStack {
                    Spacer()
                    Image(systemName: "bus.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                    Spacer()
                }
                .padding(.bottom, 30)
                
                HStack {
                    Spacer()
                    Text("Where are we travelling to?")
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
                        Image(systemName: "building.columns.fill")
                            .resizable()
                            .frame(width: 70, height: 70)
                            .foregroundStyle(.white)
                    }
                    .padding(6)
                    
                    Spacer()
                    
                    Button { dismiss() }
                    label: {
                        Image(systemName: "building.2.fill")
                            .resizable()
                            .frame(width: 70, height: 70)
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
    BusSheet()
}
