//
//  WebPath.swift
//  APITest
//
//  Created by RAMESHUZ on 25/04/24.
//

import Foundation

enum WebPath: String {
    
    static let BASE_URL = "https://jsonplaceholder.typicode.com"
       
    case posts
    
    var endPoint: String{
        switch self {
        case.posts:
            return "/posts"
        }
    }
    
    var path: String {
        return WebPath.BASE_URL + endPoint
    }
}
