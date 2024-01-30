//
//  SFTaskComponent.swift
//  SFriend
//
//  Created by Landon West on 1/29/24.
//

import SwiftUI

enum TaskTypes {
    case OneWayImageReplacement
}

struct SFTaskComponent: View {
    
    var element: SFElement
    var task: String
    var taskType: TaskTypes
    
    init(element: SFElement, task: String, taskType: TaskTypes) {
        self.element = element
        self.task = task
        self.taskType = taskType
    }
    
    var body: some View {
        Text("test")
    }
}

#Preview {
    SFTaskComponent(element: SFElement(imageName: "house", width: 50, height: 40), task: "Make your bed", taskType: .OneWayImageReplacement)
}
