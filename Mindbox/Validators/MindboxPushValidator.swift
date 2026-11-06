//
//  MindboxPushValidator.swift
//  Mindbox
//
//  Created by vailence on 09.02.2024.
//  Copyright © 2024 Mindbox. All rights reserved.
//

import Foundation
import UserNotifications
import MindboxLogger

class MindboxPushValidator: Validator {

    typealias T = [AnyHashable: Any]

    func isValid(item: [AnyHashable: Any]) -> Bool {
        guard NotificationFormatter.formatNotification(item) != nil else {
            Logger.common(message: "MindboxPushValidator: Failed to convert item to Maestra push model. Validation failed.", level: .error, category: .notification)
            return false
        }

        Logger.common(message: "MindboxPushValidator: Successfully validated Maestra push model.", level: .info, category: .notification)
        return true
    }
}
