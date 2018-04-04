//
//  MovieReviewResponse.swift
//  MovieReview-Task
//
//  Created by Haydee Rodriguez on 4/3/18.
//  Copyright © 2018 Haydee Rodriguez. All rights reserved.
//

import Foundation
import ObjectMapper

struct MovieReviewResponse: Mappable {
    
    var movies: [MovieReview]?

    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        movies <- map["results"]
    }
    
}
