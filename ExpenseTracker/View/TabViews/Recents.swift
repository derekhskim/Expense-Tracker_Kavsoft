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
                            
                        }
                    }
                }
            }
        }
    }
    
    /// Header View
    
}

#Preview {
    ContentView()
}
