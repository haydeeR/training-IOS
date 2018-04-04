//
//  MovieReview.swift
//  MovieReview-Task
//
//  Created by Haydee Rodriguez on 4/3/18.
//  Copyright © 2018 Haydee Rodriguez. All rights reserved.
//

import Foundation
import ObjectMapper

struct MovieReview: Mappable {
    var title = ""
    var thumbnailImage = ""
    var headline = ""
    var author = ""
    var summary = ""
    var release_date = ""
    var web_link_article = ""
    var web_link_related = ""
    
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        title <- map["display_title"]
        thumbnailImage <- map["multimedia.src"]
        headline <- map["headline"]
        author <- map["byline"]
        summary <- map["summary_short"]
        release_date <- map["opening_date"]
        web_link_article <- map["link.url"]
        web_link_related <- map["link.suggested_link_text"]

    }
    
    
}

