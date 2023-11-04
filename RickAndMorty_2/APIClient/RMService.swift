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
    
    enum RMServiceError: Error{
        case failedToCreateRequest
        case failedToGetData
    }
    
    /// Execute API Request
    /// - Parameters:
    ///   - request: request instance
    ///   - type: the type of object we expect to get back
    ///   - completion: callbacak w data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void){
            //1. create request
            guard let request = self.request(from: request) else {
                completion(.failure(RMServiceError.failedToCreateRequest))
                return
            }
            //2. create task
            let task = URLSession.shared.dataTask(with: request) { data, _, error in
                guard let data = data, error == nil else {
                    completion(.failure(RMServiceError.failedToGetData))
                    return
                }
                //3. decode data
                
                do{
                    let json = try JSONSerialization.jsonObject(with: data)
                    print(json)
                }catch{
                    completion(.failure(error))
                }
            }
            //4. resume task
            task.resume()
            
            
        
    }
    
    private func request(from rmRequest: RMRequest) -> URLRequest? {
        guard let url = rmRequest.url else {return nil}
        var request = URLRequest(url: url)
        request.httpMethod = rmRequest.httpMethod
        return request
    }
}
