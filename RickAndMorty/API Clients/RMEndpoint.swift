//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Mohammad Bitar on 12/26/22.
//

import Foundation

/// Represent unique api endpoints
@frozen enum RMEndpoint: String {
    /// Endpoint to get character info
    case character
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}
