//
//  ViewController.swift
//  Binary Calculator
//
//  Created by student3 on 2/23/17.
//  Copyright © 2017 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var decimalTextField: UITextField!
    @IBOutlet weak var displayLabel: UILabel!
    var binaryArray = [128,64,32,16,8,4,2,1]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDecimal(_ sender: AnyObject) {
        var decimal = Int(decimalTextField.text!)
        var text = ""
        for i in 0..<binaryArray.count{
            if decimal! >= binaryArray[i]{
                decimal! -= binaryArray[i]
                text += "1 "
            
        }
            else{
                text += "0 "
            }
            displayLabel.text = text

}

}
}
