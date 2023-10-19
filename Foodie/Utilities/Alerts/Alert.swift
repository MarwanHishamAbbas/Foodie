//
//  Alert.swift
//  Foodie
//
//  Created by Marwan Hisham on 18/10/2023.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}


struct AlertContext {
    static let invalidData = AlertItem(title: Text("Server Error"),
                                       message: Text("The data recived from the server was invalid. Please contact support"),
                                       dismissButton: .default(Text("Ok")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                       message: Text("Invalid response from the server. Please try again later"),
                                       dismissButton: .default(Text("Ok")))
    
    static let invalidURL = AlertItem(title: Text("Server Error"),
                                       message: Text("URL is invalid"),
                                       dismissButton: .default(Text("Ok")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                       message: Text("Something went wrong"),
                                       dismissButton: .default(Text("Ok")))
}
