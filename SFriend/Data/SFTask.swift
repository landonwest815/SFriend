//
//  SFTask.swift
//  SFriend
//
//  Created by Landon West on 1/29/24.
//

import Foundation
import SwiftData

@Model
class SFTask {
    var taskDescription: String
    var taskReward: Int
    var isCompleted: Bool
    var lastCompletedDate: Date?
    
    init(taskDescription: String, taskReward: Int) {
        self.taskDescription = taskDescription
        self.taskReward = taskReward
        self.isCompleted = false
    }
    
    func completeTask() {
        self.isCompleted = true
        self.lastCompletedDate = Date()
    }
}
