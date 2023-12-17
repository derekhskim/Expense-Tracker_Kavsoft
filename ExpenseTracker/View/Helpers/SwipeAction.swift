//
//  SwipeAction.swift
//  ExpenseTracker
//
//  Created by Derek Kim on 2023-12-16.
//

import SwiftUI

struct SwipeAction<Content: View>: View {
    @ViewBuilder var content: Content
    var body: some View {
        ScrollViewReader { scrollProxy in
            ScrollView(.horizontal) {
                LazyHStack(spacing: 0) {
                    content
                        .containerRelativeFrame(.horizontal)
                }
                .scrollTargetLayout()
            }
            .scrollIndicators(.hidden)
            .scrollTargetBehavior(.viewAligned)
            
        }
    }
}

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

#Preview {
    SwipeAction()
}
