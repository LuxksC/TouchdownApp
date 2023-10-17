//
//  Product.swift
//  Touchdown
//
//  Created by Lucas de Castro Souza on 16/10/23.
//

import Foundation
import SwiftUI

struct Product: Codable, Identifiable {
    let id: Int
    let name, image: String
    let price: Double
    let description: String
    let color: [Double]
    
    var formatedColor: Color {
        Color(red: color[0], green: color[1], blue: color[2])
    }
    
    var formatedPrice: String {
        "R$\(price)"
    }
}
