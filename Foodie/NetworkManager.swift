//
//  NetworkManager.swift
//  Foodie
//
//  Created by Marwan Hisham on 18/10/2023.
//

import Foundation

final class NetworkManager {
    static let shared = NetworkManager()
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    private let foodURL = baseURL + "appetizers"
    
    private init() {}
    func getFoods(completed: @escaping (Result<[Food], FoodError>) -> Void){
        guard let url = URL(string: foodURL) else {
            completed(.failure(.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            do {
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(FoodResponse.self, from: data)
                completed(.success(decodedResponse.request))
            }
            catch {
                completed(.failure(.invalidData))
            }
        }
        task.resume()
    }
}
