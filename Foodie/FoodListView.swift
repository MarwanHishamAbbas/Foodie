//
//  FoodListView.swift
//  Foodie
//
//  Created by Marwan Hisham on 18/10/2023.
//

import SwiftUI

struct FoodListView: View {
    @StateObject var viewModel = FoodListViewModel()
    
    var body: some View {
        ZStack {
            NavigationView  {
                List(viewModel.foods) {
                    food in
                    FoodViewCell(food: food)
                }.listRowSpacing(10)
                .navigationTitle("Foodie")
            }
            .onAppear {
                viewModel.getFoods()
            }
            if viewModel.isLoading {
                LoadingView()
            }
        }.alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    FoodListView()
}
