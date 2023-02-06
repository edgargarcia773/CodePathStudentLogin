//
//  ViewController.swift
//  IOS CodePath
//
//  Created by Edgar Garcia on 2/5/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    

    @IBAction func introduceSelfDidTapped(_ sender: Any) {
        //Let us choose the title we have selected from the segmented control
        //In our example that is wether first, second, third or forth
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        //creating a constant of type string that holds an introduction. The interaction recieves the value from the outlet connection
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attended \(schoolNameTextField.text!).I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets."
        
        //Creates the alert where we pass in our message, which our introduction
        let alertController = UIAlertController(title: "Introduction", message: introduction, preferredStyle: .alert)
        
        //A way to dismiss the box when it pops up
        let action = UIAlertAction(title: "Welcome", style: .default, handler: nil)
        
        //passing this acction to the alert controller so it can be dismissed
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
        
    }
    
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   

    

}

