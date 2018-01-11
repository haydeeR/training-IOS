//
//  ViewController.swift
//  helloWorld
//
//  Created by Haydee Rodriguez on 01/01/18.
//  Copyright © 2018 haydeeTi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var userNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        greetingLabel.text = ""
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
        //In this linea the username is a optional so we need a simbol ! to use the username text
        //There is not a good idea but in this case we use 
        let username = userNameTextField.text!
        greetingLabel.text = "Hola \(username)!"
    }
    
}

