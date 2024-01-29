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
    @Query var SFTasks: [SFTask]
    
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
            GetSFTasks()
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
            InitializeSFTasks()
            showWelcomeSheet.toggle()
        }
    }
    
    func GetSFTasks() {
        let currentDate = Date() // Get the current date
            for task in SFTasks {
                if !Calendar.current.isDate(currentDate, inSameDayAs: task.lastCompletedDate ?? Date.distantPast) {
                    task.isCompleted = false
                    task.lastCompletedDate = currentDate
                }
            }
    }
    
    func InitializeSFTasks() {
        let makeBed = SFTask(taskDescription: "Make your bed", taskReward: 1)
        let openWindow = SFTask(taskDescription: "Let some fresh air in", taskReward: 1)
        let completeCalendar = SFTask(taskDescription: "Check in with the calendar", taskReward: 3)
        let completeJournal = SFTask(taskDescription: "Reflect in your journal", taskReward: 3)
        
        context.insert(makeBed)
        context.insert(openWindow)
        context.insert(completeCalendar)
        context.insert(completeJournal)
    }

}

#Preview {
    let config = ModelConfiguration(isStoredInMemoryOnly: true)
    let container = try! ModelContainer(for: UserData.self, SFTask.self, configurations: config)
    let userData = UserData()
    container.mainContext.insert(userData)
    let task = SFTask(taskDescription: "do something", taskReward: 0)
    container.mainContext.insert(task)

    return ContentView()
           .modelContainer(container)
}
