//
//  PopupPrompts.swift
//  SFriend
//
//  Created by Landon West on 1/27/24.
//

import SwiftUI

struct PopupPrompts: View {
    
    var imageName: String
    var width: CGFloat
    var height: CGFloat
    var promptText: String
    var promptImage1: SFElement?
    var promptImage2: SFElement?
    var promptImage3: SFElement?
    
    @Binding var showOptions: Bool
    
    // Basic text prompt
    init(imageName: String, width: CGFloat, height: CGFloat, promptText: String, showOptions: Binding<Bool>) {
        self.imageName = imageName
        self.width = width
        self.height = height
        self.promptText = promptText
        self._showOptions = showOptions
    }
    
    // 1 Image Button
    init(imageName: String, width: CGFloat, height: CGFloat, promptText: String, promptImage1: SFElement, showOptions: Binding<Bool>) {
        self.imageName = imageName
        self.width = width
        self.height = height
        self.promptText = promptText
        self.promptImage1 = promptImage1
        self._showOptions = showOptions
    }
    
    // 2 Image Buttons
    init(imageName: String, width: CGFloat, height: CGFloat, promptText: String, promptImage1: SFElement, promptImage2: SFElement, showOptions: Binding<Bool>) {
        self.imageName = imageName
        self.width = width
        self.height = height
        self.promptText = promptText
        self.promptImage1 = promptImage1
        self.promptImage2 = promptImage2
        self._showOptions = showOptions
    }
    
    // 3 Image Buttons
    init(imageName: String, width: CGFloat, height: CGFloat, promptText: String, promptImage1: SFElement, promptImage2: SFElement, promptImage3: SFElement, showOptions: Binding<Bool>) {
        self.imageName = imageName
        self.width = width
        self.height = height
        self.promptText = promptText
        self.promptImage1 = promptImage1
        self.promptImage2 = promptImage2
        self.promptImage3 = promptImage3
        self._showOptions = showOptions
    }
    
    var body: some View {
        
        // Encapsulates everything
        VStack {
            
            // Prompt Text
            HStack {
                Spacer()
                Text(promptText)
                    .font(.system(size: 18))
                    .fontWeight(.heavy)
                    .fontDesign(.rounded)
                    .padding(6)
                    .scaleEffect(showOptions ? 1 : 0.5)
                    .opacity(showOptions ? 1 : 0)
                    .transition(.opacity)
                    .animation(.easeOut(duration: 0.25), value: showOptions)
                Spacer()
            }
            .frame(width: width * 2)
            .padding(10)
            
            // NavigationLink Images
            if (promptImage1 != nil) {
                HStack(spacing:35) {
                    NavigationLink(destination: EducationExterior())
                    {
                        promptImage1
                            .scaleEffect(showOptions ? 1 : 0.5)
                            .opacity(showOptions ? 1 : 0)
                            .transition(.opacity)
                            .animation(.easeOut(duration: 0.25), value: showOptions)
                    }
                    
                    if (promptImage2 != nil) {
                        NavigationLink(destination: EducationExterior())
                        {
                            promptImage2
                                .scaleEffect(showOptions ? 1 : 0.5)
                                .opacity(showOptions ? 1 : 0)
                                .transition(.opacity)
                                .animation(.easeOut(duration: 0.25), value: showOptions)
                        }
                    }
                    
                    if (promptImage3 != nil) {
                        NavigationLink(destination: EducationExterior())
                        {
                            promptImage3
                                .scaleEffect(showOptions ? 1 : 0.5)
                                .opacity(showOptions ? 1 : 0)
                                .transition(.opacity)
                                .animation(.easeOut(duration: 0.25), value: showOptions)
                        }
                    }
                }
                .frame(width: self.width + 100)
                .foregroundStyle(.white)
                .padding(10)
            }
            
            // Promptable Image
            Button { showOptions.toggle() }
            label: {
                SFElement(imageName: self.imageName, width: self.width, height: self.height)
            }
            .foregroundStyle(.white)
            .frame(width: self.width + 50)
            .padding(.top, 10)
        }

    }
}

#Preview {
    @State var bool = false
    return PopupPrompts(imageName: "gear", width: 100, height: 100, promptText: "Where to?", promptImage1: SFElement(imageName: "house.fill", width: 50, height: 40), promptImage2: SFElement(imageName: "pencil", width: 50, height: 50), showOptions: $bool)
}
