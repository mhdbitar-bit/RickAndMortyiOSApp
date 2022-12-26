//
//  RMService.swift
//  RickAndMorty
//
//  Created by Mohammad Bitar on 12/26/22.
//

import Foundation

final class RMService {
    static let shared = RMService()
    
    private init() {}
    
    public func execute(_ request: RMRequest, completion: () -> Void) {
        
    }
}
