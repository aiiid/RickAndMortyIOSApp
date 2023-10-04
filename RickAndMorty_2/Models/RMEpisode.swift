//
//  RMEpisode.swift
//  RickAndMorty_2
//
//  Created by Ai Hawok on 01/10/2023.
//

import Foundation

struct RMEpisode: Codable{
    let id: String
    let name: String
    let air_date: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}
