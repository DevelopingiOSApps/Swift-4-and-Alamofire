//
//  BackendError.swift
//  GetTheGist
//
//  Created by Salvatore Castelluccio on 7/3/18.
//  Copyright © 2018 Salvatore Castelluccio. All rights reserved.
//

import Foundation

enum BackendError: Error {
    case network(error: Error)
    case unexpectedResponse(reason: String)
    case parsing(error: Error)
    case apiProvidedError(reason: String)
    case authCouldNot(reason: String)
    case authLost(reason: String)
    case missingRequiredInput(reason: String)
}

struct APIProvidedError: Codable {
    let message: String
}
