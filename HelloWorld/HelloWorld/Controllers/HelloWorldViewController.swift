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
    @IBOutlet weak var textFieldName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldName.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func sayHelloAction(_ sender: Any) {
        var greeting = "Hello "
        if let name = textFieldName.text {
            if !name.isEmpty {
                greeting = greeting + name
            }else {
                greeting = greeting + "World"
            }
        }
        helloLabel.text = greeting
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textFieldName.resignFirstResponder()
    }
}

extension HelloWorldViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textFieldName.endEditing(true)
        return true
    }
}

