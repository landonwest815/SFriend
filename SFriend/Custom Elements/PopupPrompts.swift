//
//  PopupPrompts.swift
//  SFriend
//
//  Created by Landon West on 1/27/24.
//

import SwiftUI

struct PopupPrompts: View {

    var image: SFElement
    var promptText: String
    var promptImage1: SFElement?
    var promptImage2: SFElement?
    var promptImage3: SFElement?
    
    @Binding var showOptions: Bool
    
    // Basic text prompt
    init(image: SFElement, promptText: String, showOptions: Binding<Bool>) {
        self.image = image
        self.promptText = promptText
        self._showOptions = showOptions
    }
    
    // 1 Image Button
    init(image: SFElement, promptText: String, promptImage1: SFElement, showOptions: Binding<Bool>) {
        self.image = image
        self.promptText = promptText
        self.promptImage1 = promptImage1
        self._showOptions = showOptions
    }
    
    // 2 Image Buttons
    init(image: SFElement, promptText: String, promptImage1: SFElement, promptImage2: SFElement, showOptions: Binding<Bool>) {
        self.image = image
        self.promptText = promptText
        self.promptImage1 = promptImage1
        self.promptImage2 = promptImage2
        self._showOptions = showOptions
    }
    
    // 3 Image Buttons
    init(image: SFElement, promptText: String, promptImage1: SFElement, promptImage2: SFElement, promptImage3: SFElement, showOptions: Binding<Bool>) {
        self.image = image
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
                    .multilineTextAlignment(.center)
                    .padding(6)
                    .scaleEffect(showOptions ? 1 : 0.5)
                    .opacity(showOptions ? 1 : 0)
                    .transition(.opacity)
                    .animation(.easeOut(duration: 0.25), value: showOptions)
                Spacer()
            }
            .frame(width: image.width * 2.5)
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
                .frame(width: self.image.width + 50)
                .foregroundStyle(.white)
                .padding(10)
            }
            
            // Promptable Image
            Button { showOptions.toggle() }
            label: {
                image
            }
            .foregroundStyle(.white)
            .frame(width: self.image.width + 50)
            .padding(.top, 10)
        }

    }
}

#Preview {
    @State var bool = false
    return PopupPrompts(image: SFElement(imageName: "gear", width: 100, height: 100), promptText: "Where to?", promptImage1: SFElement(imageName: "house.fill", width: 50, height: 40), promptImage2: SFElement(imageName: "pencil", width: 50, height: 50), showOptions: $bool)
}
