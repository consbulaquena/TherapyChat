//
//  SignUpViewController.swift
//  TherapyChat
//
//  Created by Cons Bulaqueña on 05/04/2018.
//  Copyright © 2018 consios. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var SignUpBtn_Outlet: UIButton!
    
    var newUser: BackendlessUser?
    var avatarImage: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = false
        
        newUser = BackendlessUser()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
        //IBActions
    
    @IBAction func SignUpBtn_TouchUp(_ sender: Any) {
        if emailTextField.text != "" && usernameTextField.text != "" && passwordTextField.text != "" {
            ProgressHUD.show("Just a second...", interaction: false)
            
            register(email: emailTextField.text!, username: usernameTextField.text!, password: passwordTextField.text!, avatarImage: avatarImage)
            
        
        } else {
            ProgressHUD.showError("All fields is required.")
        }
    }
    
    
    @IBAction func CameraBtn_TouchUp(_ sender: Any) {
        
        
    }
    
    //Register User Backendless User
    
    func register(email: String, username: String, password: String, avatarImage: UIImage?) {
    
        if avatarImage == nil {
    
            newUser!.setProperty("Avatar", object: "")
    
        } else {
            //upload avatar image
        }
        
        newUser!.email = email as NSString!
        newUser!.password = password as NSString!
        newUser!.name = username as NSString!
        
        ProgressHUD.dismiss()
        backendless!.userService.registering(newUser, response: { (registeredUser) in
            //Login User when registered
            
            
        }) { (fault) in
            ProgressHUD.showError("Couldn't register: \(fault!.detail)")
        }
        
}
    //Login Function its called above
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

}
