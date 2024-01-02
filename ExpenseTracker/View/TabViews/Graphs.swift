//
//  Graphs.swift
//  ExpenseTracker
//
//  Created by Derek Kim on 2023-12-10.
//

import SwiftUI
import Charts
import SwiftData

struct Graphs: View {
    /// View Properties
    @Query(animation: .snappy) private var transactions: [Transaction]
    @State private var chartGroups: [ChartGroup] = []
    var body: some View {
        ScrollView(.vertical) {
            LazyVStack(spacing: 10) {
                /// Chart View
                Chart {
                    ForEach(chartGroups) { group in
                        ForEach(group.categories) { chart in
                            BarMark(
                                x: .value("Month", format(date: group.date, format: "MMM yy")),
                                y: .value(chart.category.rawValue, chart.totalValue),
                                width: 20
                            )
                            .position(by: .value("Category", chart.category.rawValue), axis: .horizontal)
                            .foregroundStyle(by: .value("Category", chart.category.rawValue))
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    Graphs()
}
