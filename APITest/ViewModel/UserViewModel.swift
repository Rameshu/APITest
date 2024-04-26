//
//  UserViewModel.swift
//  APITest
//
//  Created by RAMESHUZ on 25/04/24.
//

import Foundation

// ViewModel
class UserViewModel {

    var user: [User]?
    func getUser(completion: @escaping (Bool, String) -> Void) {
        APIManager.fetchData([User.self], url: URL(string: WebPath.posts.path)!) { result in
            switch result {
            case .success(let data):
                // Handle successful data retrieval
                self.user = data
                completion(true, "")
            case .failure(let error):
                // Handle error
                print("Error: \(error)")
                completion(false, error.localizedDescription)
            }
        }
    }

}

