//
//  SignInViewController.swift
//  TherapyChat
//
//  Created by Cons Bulaqueña on 04/04/2018.
//  Copyright © 2018 consios. All rights reserved.
//

import UIKit

@IBDesignable extension UIButton {
    
    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}

class SignInViewController: UIViewController {

    @IBOutlet var emailTextField: UITextField!
    
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var SignInButton: UIButton!
    
    @IBOutlet weak var SignUp_Outlet: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func registerButton_TouchUp(_ sender: Any) {
        
    }
    // Action Login Button
    @IBAction func logInButton_TouchUp(_ sender: Any) {
        if emailTextField.text != "" && passwordTextField.text != "" {
        
            ProgressHUD.show("Logging in...", interaction: false)
            
        loginUser(email: emailTextField.text!, password: passwordTextField.text!)
        
        } else {
           ProgressHUD.show("Email and Password cannot be empty.")
            
        }
    }
        //if email function not emptyu
        func loginUser(email: String, password: String) {
            ProgressHUD.dismiss()
            
            backendless!.userService.login(email, password: password, response: { (user) in
                
            self.emailTextField.text = nil
            self.passwordTextField.text = nil
            self.view.endEditing(false)
                
            //go to app
                
            
                
            }) { (fault) in
                ProgressHUD.showError("Couldn't login: \(fault!.detail)")
                
        
}
}

