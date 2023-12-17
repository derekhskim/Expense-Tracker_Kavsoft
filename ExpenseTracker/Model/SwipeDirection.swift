//
//  SwipeDirection.swift
//  ExpenseTracker
//
//  Created by Derek Kim on 2023-12-17.
//

import SwiftUI

/// Swipe Direction
enum SwipeDirection {
    case leading
    case trailing
    
    var alignment: Alignment {
        switch self {
        case .leading:
            return .leading
        case .trailing:
            return .trailing
        }
    }
}
