//
//  Event.swift
//  sicrediTest
//
//  Created by Rita de Cássia Vasconcelos do Nascimento on 19/05/21.
//

import Foundation

struct Root: Codable {
    let evento: [Event]
}

struct Event: Codable {
    let id: String
    let description: String
    let image: String
    let logitude: Int
    let latitude: Int
    let price: Double
}
