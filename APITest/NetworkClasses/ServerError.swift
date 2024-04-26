//
//  ServerError.swift
//  APITest
//
//  Created by RAMESHUZ on 25/04/24.
//

import Foundation

//Possible errors we can encounter
enum NetworkError: Error {

    case domainError
    case decodingError
    case responseError
    case encodingError
}

