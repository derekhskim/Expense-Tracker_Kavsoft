//
//  Recents.swift
//  ExpenseTracker
//
//  Created by Derek Kim on 2023-12-10.
//

import SwiftUI

struct Recents: View {
    var body: some View {
        GeometryReader {
            /// For Animation Purpose
            let size = $0.size
            
            NavigationStack {
                ScrollView(.vertical) {
                    LazyVStack(spacing: 10, pinnedViews: [.sectionHeaders]) {    
                        Section {
                            
                        } header: {
                            HeaderView(size)
                        }
                    }
                }
            }
        }
    }
    
    /// Header View
    @ViewBuilder
    func HeaderView(_ size: CGSize) -> some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("Welcome")
                .font(.title.bold())
        }
        .hSpacing(.leading)
        .background {
            Rectangle()
                .padding(.horizontal, -15)
        }
    }
}

#Preview {
    ContentView()
}
