//
//  SFElement.swift
//  SFriend
//
//  Created by Landon West on 1/26/24.
//

import SwiftUI

enum ButtonActionOption {
    case noAction
    case dismiss
    case toggle
    case switchImage
    case replaceImage
    case sheet
}

struct SFElement: View {
    
    @Environment(\.dismiss) var dismiss
    
    let imageName: String
    let imageName2: String
    
    let width: CGFloat
    let height: CGFloat
    
    var opacity: CGFloat = 1.0
    
    var isButton: Bool = false
    @State var toggle: Bool = false
    
    var actionOption: ButtonActionOption = .noAction
    
    let sheet: AnyView?

    
    // just the image
    init(imageName: String, width: CGFloat, height: CGFloat) {
        self.imageName = imageName
        self.imageName2 = ""
        self.width = width
        self.height = height
        self.sheet = nil
    }
    
    // just the image with opacity settings
    init(imageName: String, width: CGFloat, height: CGFloat, opacity: CGFloat) {
        self.imageName = imageName
        self.imageName2 = ""
        self.width = width
        self.height = height
        self.opacity = opacity
        self.sheet = nil
    }
    
    // basic action options
    init(imageName: String, width: CGFloat, height: CGFloat, actionOption: ButtonActionOption) {
        self.imageName = imageName
        self.imageName2 = ""
        self.width = width
        self.height = height
        self.isButton = true
        self.actionOption = actionOption
        self.sheet = nil
    }
    
    // replacable image
    init(imageName: String, imageName2: String, width: CGFloat, height: CGFloat, actionOption: ButtonActionOption) {
            self.imageName = imageName
            self.imageName2 = imageName2
            self.width = width
            self.height = height
            self.isButton = true
            self.actionOption = actionOption
            self.sheet = nil
    }
    
    // sheets
    init(imageName: String, width: CGFloat, height: CGFloat, sheet: AnyView) {
            self.imageName = imageName
            self.imageName2 = ""
            self.width = width
            self.height = height
            self.isButton = true
            self.actionOption = .sheet
            self.sheet = sheet
    }
    
    var body: some View {
        ZStack {
            
            // BUTTON
            
            if isButton {
                
                // IMAGE REPLACEMENT
                
                if (actionOption == .switchImage || actionOption == .replaceImage) {
                    Button(action: {
                        performAction(for: actionOption)
                    }) {
                        Image(systemName: toggle ? imageName2 : imageName)
                            .resizable()
                            .frame(width: width, height: height)
                            .foregroundStyle(.white)
                    }
                    .contentTransition(.symbolEffect(.replace))
                }
                
                // SHEETS
                
                else if (actionOption == .sheet) {
                    Button(action: {
                        performAction(for: actionOption)
                    }) {
                        Image(systemName: imageName)
                            .resizable()
                            .frame(width: width, height: height)
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
                        Image(systemName: imageName)
                            .resizable()
                            .frame(width: width, height: height)
                            .foregroundStyle(.white)
                    }
                }
            } 
            
            // NOT BUTTON
            
            else {
                Image(systemName: imageName)
                    .resizable()
                    .frame(width: width, height: height)
            }
            
        }
        .opacity(opacity)
        .preferredColorScheme(.dark)
    }
    
    private func performAction(for option: ButtonActionOption) {
        switch option {
            
        case .noAction:
            print("")
            
        case .dismiss:
            dismiss()
            
        case .toggle:
            toggle.toggle()
            
        case .switchImage:
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
}

#Preview {
    SFElement(imageName: "house", width: 50, height: 40, sheet: AnyView(CalendarSheet()))
}
