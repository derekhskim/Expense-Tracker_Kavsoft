//
//  Action.swift
//  ExpenseTracker
//
//  Created by Derek Kim on 2023-12-17.
//

import SwiftUI

/// Action Model
struct Action: Identifiable {
    private(set) var id: UUID = .init()
    var tint: Color
    var icon: String
    var iconFont: Font = .title
    var iconTint: Color = .white
    var isEnabled: Bool = true
    var action: () -> ()
}
