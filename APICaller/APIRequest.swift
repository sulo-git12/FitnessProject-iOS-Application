//
//  Request.swift
//  Epicurious Chef
//
//  Created by Sulo Mac on 2/20/23.
//

import Foundation

final class APIRequest {
    
    static let shared = APIRequest()
    private let BaseAPIURL = "https://fitnessiosproject.onrender.com/api/"
    
    enum APIError: Error{
        case failedToCreateRequest
        case failedToGetData
    }
    
    // MARK: - Get  EXCERCISES
    public func getExcercisers(endpoint: String, completion: @escaping (Result<[ExerciseModel], Error>) -> Void) {
        print(BaseAPIURL + endpoint)
        createRequest(with: URL(string: BaseAPIURL + endpoint), type: .GET) {
            request in
            
            let task = URLSession.shared.dataTask(with: request) {
                data, response, error in
                
                guard let data = data, error == nil else{
                    completion(.failure(error ?? APIError.failedToGetData))
                    return
                }
                
                do{
                    let result = try JSONDecoder().decode([ExerciseModel].self, from: data)
                    completion(.success(result))
                }
                catch{
                    completion(.failure(error))
                }
            }
            task.resume()
        }
        
    }
    
    
    // MARK: - Create API Request Section
    
    enum HTTPMethod: String{
        case GET
        case POST
        case DELETE
    }
    
    private func createRequest(
        with url: URL?,
        type: HTTPMethod,
        completion: @escaping (URLRequest) -> Void) {
            
            guard let apiURL = url else {
                return
            }
            
            var request = URLRequest(url: apiURL)
            request.httpMethod = type.rawValue
            request.timeoutInterval = 30
            completion(request)
        }
    
}
