//
//  MovieRouter.swift
//  MovieReview-Task
//
//  Created by Haydee Rodriguez on 4/3/18.
//  Copyright © 2018 Haydee Rodriguez. All rights reserved.
//

import Foundation
import Alamofire

enum MovieRouter: URLRequestConvertible {
    
    case getReviews(page: Int)
    
    var route: String {
        switch self {
        case .getReviews:
            return "reviews/dvd-picks.json"
        }
    }
    
    var method: HTTPMethod {
        switch self {
        case .getReviews:
            return .get
        }
    }
    
    var parameters: [String:Any]{
        switch self {
        case .getReviews(let page):
            return ["offset": page, "api-key": MovieManager.key]
        }
    }
    
    func asURLRequest() throws -> URLRequest {
        let url = try MovieManager.baseUrl.asURL()
        var urlRequest = URLRequest(url: url.appendingPathComponent(route))
        urlRequest.httpMethod = method.rawValue
        return try URLEncoding.methodDependent.encode(urlRequest, with: parameters)
    }
    
}
