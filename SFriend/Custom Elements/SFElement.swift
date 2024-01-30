//
//  SFElement.swift
//  SFriend
//
//  Created by Landon West on 1/26/24.
//

import SwiftUI
import SwiftData

struct SFElement: View {
    
    let imageName: String
    let imageName2: String
    
    let width: CGFloat
    let height: CGFloat
    
    var opacity: CGFloat = 1.0
    
    // Simple Image
    init(imageName: String, width: CGFloat, height: CGFloat) {
        self.imageName = imageName
        self.imageName2 = ""
        self.width = width
        self.height = height
    }
    
    // Two Images
    init(imageName: String, imageName2: String, width: CGFloat, height: CGFloat) {
        self.imageName = imageName
        self.imageName2 = imageName2
        self.width = width
        self.height = height
    }
    
    // Simple Image + Opacity
    init(imageName: String, width: CGFloat, height: CGFloat, opacity: CGFloat) {
        self.imageName = imageName
        self.imageName2 = ""
        self.width = width
        self.height = height
        self.opacity = opacity
    }
    
    // Two Images + Opacity
    init(imageName: String, imageName2: String, width: CGFloat, height: CGFloat, opacity: CGFloat) {
        self.imageName = imageName
        self.imageName2 = imageName2
        self.width = width
        self.height = height
        self.opacity = opacity
    }
    
    var body: some View {
        ZStack {
            Image(systemName: imageName)
                .resizable()
                .frame(width: width, height: height)
                .opacity(opacity)
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    SFElement(imageName: "house", width: 50, height: 40, opacity: 0.5)
}
