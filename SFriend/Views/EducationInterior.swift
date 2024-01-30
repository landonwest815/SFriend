//
//  EducationInterior.swift
//  SFriend
//
//  Created by Landon West on 1/26/24.
//

import SwiftUI

struct EducationInterior: View {
    
    @Environment(\.dismiss) var dismiss

    var body: some View {
        
            ZStack {
                ScrollViewReader { value in
                    ScrollView(.horizontal, showsIndicators: false) {
                        VStack {
                            HStack(alignment: .bottom, spacing: 50) {
                                
                                VStack(spacing:5) {
                                   
                                    // Desk + Chair
                                    ZStack {
                                        
                                        // Chair
                                        VStack {
                                            Spacer() // keep on floor
                                            SFElement(imageName: "chair.fill", width: 60, height: 85)
                                        }
                                        
                                        // Desk + Items on desk
                                        VStack(spacing:3) {
                                            Spacer() // keep everything on floor
                                            
                                            HStack(alignment: .bottom) {
                                                
                                                SFElement(imageName: "globe.desk.fill", width: 50, height: 50)
                                               
                                                Spacer() // each side of desk
                                        
                                                SFElement(imageName: "archivebox.fill", width: 35, height: 25)
                                            }
                                            .frame(width: 160) // same width as desk - 15
                                            
                                            // Teacher's Desk
                                            SFElement(imageName: "table.furniture.fill", width: 175, height: 75)
                                                .fontWeight(.thin)
                                        }
                                    }
                                }
                                
                                // Chalkboard + Desks
                                VStack(spacing:25) {
                                    
                                    // Chalkboard
                                    ZStack {
                                        SFElement(imageName: "light.panel.fill", width: 250, height: 125)
                                            .fontWeight(.thin)
                                        
                                        // chalkboard equation
                                        HStack {
                                            SFElement(imageName: "function", width: 50, height: 25)
                                            
                                            SFElement(imageName: "equal", width: 15, height: 10)
                                            
                                            SFElement(imageName: "x.squareroot", width: 35, height: 25)
                                        }
                                        .foregroundStyle(.black) // make the text appear
                                    }
                                    
                                    // Desks
                                    HStack(spacing:25) {
                                        ForEach(1...3, id: \.self) { i in
                                            SFElement(imageName: "studentdesk", width: 85, height: 85)
                                        }
                                    }
                                }
                                    
                                // Window
                                VStack {
                                    Spacer()  //spacers for getting the height right
                                    Spacer()
                                    Spacer()
                                    
                                    SFElement(imageName: "window.vertical.closed", width: 110, height: 100)
                                    
                                    Spacer()
                                }
                                
                                // Exit Door
                                SFClickable(image: SFElement(imageName: "door.left.hand.open", width: 100, height: 150), actionOption: .dismiss)
                                
                                SFElement(imageName: "trash.fill", width: 55, height: 70)
                                    .id(1)
                            }
                            
                            // Floor
                            SFElement(imageName: "square.fill", width: 1100, height: 25)
                        }
                        .frame(height: 400)
                        .onAppear() {
                            value.scrollTo(1)
                        }
                    }
                }
            }
            .navigationBarBackButtonHidden()
            .preferredColorScheme(.dark)
        }
    
}

#Preview {
    EducationInterior()
}
