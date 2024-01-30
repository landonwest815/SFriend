//
//  MenuOverlay.swift
//  SFriend
//
//  Created by Landon West on 1/24/24.
//

import SwiftUI
import SwiftData

struct MenuOverlay: View {
    
    @Environment(\.modelContext) var context
    @Query var userDataArray: [UserData]
    
    @Query(filter: #Predicate<SFTask> { task in
        task.isCompleted == false
    }) var completedTasks: [SFTask]
    
    @State private var showingSheet = false

    var body: some View {
        
        VStack {
            ZStack(alignment: .top) {
                HStack {
                    ZStack {
                        SFClickable(image: SFElement(imageName: (completedTasks.count == 0) ? "figure.stand" : "figure.wave", width: (completedTasks.count == 0) ? 30 : 35, height: 70), sheet: AnyView(MenuSheet()))
                        
                        if (completedTasks.count != 0) {
                            SFElement(imageName: "\(completedTasks.count).circle.fill", width: 20, height: 20)
                                .padding(.leading, 50)
                                .padding(.bottom, 75)
                        }
                    }
                }
                
                HStack {
                    SFClickable(image: SFElement(imageName: "gear", width: 30, height: 30), sheet: AnyView(SparklesSheet()))
                        .padding(.trailing, 10)
                    SFClickable(image: SFElement(imageName: "text.book.closed.fill", width: 25, height: 30), sheet: AnyView(SparklesSheet()))
                    Spacer()
                    SFClickable(image: SFElement(imageName: "sparkles", width: 30, height: 30), sheet: AnyView(SparklesSheet()))
                    Text(String(userDataArray.first?.numOfSparkles() ?? -1))
                        .font(.system(size: 18))
                        .fontWeight(.heavy)
                        .fontDesign(.rounded)
                }
                    .padding(.trailing, 15)
            }
            Spacer()
        }
        .padding(20)
        .preferredColorScheme(.dark)
    }
}

#Preview {
    MenuOverlay()
}
