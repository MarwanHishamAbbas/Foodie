//
//  Food.swift
//  Foodie
//
//  Created by Marwan Hisham on 18/10/2023.
//

import Foundation

struct Food: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct FoodResponse: Decodable {
    let request: [Food]
}

struct MockData {
    static let samplesFood = Food(id: 0001, name: "Food Name",
                                  description: "This is a description for this food item",
                                  price: 29.9,
                                  imageURL: "",
                                  calories: 99,
                                  protein: 99,
                                  carbs: 99)
    static let mockFoods = [samplesFood, samplesFood, samplesFood, samplesFood]
}
