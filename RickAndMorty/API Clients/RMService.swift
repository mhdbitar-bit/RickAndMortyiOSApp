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
    ///   - type: The type of object we expect to get back
    ///   - completion: Callback with data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void
    ) {
        
    }
}
