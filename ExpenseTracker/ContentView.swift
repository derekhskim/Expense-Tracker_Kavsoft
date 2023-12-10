//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by Derek Kim on 2023-12-11.
//

import SwiftUI

struct ContentView: View {
    /// Intro Visibility Status
    @AppStorage("isFirstTime") private var isFirstTime = true
    /// Active Tab
    @State private var activeTab: Tab = .recents
    var body: some View {
        TabView(selection: $activeTab) {
            Text(Tab.recents.rawValue)
                .tag(Tab.recents)
                .tabItem { Tab.recents.tabContent }
            
            Text(Tab.search.rawValue)
                .tag(Tab.search)
                .tabItem { Tab.search.tabContent }
            
            Text(Tab.charts.rawValue)
                .tag(Tab.charts)
                .tabItem { Tab.charts.tabContent }
            
            Text(Tab.settings.rawValue)
                .tag(Tab.settings)
                .tabItem { Tab.settings.tabContent }
        }
        .sheet(isPresented: $isFirstTime, content: {
            IntroScreen()
                .interactiveDismissDisabled()
        })
    }
}

#Preview {
    ContentView()
}
