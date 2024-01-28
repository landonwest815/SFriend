//
//  ContentView.swift
//  SFriend
//
//  Created by Landon West on 1/23/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {

    @Environment(\.modelContext) var context
    @Query var userDataArray: [UserData]
    
    @State var showWelcomeSheet = false
    
    var body: some View {
        ZStack {
            HouseExterior()
            MenuOverlay()
        }
        .sheet(isPresented: $showWelcomeSheet) {
            NavigationStack {
                WelcomeSheet()
            }
            .presentationDetents([.large])
            .presentationBackground(.black)
        }
        .preferredColorScheme(.dark)
        .onAppear() {
            GrabUserData()
//            do {
//                try context.delete(model: UserData.self)
//            } catch {
//                print("Failed to clear all Country and City data.")
//            }
        }
    }
    
    func GrabUserData() {
        if userDataArray.first != nil {
            print("Existing Data Found")
        } else {
            let newUserData = UserData()
            context.insert(newUserData)
            showWelcomeSheet.toggle()
        }
    }
}

#Preview {
    let config = ModelConfiguration(isStoredInMemoryOnly: true)
    let container = try! ModelContainer(for: UserData.self, configurations: config)
    let userData =  UserData()
    container.mainContext.insert(userData)

    return ContentView()
           .modelContainer(container)
}
