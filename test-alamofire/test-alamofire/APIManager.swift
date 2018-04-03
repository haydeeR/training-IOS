//
//  APIManager.swift
//  test-alamofire
//
//  Created by Haydee Rodriguez on 4/1/18.
//  Copyright © 2018 Haydee Rodriguez. All rights reserved.
//

import Foundation
import Alamofire
import PromiseKit

class APIManager {
    
    static let _shared = APIManager()
    
    private init() {
        
    }
    
    func fetchActorsFromAPI() -> Promise<[Actor]> {
        return Promise { resolve in
             Alamofire.request(API_URL).responseString(completionHandler: { response in
                switch (response.result){
                case .success(let responseString):
                    print(responseString)
                    let actorResponse = ActorAPIResponse(JSONString: "\(responseString)")
                    resolve.fulfill((actorResponse?.actors!)!)
                case .failure(let error):
                    print(error)
                    resolve.reject(error)
                }
            })
        }
    }
    
}
