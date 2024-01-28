//
//  UserData.swift
//  SFriend
//
//  Created by Landon West on 1/27/24.
//

import Foundation
import SwiftData

@Model
class UserData {
    private var sparkles: Int
    
    init() {
        self.sparkles = 0
    }
    
    func numOfSparkles() -> Int {
        return sparkles
    }
    
    func incrementSparkles(amount: Int) {
        self.sparkles += amount
    }
    
    func decrementSparkles(amount: Int) {
        self.sparkles -= amount
    }
}
