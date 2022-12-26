//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Mohammad Bitar on 12/26/22.
//

import UIKit

/// Controller to show and search characters
final class RMCharacterViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        let request = RMRequest(
            endpoint: .character,
            queryParameters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive")
            ])
        
        RMService.shared.execute(request, expecting: RMCharacter.self) { result in
            switch result {
            case let .success(character): break
            case let .failure(error):
                break
            }
        }
    }
    
}
