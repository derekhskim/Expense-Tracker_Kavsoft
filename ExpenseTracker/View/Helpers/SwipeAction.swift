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

#Preview {
    SwipeAction()
}
