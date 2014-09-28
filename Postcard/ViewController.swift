//
//  ViewController.swift
//  Postcard
//
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nameLabel: UILabel!

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var sendMessageButton: UIButton!
    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        nameLabel.textColor = UIColor.blueColor()
        nameLabel.hidden = false;
        nameLabel.text = enterNameTextField.text
        
        messageLabel.textColor = UIColor.greenColor()
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        // set the title
        sendMessageButton.setTitle("Message Sent", forState: UIControlState.Normal)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        enterMessageTextField.delegate = self
        enterNameTextField.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        enterMessageTextField.resignFirstResponder()
        enterNameTextField.resignFirstResponder()
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

