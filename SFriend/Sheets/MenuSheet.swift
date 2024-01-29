//
//  MenuSheet.swift
//  SFriend
//
//  Created by Landon West on 1/24/24.
//

import SwiftUI
import SwiftData

struct MenuSheet: View {
    
    @Environment(\.modelContext) var context
    @Query var SFTasks: [SFTask]

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
                
                ForEach(SFTasks, id: \.id) { task in
                    
                    HStack {
                        if task.isCompleted {
                            Text(task.taskDescription)
                                .font(.system(size: 20))
                                .fontWeight(.heavy)
                                .fontDesign(.rounded)
                                .padding(3)
                                .multilineTextAlignment(.leading)
                                .strikethrough()
                                .foregroundStyle(.gray)
                        } else {
                            Text(task.taskDescription)
                                .font(.system(size: 20))
                                .fontWeight(.heavy)
                                .fontDesign(.rounded)
                                .padding(3)
                                .multilineTextAlignment(.leading)
                        }
                        
                        Spacer()
                        
                        SFElement(imageName: "sparkles", width: 25, height: 25)
                            .padding(.leading, 15)
                        
                        if task.isCompleted {
                            Text(String(task.taskReward))
                                .font(.system(size: 20))
                                .fontWeight(.heavy)
                                .fontDesign(.rounded)
                                .strikethrough()
                                .foregroundStyle(.gray)
                        } else {
                            Text(String(task.taskReward))
                                .font(.system(size: 20))
                                .fontWeight(.heavy)
                                .fontDesign(.rounded)
                        }
                    }
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
    let config = ModelConfiguration(isStoredInMemoryOnly: true)
    let container = try! ModelContainer(for: UserData.self, SFTask.self, configurations: config)
    let userData = UserData()
    container.mainContext.insert(userData)
    let task = SFTask(taskDescription: "do something", taskReward: 0)
    container.mainContext.insert(task)

    return MenuSheet()
           .modelContainer(container)
}
