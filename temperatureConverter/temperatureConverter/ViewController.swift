//
//  ViewController.swift
//  temperatureConverter
//
//  Created by Haydee Rodriguez on 11/01/18.
//  Copyright © 2018 haydeeTi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var degreeTextField: UITextField!
    
    @IBOutlet var typeDegreeSegmentedControl: UISegmentedControl!
    
    @IBOutlet var resultLabel: UILabel!
    
    let unitFarenheit: Double = 33.8 //Grados C
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func pressButtonConvert(_ sender: UIButton) {
        let selectedIndex = typeDegreeSegmentedControl.selectedSegmentIndex
        //print(selectedIndex)
        let tempToConvert = Double(degreeTextField.text!)!
        
        if selectedIndex == 0 {
            let newTemp = tempToConvert - unitFarenheit
            showResultTemp(tempToConvert: tempToConvert, newTemp: newTemp, unitOrigen:"ºF", unitToConvert: "ºC")
        }else {
            let newTemp = tempToConvert - unitFarenheit
            showResultTemp(tempToConvert: tempToConvert, newTemp: newTemp, unitOrigen:"ºC", unitToConvert: "ºF")
        }
    }
    
    func showResultTemp(tempToConvert:Double, newTemp:Double, unitOrigen:String , unitToConvert:String){
        let initValue = String(format: "%.2f", tempToConvert)
        let endValue = String(format: "%.2f", newTemp)
        
        resultLabel.text = "\(initValue) \(unitOrigen) = \(endValue) \(unitToConvert)"
    }
}

