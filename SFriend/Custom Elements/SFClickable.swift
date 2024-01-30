//
//  SFElement.swift
//  SFriend
//
//  Created by Landon West on 1/26/24.
//

import SwiftUI
import SwiftData

enum ButtonActionOption {
    case dismiss
    case toggleImage
    case replaceImage
    case sheet
}

struct SFClickable: View {
    
    @Environment(\.dismiss) var dismiss
    @Environment(\.modelContext) var context
    @Query var userData: [UserData]
    @Query var SFTasks: [SFTask]
    
    let image: SFElement
    
    @State var toggle: Bool = false
    @State var replaced: Bool = false
    
    var actionOption: ButtonActionOption
    
    let sheet: AnyView?
    
    // Image + Action
    init(image: SFElement, actionOption: ButtonActionOption) {
        self.image = image
        self.actionOption = actionOption
        self.sheet = nil
    }
    
    // Sheet Views
    init(image: SFElement, sheet: AnyView) {
            self.image = image
            self.actionOption = .sheet
            self.sheet = sheet
    }
    
    var body: some View {
        ZStack {
                        
                // IMAGE REPLACEMENT
                
                if (actionOption == .toggleImage || actionOption == .replaceImage) {
                    Button(action: {
                        performAction(for: actionOption)
                        //CompleteTask()
                    }) {
                        Image(systemName: toggle ? image.imageName2 : image.imageName)
                            .resizable()
                            .frame(width: image.width, height: image.height)
                            .foregroundStyle(.white)
                    }
                    .contentTransition(.symbolEffect(.replace))
                }
                
                // SHEETS
                
                else if (actionOption == .sheet) {
                    Button(action: {
                        performAction(for: actionOption)
                    }) {
                        Image(systemName: image.imageName)
                            .resizable()
                            .frame(width: image.width, height: image.height)
                            .foregroundStyle(.white)
                            .sheet(isPresented: $toggle) {
                                NavigationStack {
                                    sheet
                                }
                                .presentationDetents([.height(550)])
                                .presentationBackground(.black)
                            }
                    }
                }
                
                // BASIC BUTTONS
                
                else
                {
                    Button(action: {
                        performAction(for: actionOption)
                    }) {
                        Image(systemName: image.imageName)
                            .resizable()
                            .frame(width: image.width, height: image.height)
                            .foregroundStyle(.white)
                    }
                }
        }
        .opacity(image.opacity)
        .preferredColorScheme(.dark)
    }
    
    private func performAction(for option: ButtonActionOption) {
        switch option {
            
            case .dismiss:
                dismiss()
                
            case .toggleImage:
                withAnimation {
                    toggle.toggle()
                }
            
            case .replaceImage:
                withAnimation {
                    toggle = true
                }
                
            case .sheet:
                toggle.toggle()
            }
    }
    
    private func CompleteTask() {
        print("tap")
        if let task = SFTasks.first(where: { $0.taskDescription == "Make your bed" }) {
            
            print("hmm")
            if !task.isCompleted {
                print("ooh")
                userData.first?.incrementSparkles(amount: task.taskReward)
                task.isCompleted = true
            }
        }
        
        print("tap")
        if let task = SFTasks.first(where: { $0.taskDescription == "Let some fresh air in" }) {
            
            print("hmm")
            if !task.isCompleted {
                print("ooh")
                userData.first?.incrementSparkles(amount: task.taskReward)
                task.isCompleted = true
            }
        }
    }
}

#Preview {
    SFClickable(image: SFElement(imageName: "house", width: 50, height: 40), sheet: AnyView(CalendarSheet()))
}
