//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Mohammad Bitar on 12/26/22.
//

import Foundation

/// Object that  represent a single api call
class RMRequest {
    /// API Constant
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired Endpoint
    private let endpoint: RMEndpoint
    
    /// Path component for APi, if  any
    private let pathComponents: Set<String>
    
    /// Query Argument for APi, if  any
    private let queryParameters: [URLQueryItem]
    
    /// Constructed url for the api request in string format
    private var urlString: String  {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach { string += "/\($0)"}
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else {  return nil }
                return  "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    ///Computed & constructed API url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// Desired HTTP Method
    public let httpMethod = "GET"
    
    // MARK: - Public
    
    /// Constructed request
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponents: Collection of path component
    ///   - queryParameters: Collection of query parameters
    init(
        endpoint: RMEndpoint,
        pathComponents: Set<String> = [],
        queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
