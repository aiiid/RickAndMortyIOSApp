//
//  RMService.swift
//  RickAndMorty_2
//
//  Created by Ai Hawok on 04/10/2023.
//

import Foundation

//singleton accessible all over the app
//private init

/// PrimaryAPI service object to get RM data
final class RMService{
    /// Shared singleton instance
    static let shared = RMService()
    
    /// Privatized constuctor`
    private init(){}
    
    /// Execute API Request
    /// - Parameters:
    ///   - request: request instance
    ///   - type: the type of object we expect to get back
    ///   - completion: callbacak w data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void){
        
    }
}
