//
//  ActorAPIResponse.swift
//  test-alamofire
//
//  Created by Haydee Rodriguez on 4/1/18.
//  Copyright © 2018 Haydee Rodriguez. All rights reserved.
//

import Foundation
import ObjectMapper

class ActorAPIResponse: Mappable {
    var actors: [Actor]?

    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        actors <- map["actors"]
    }
    
}

class Actor: Mappable {
    
    var name: String?
    var desc: String?
    var country: String?
    var spouse: String?
    var imageURL: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        name <- map["name"]
        desc <- map["description"]
        spouse <- map["spouse"]
        country <- map["country"]
        imageURL <- map["image"]
    }
}
