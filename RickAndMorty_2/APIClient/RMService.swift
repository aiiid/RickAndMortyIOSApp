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
    ///   - completion: callbacak w data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void){
        
    }
}
