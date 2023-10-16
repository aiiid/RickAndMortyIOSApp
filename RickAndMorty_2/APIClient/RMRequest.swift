//
//  RMRequest.swift
//  RickAndMorty_2
//
//  Created by Ai Hawok on 04/10/2023.
//

import Foundation

final class RMRequest{
    //Base url
    //Endpoint
    //Path component
    //query parameters
    
    /// API Constants
    private struct Constants {
        static let baseURL = "https://rickandmortyapi.com/api"
    }
    /// Desire endpoint
    private let endpoint: RMEndpoint
    
    /// Path component for API, if any
    private let pathComponents: [String]
    
    // Query args for API, if any
    private let queryParameters: [URLQueryItem]
    
    /// Constructed URL of API rquest in string format
    private var urlString: String{
        var string = Constants.baseURL
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty{
            string += "/"
            pathComponents.forEach({
                string += "/\($0)"
            })}
        if !queryParameters.isEmpty{
            string += "?"
            //name = value&name = value
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else {return nil}
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            string += argumentString
            }
        return string
    }
    
    /// Computed & constructed API url
    public var url: URL? {
        return URL(string: urlString)
    }
    /// Desired http method
    public let httpMethod = "GET"
    
    // MARK: - Public
    
    
    /// Construct request
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponents: Collection of Path components
    ///   - queryParameters: Collection of query parameters
    init(
        endpoint: RMEndpoint,
        pathComponents: [String] = [],
        queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
