//
//  FoodListViewModel.swift
//  Foodie
//
//  Created by Marwan Hisham on 18/10/2023.
//

import Foundation

final class FoodListViewModel: ObservableObject {
    @Published var foods: [Food] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading: Bool = false
    
    func getFoods (){
        isLoading = true
        NetworkManager.shared.getFoods {result in
            DispatchQueue.main.async { [self] in
                isLoading = false
                switch result {
                case .success(let foods):
                    self.foods = foods
                    
                case .failure(let error):
                    switch error {
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                        
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                        
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                        
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
}
