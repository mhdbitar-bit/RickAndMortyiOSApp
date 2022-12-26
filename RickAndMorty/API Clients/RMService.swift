//
//  RMService.swift
//  RickAndMorty
//
//  Created by Mohammad Bitar on 12/26/22.
//

import Foundation

/// Primary API service object to  get Rick and Morty data
final class RMService {
    /// Shared singleton
    static let shared = RMService()
    
    /// Privatized constructor
    private init() {}
    
    /// Send Rick and Morty api call
    /// - Parameters:
    ///   - request: Request instance
    ///   - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}
