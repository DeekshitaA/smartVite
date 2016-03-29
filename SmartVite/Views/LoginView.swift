//
//  loginView.swift
//  SmartVite
//
//  Created by Deekshita Amaravadi on 3/20/16.
//  Copyright © 2016 Deekshita Amaravadi. All rights reserved.
//

import Foundation
import Firebase

class LoginView: UIView  {
    
    let userNameLabel = UILabel(frame: CGRect(x: 10, y: 0, width: 150 , height: 30))
    let userNameInput = UITextField(frame: CGRect(x: 170, y: 0, width: 200 , height: 30))
    let passwordLabel = UILabel(frame: CGRect(x: 10, y: 50, width: 150 , height: 30))
    let passwordInput = UITextField(frame: CGRect(x: 170, y: 50, width: 200 , height: 30))
    
    let loginButton = UIButton(frame: CGRect(x:30, y:100, width:320, height:50))
   
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(userNameLabel)
        self.addSubview(userNameInput)
        self.addSubview(passwordLabel)
        self.addSubview(passwordInput)
        self.addSubview(loginButton)
        
        
        userNameLabel.text = "User Name"
        passwordLabel.text = "Password"
        userNameInput.placeholder = "Enter Username Here"
        passwordInput.secureTextEntry = true
        passwordInput.placeholder = "Enter Password"
        loginButton.backgroundColor = UIColor(red: 0.1843, green: 0.3412, blue: 0.5176, alpha: 1.0)
        loginButton.setTitle("Login", forState: UIControlState.Normal)
        loginButton.tag = 1               // change tag property
        
    }

    
    
        

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
