//
//  EventCreateView.swift
//  SmartVite
//
//  Created by Deekshita Amaravadi on 4/3/16.
//  Copyright © 2016 Deekshita Amaravadi. All rights reserved.
//

import Foundation

class EventCreateView: UIView {
    
    let eventNameLabel = UILabel(frame: CGRect(x: 10, y: 0, width: 150 , height: 30))
    let userNameInput = UITextField(frame: CGRect(x: 170, y: 0, width: 200 , height: 30))
    let passwordLabel = UILabel(frame: CGRect(x: 10, y: 50, width: 150 , height: 30))
    let passwordInput = UITextField(frame: CGRect(x: 170, y: 50, width: 200 , height: 30))
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(eventNameLabel)
        self.addSubview(userNameInput)
        self.addSubview(passwordLabel)
        self.addSubview(passwordInput)
        
        
        eventNameLabel.text = "Event Name"
        passwordLabel.text = "Password"
        userNameInput.placeholder = "Enter Username Here"
        passwordInput.secureTextEntry = true
        passwordInput.placeholder = "Enter Password"
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}