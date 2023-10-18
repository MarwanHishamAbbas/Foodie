//
//  FoodViewCell.swift
//  Foodie
//
//  Created by Marwan Hisham on 18/10/2023.
//

import SwiftUI

struct FoodViewCell: View {
    let food: Food
    var body: some View {
        HStack{
            Image("Image").resizable().aspectRatio(contentMode: .fit).clipShape(.buttonBorder).frame(width: 120, height: 90)
            VStack (alignment: .leading, spacing: 5) {
                Text(food.name).font(.title2).fontWeight(.medium)
                Text("$\(food.price, specifier: "%.2f")").font(.body).foregroundStyle(.secondary).fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    FoodViewCell(food: MockData.samplesFood)
}
