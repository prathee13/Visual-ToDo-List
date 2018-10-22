//
//  ViewController.swift
//  VisualToDoList
//
//  Created by Pratheeksha Ravindra Naik on 2018-10-19.
//  Copyright © 2018 com/uregina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Properties
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var toDoLabel: UILabel!
    
    //MARK: Actions
    
    
    
    @IBAction func Button(_ sender: UIButton) {
        toDoLabel.text = "Default Text"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

