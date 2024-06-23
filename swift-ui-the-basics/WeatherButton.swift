//
//  WeatherButton.swift
//  swift-ui-the-basics
//
//  Created by Bart Verstegen on 23/06/2024.
//

import SwiftUI

struct WeatherButton: View {
    var title: String
    var body: some View {
        Text(title)
            .frame(width: 200,height: 40)
            .background(Color.blue)
            .foregroundColor(Color.white)
            .font(.system(size: 20, weight: .medium))
            .cornerRadius(10)
    }
}
