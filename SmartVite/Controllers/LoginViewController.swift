//
//  LoginViewController.swift
//  SmartVite
//
//  Created by Deekshita Amaravadi on 3/7/16.
//  Copyright © 2016 Deekshita Amaravadi. All rights reserved.
//


import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    let loginView = LoginView(frame: CGRect(x: 0, y: 200, width: 320, height: 450))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loginView.loginButton.addTarget(self, action: "loginAction:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(loginView)
        self.view.backgroundColor = UIColor.whiteColor()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func loginAction(sender: UIButton!) {
            firebase.authUser(loginView.userNameInput.text!, password: loginView.passwordInput.text!,
                withCompletionBlock: { error, authData in
                    if error != nil {
                        // There was an error logging in to this account
                    } else {
                        // We are now logged in
                        print("Logged in");
                        // let rootViewController = LoginViewController(nibName: nil, bundle: nil)
                        if let navController = self.navigationController {
                            let welcomeViewController = WelcomeViewController(nibName: nil, bundle: nil)
                            navController.pushViewController(welcomeViewController, animated: true)
                        }
                    }
            })
            
        }


}

