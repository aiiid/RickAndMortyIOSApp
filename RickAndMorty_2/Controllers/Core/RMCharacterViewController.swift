//
//  ViewController.swift
//  RickAndMorty_2
//
//  Created by Ai Hawok on 01/10/2023.
//

import UIKit

final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Character"
        
        let request = RMRequest(endpoint: .character,
        queryParameters: [
        URLQueryItem(name: "name", value: "rick"),
        URLQueryItem(name: "status", value: "alive")])
        print(request.url)
        
        RMService.shared.execute(request, expecting: RMCharacter.self) result in
                                 switch result{
            
        })
    }
    

}
