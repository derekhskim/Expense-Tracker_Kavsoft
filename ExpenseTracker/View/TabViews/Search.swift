//
//  Search.swift
//  ExpenseTracker
//
//  Created by Derek Kim on 2023-12-10.
//

import SwiftUI

struct Search: View {
    /// View Properties
    @State private var searchText: String = ""
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                LazyVStack(spacing: 12) {
                    
                }
            }
            .overlay(content: {
                ContentUnavailableView("Search Transactions", systemImage: "magnifyingglass")
                    .opacity(searchText.isEmpty ? 1 : 0)
            })
            .onChange(of: searchText, { oldValue, newValue in
                print(searchText)
            })
            .searchable(text: $searchText)
            .autocorrectionDisabled()
            .navigationTitle("Search")
            .background(.gray.opacity(0.15))
        }
    }
}

#Preview {
    Search()
}
