//
//  HapticManager.swift
//  Cryptonos
//
//  Created by Христиченко Александр on 2023-02-14.
//

import Foundation
import SwiftUI

class HapticManager {
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
