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
    
    var user = User(email: "", firstName: "", lastName: "")
  
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
        
        let userName = loginView.userNameInput.text
       
        
            firebase.authUser(loginView.userNameInput.text!, password: loginView.passwordInput.text!,
                withCompletionBlock: { error, authData in
                    if error != nil {
                        // There was an error logging in to this account
                    } else {
                        // We are now logged in
                        print("Logged in");
                        
                        self.user.email =  userName!
                        self.user.firstName = "Lisa"
                        self.user.lastName = "Simpson"
                        
                        let userInfo = [
                            "email": self.user.email,
                            "firstName": self.user.firstName,
                            "lastName" : self.user.lastName
                        ]
                        
                        let user = [authData.uid! : userInfo]
                        
                        users.setValue(user)
                        
                        events.queryEqualToValue(authData.uid, childKey: "creator").observeSingleEventOfType(.Value, withBlock: { snapshot in
                            print(snapshot)
                        })
                        //print("userEventsFB", userEventsFB)
                        
                     if let navController = self.navigationController {
                            let welcomeViewController = WelcomeViewController(nibName: nil, bundle: nil)
                            welcomeViewController.user = self.user
                            welcomeViewController.uID = authData.uid
                            navController.pushViewController(welcomeViewController, animated: true)
                        }
                    }
            })
            
        }


}

