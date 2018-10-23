//
//  ViewController.swift
//  VisualToDoList
//
//  Created by Pratheeksha Ravindra Naik on 2018-10-19.
//  Copyright © 2018 com/uregina. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    //MARK: Properties
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var toDoLabel: UILabel!
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    let picker = UIImagePickerController()
    
    
    
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
    
    @IBAction func gallery(_ sender: AnyObject) {
        /*if UIImagePickerController.availableMediaTypes(for: .photoLibrary) != nil {
            picker.allowsEditing = false
            picker.sourceType = UIImagePickerController.SourceType.photoLibrary
            present(picker, animated: true, completion: nil)
        } else {
            noCamera()
        }*/
        
        // Hide the keyboard.
        nameTextField.resignFirstResponder()
        
        // UIImagePickerController is a view controller that lets a user pick media from their photo library.
        let imagePickerController = UIImagePickerController()
        
        // Only allow photos to be picked, not taken.
        imagePickerController.sourceType = .photoLibrary
        
        // Make sure ViewController is notified when the user picks an image.
        imagePickerController.delegate = self
        present(imagePickerController, animated: true, completion: nil)
        
    }
    
    func noCamera(){
        let alertVC = UIAlertController(title: "No Camera", message: "Sorry, Gallery is not accessible.", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style:.default, handler: nil)
        alertVC.addAction(okAction)
        present(alertVC, animated: true, completion: nil)
    }
    @IBAction func Button(_ sender: UIButton) {
        toDoLabel.text = "Added!"
    }
    
    //MARK: - Delegates
    //What to do when the picker returns with a photo
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let chosenImage = info[UIImagePickerController.InfoKey.originalImage]
            as? UIImage else {
                fatalError("Expected a dictionary containing an image, but was provided the following : \(info)")
        }
        
    photoImageView.image = chosenImage
        dismiss(animated: true, completion: nil)
    }
    
    //What to do if the image picker cancels.
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
}

