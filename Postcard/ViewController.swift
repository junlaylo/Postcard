//
//  ViewController.swift
//  Postcard
//
//  Created by Jacky Poon on 2014-09-16.
//  Copyright (c) 2014 jacsdev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var sendMessageButton: UIButton!
    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.textColor = UIColor.greenColor()
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        sendMessageButton.setTitle("Message Sent", forState: UIControlState.Normal)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

