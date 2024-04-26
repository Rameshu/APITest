//
//  APIManager.swift
//  APITest
//
//  Created by RAMESHUZ on 25/04/24.
//

import Foundation

// API Manager
class APIManager {

    //MARK: Get Request
    class func fetchData<T: Codable>(_ type: [T.Type], url: URL, completion: @escaping (Result<[T], NetworkError>) -> Void) {
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                if let error = error {
                    completion(.failure(error as! NetworkError))
                    return
                }
                guard let data = data else {
                    _ = NSError(domain: "DataError", code: -1, userInfo: [NSLocalizedDescriptionKey: "No data received"])
                    completion(.failure(.responseError))
                    return
                }                
                if let model = try? JSONDecoder().decode([T].self, from: data) {
                    completion(.success(model))
                } else {
                    completion(.failure(.decodingError))
                }

            }.resume()
        }
    
}
