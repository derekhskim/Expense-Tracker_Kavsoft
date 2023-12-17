//
//  OffsetKey.swift
//  ExpenseTracker
//
//  Created by Derek Kim on 2023-12-18.
//

import SwiftUI

struct OffsetKey: PreferenceKey {
    static var defaultValue: CGFloat = .zero
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
