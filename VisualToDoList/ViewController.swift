//
//  ViewController.swift
//  VisualToDoList
//
//  Created by Pratheeksha Ravindra Naik on 2018-10-19.
//  Copyright © 2018 com/uregina. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //MARK: Properties
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var toDoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Handle the text field's user input through the delegate callacks.
        nameTextField.delegate = self
    }
    
    //MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //Hide The Keyboard
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        toDoLabel.text = textField.text
    }
    
    //MARK: Actions
    
    @IBAction func Button(_ sender: UIButton) {
        toDoLabel.text = "Added!"
    }
 
}

