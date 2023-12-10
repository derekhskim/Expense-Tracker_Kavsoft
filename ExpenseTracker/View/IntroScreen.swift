//
//  IntroScreen.swift
//  ExpenseTracker
//
//  Created by Derek Kim on 2023-12-09.
//

import SwiftUI

struct IntroScreen: View {
    /// Visibility Status
    @AppStorage("isFirstTime") private var isFirstTime = false
    var body: some View {
        VStack(spacing: 15) {
            Text("What's New in the\nExpense Tracker")
                .font(.largeTitle.bold())
                .multilineTextAlignment(.center)
                .padding(.top, 65)
                .padding(.bottom, 35)
            
            VStack(alignment: .leading, spacing: 25) {
                pointView(symbol: "dollarsign", title: "Transactions", subTitle: "Keep track of your earnings and expenses.")
                
                pointView(symbol: "chart.bar.fill", title: "Visual Charts", subTitle: "View your transactions using eye-catching graphic representations.")
                
                pointView(symbol: "magnifyingglass", title: "Advance Filters", subTitle: "Find the expenses you want by advance search and filtering.")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 15)
            
            Spacer(minLength: 10)
            
            Button(action: {
                isFirstTime = true
            }, label: {
                Text("Continue")
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 14)
                    .background(appTint.gradient, in: .rect(cornerRadius: 12))
                    .contentShape(.rect)
            })
        }
        .padding(15)
    }
    
    /// Points View
    @ViewBuilder
    func pointView(symbol: String, title: String, subTitle: String) -> some View {
        HStack(spacing: 15) {
            Image(systemName: symbol)
                .font(.largeTitle)
                .foregroundStyle(appTint.gradient)
                .frame(width: 45)
            
            VStack(alignment: .leading, spacing: 6) {
                Text(title)
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Text(subTitle)
                    .foregroundStyle(.gray)
            }
        }
    }
}

#Preview {
    IntroScreen()
}
