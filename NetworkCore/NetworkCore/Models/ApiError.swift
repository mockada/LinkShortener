//
//  ApiError.swift
//  Moov
//
//  Created by Jade Silveira on 01/12/21.
//

public enum ApiError: Error, Equatable {
    case urlParse
    case nilResponse
    case statusCode(code: StatusCode)
    case server(error: Error)
    case nilData
    case jsonParse
    case imageParse
    case generic
    
    public static func == (lhs: ApiError, rhs: ApiError) -> Bool {
        switch (lhs, rhs) {
        case (.urlParse, .urlParse),
            (.nilResponse, .nilResponse),
            (.nilData, .nilData),
            (.jsonParse, .jsonParse),
            (.imageParse, imageParse),
            (.generic, .generic),
            (.server, server):
            return true
        case let (.statusCode(lhsCode), .statusCode(rhsCode)):
            return lhsCode == rhsCode
        default:
            return false
        }
    }
}
