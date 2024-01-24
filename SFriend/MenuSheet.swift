//
//  MenuSheet.swift
//  SFriend
//
//  Created by Landon West on 1/24/24.
//

import SwiftUI

struct MenuSheet: View {
    var genders = ["Male", "Female", "Other"]
    
    @State private var name: String = "Landon"
    @State private var gender = "Male"
    @State private var age: Int = 20
    @State private var isWorking: Bool = true
    @State private var inSchool: Bool = true

    var body: some View {
        
        List() {
            Section(header: Text("Info")) {
                TextField("Enter your name", text: $name)
                    .font(.system(size: 20))
                    .fontWeight(.heavy)
                    .fontDesign(.rounded)
                    .padding(6)
            
            
            
                Picker(gender, selection: $gender) {
                    ForEach(genders, id: \.self) {
                        Text($0)
                    }
                }
                .font(.system(size: 20))
                .fontWeight(.heavy)
                .fontDesign(.rounded)
                .padding(6)
            
            
            
                Stepper("\(age) yrs", value: $age)
                    .font(.system(size: 20))
                    .fontWeight(.heavy)
                    .fontDesign(.rounded)
                    .padding(6)
            }
            .listRowBackground(Color.black)
            
            Section(header: Text("Status")) {
                Toggle("Employed", isOn: $isWorking)
                    .font(.system(size: 20))
                    .fontWeight(.heavy)
                    .fontDesign(.rounded)
                    .padding(6)
            
            
                Toggle("Attending School", isOn: $inSchool)
                    .font(.system(size: 20))
                    .fontWeight(.heavy)
                    .fontDesign(.rounded)
                    .padding(6)
            }
            .listRowBackground(Color.black)
            
        }
        .scrollContentBackground(.hidden)
        .preferredColorScheme(.dark)
        
    }
}

#Preview {
    MenuSheet()
}
