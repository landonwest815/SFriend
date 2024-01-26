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
    case toggleWithAnimation
}

struct SFElement: View {
    @Environment(\.dismiss) var dismiss
    
    let imageName: String
    let width: CGFloat
    let height: CGFloat
    var isButton: Bool = false
    @State var toggle: Bool = false
    var actionOption: ButtonActionOption = .noAction

    
    init(imageName: String, width: CGFloat, height: CGFloat) {
        self.imageName = imageName
        self.width = width
        self.height = height
    }
    
    init(imageName: String, width: CGFloat, height: CGFloat, actionOption: ButtonActionOption) {
        self.imageName = imageName
        self.width = width
        self.height = height
        self.isButton = true
        self.actionOption = actionOption
    }
    
    var body: some View {
        ZStack {
            if isButton {
                Button(action: {
                    performAction(for: actionOption)
                }) {
                Image(systemName: imageName)
                    .resizable()
                    .frame(width: width, height: height)
                    .foregroundStyle(.white)
                }
            } else {
                Image(systemName: imageName)
                    .resizable()
                    .frame(width: width, height: height)
            }
        }
        .preferredColorScheme(.dark)
    }
    
    private func performAction(for option: ButtonActionOption) {
            switch option {
                
            case .noAction:
                print("")
                
            case .dismiss:
                dismiss()
                
            case .toggle:
                print("")
                
            case .toggleWithAnimation:
                print("")

            }
        }
}

#Preview {
    SFElement(imageName: "house.fill", width: 50, height: 40)
}
