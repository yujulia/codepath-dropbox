//
//  CreateAccountViewController.swift
//  dropbox
//
//  Created by Julia Yu on 2/7/16.
//  Copyright © 2016 julia yu. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var PasswordField: UITextField!
    
    @IBOutlet weak var PasswordStrPanel: UIView!
    @IBOutlet weak var bar1: UIView!
    @IBOutlet weak var bar2: UIView!
    @IBOutlet weak var bar3: UIView!
    @IBOutlet weak var bar4: UIView!
    @IBOutlet weak var strText: UILabel!
    @IBOutlet weak var createBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        PasswordStrPanel.hidden = true
        createBtn.enabled = false
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func testCreateState() {
        let password = NSString(string: PasswordField.text!)
        let first = NSString(string: firstNameTextField.text!)
        let last = NSString(string: lastNameTextField.text!)
        let email = NSString(string: emailTextField.text!)

        if (password.length > 0 && first.length > 0 && last.length > 0 && email.length > 0 ) {
            createBtn.enabled = true
        } else {
            createBtn.enabled = false
        }
    }
    
    @IBAction func onPasswordType(sender: UITextField) {
        let password = NSString(string: PasswordField.text!)
        
        testCreateState()
        
        if (password.length > 0) {
            PasswordStrPanel.hidden = false
            strText.text = "Weak"
            strText.textColor = UIColor.redColor()
            bar1.backgroundColor = UIColor.redColor()
            
        }
        if (password.length > 3) {
            strText.text = "So-So"
            strText.textColor = UIColor.orangeColor()
            bar2.backgroundColor = UIColor.orangeColor()
        }
        if (password.length > 6) {
            strText.text = "Good"
            strText.textColor = UIColor.yellowColor()
            bar3.backgroundColor = UIColor.yellowColor()
        }
        if (password.length > 9) {
            strText.text = "Great!"
            strText.textColor = UIColor.greenColor()
            bar4.backgroundColor = UIColor.greenColor()
        }
    }
    
    @IBAction func onFirstChange(sender: UITextField) {
        testCreateState()
    }

    @IBAction func onLastChange(sender: UITextField) {
        testCreateState()
    }
    @IBAction func onEmailChanged(sender: UITextField) {
        testCreateState()
    }
    
    @IBAction func goBack(sender: UIButton) {
        navigationController!.popViewControllerAnimated(true)
    }

    @IBAction func didTap(sender: AnyObject) {
        view.endEditing(true)
    }

}
