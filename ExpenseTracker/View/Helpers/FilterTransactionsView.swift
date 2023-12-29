//
//  FilterTransactionsView.swift
//  ExpenseTracker
//
//  Created by Derek Kim on 2023-12-28.
//

import SwiftUI
import SwiftData

/// Custom View
struct FilterTransactionsView<Content: View>: View {
    var content: ([Transaction]) -> Content
    
    @Query(animation: .snappy) private var transactions: [Transaction]
    init(category: Category?, searchText: String) {
        /// Custom Predicate
        let predicate = #Predicate<Transaction> { transaction in
            return transaction.title.localizedStandardContains(searchText) || transaction.remarks.localizedStandardContains(searchText)
        }
    }
    
    var body: some View {
        content(transactions)
    }
}
