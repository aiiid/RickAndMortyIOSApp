//
//  RMCharacter.swift
//  RickAndMorty_2
//
//  Created by Ai Hawok on 01/10/2023.
//

import Foundation

struct RMCharacter{
    let id: String
    let name: String
    let status: RMCharacterStatus
    let species: String
    let type: String
    let gender: RMCharacterGender
    let origin: RMCharacterOrigin
    let location: RMSingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
}
