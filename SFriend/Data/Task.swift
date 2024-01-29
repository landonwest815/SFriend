//
//  Task.swift
//  SFriend
//
//  Created by Landon West on 1/29/24.
//

import Foundation
import SwiftData

@Model
class Task {
    @Attribute(.unique) var id: UUID
    var description: String
    var isCompleted: Bool
}
