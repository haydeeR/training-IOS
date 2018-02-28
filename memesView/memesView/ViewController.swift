//
//  ViewController.swift
//  memesView
//
//  Created by Haydee Rodriguez on 18/01/18.
//  Copyright © 2018 haydeeTi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var giftImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //https://gph.is/1WgKoqS
        let gifURL : String = "https://gph.is/1WgKoqS"
        giftImage.loadGif(url: gifURL)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

