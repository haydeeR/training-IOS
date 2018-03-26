//
//  ViewController.swift
//  helloWorld
//
//  Created by Haydee Rodriguez on 01/01/18.
//  Copyright © 2018 haydeeTi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func helloAction(_ sender: UIButton) {
        //print("Hello World!")
        let alert : UIAlertController = UIAlertController (title: "Hello World!", message: "Hey this is training for IOS Welcome", preferredStyle: .alert)
        let okAction : UIAlertAction = UIAlertAction (title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert,animated: true,completion: nil)
    }
    
}

