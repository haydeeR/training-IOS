//
//  MovieHandler.swift
//  MovieReview-Task
//
//  Created by Haydee Rodriguez on 4/3/18.
//  Copyright © 2018 Haydee Rodriguez. All rights reserved.
//

import Foundation
import Alamofire
import PromiseKit

struct MovieHandler {
   
    static func getReviews(page: Int) -> Promise<[MovieReview]> {
        return Promise { seal in
            Alamofire.request(MovieRouter.getReviews(page: page))
                .responseString(completionHandler: { (response) in
                switch response.result {
                case .success(let movieReviewsString):
                    print(movieReviewsString)
                    let movieResponse = MovieReviewResponse(JSONString: movieReviewsString)
                    seal.fulfill((movieResponse?.movies)!)
                case .failure:
                    seal.reject(response.error!)
                }
            })
        }
    }
}

