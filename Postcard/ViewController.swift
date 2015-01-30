//
//  ViewController.swift
//  Postcard
//
//  Created by Omar Bashir on 29/01/2015.
//  Copyright (c) 2015 OM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var messageLabel: UILabel!
    
    @IBOutlet var enterNameTextField: UITextField!
    
    @IBOutlet var enterMessageTextField: UITextField!
    
    @IBOutlet var mailButton: UIButton!
    
    @IBOutlet var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        

        //adding a comment
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        messageLabel.numberOfLines = 0
        nameLabel.hidden = false
        nameLabel.textColor = UIColor.blueColor()
        nameLabel.text = enterNameTextField.text
        enterNameTextField.resignFirstResponder()

        
        enterNameTextField.text = ""
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }

}

