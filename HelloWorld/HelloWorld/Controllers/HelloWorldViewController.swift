//
//  ViewController.swift
//  HelloWorld
//
//  Created by Haydee Rodriguez on 4/4/18.
//  Copyright © 2018 Haydee Rodriguez. All rights reserved.
//

import UIKit

class HelloWorldViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sayHelloAction(_ sender: Any) {
        helloLabel.text = "Hello World"
    }
    
}

