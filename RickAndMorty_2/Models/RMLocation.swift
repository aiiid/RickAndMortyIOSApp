//
//  RMLocation.swift
//  RickAndMorty_2
//
//  Created by Ai Hawok on 01/10/2023.
//

import Foundation

struct RMLocation: Codable {
    let id: String
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
    
}
