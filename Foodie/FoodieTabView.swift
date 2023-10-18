//
//  ContentView.swift
//  Foodie
//
//  Created by Marwan Hisham on 18/10/2023.
//

import SwiftUI

struct FoodieTabView: View {
    var body: some View {
        TabView {
            FoodListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
        }
        .accentColor(.brandPrimary)
    }
}

#Preview {
    FoodieTabView()
}
