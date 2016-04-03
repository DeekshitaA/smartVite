//
//  WelcomeView.swift
//  SmartVite
//
//  Created by Deekshita Amaravadi on 3/27/16.
//  Copyright © 2016 Deekshita Amaravadi. All rights reserved.
//

import Foundation

class WelcomeView: UIView {
    
        let welcomeLabel = UILabel(frame: CGRect(x: 150, y: 0, width: 150 , height: 30))
    
        let imageView  = UIImageView(frame:CGRect(x: 150, y: 40, width: 100, height: 100))
    
    
    let createEventButton = UIButton(frame: CGRect(x:50, y:300, width:320, height:50))
    


    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(welcomeLabel)
        self.addSubview(imageView)
        self.addSubview(createEventButton)
        
        welcomeLabel.text = "Welcome Lisa!"
        
        imageView.image = UIImage(named:"lisa.jpg")
        
        createEventButton.backgroundColor = UIColor(red: 0.1843, green: 0.3412, blue: 0.5176, alpha: 1.0)
        createEventButton.setTitle("Create New Event", forState: UIControlState.Normal)

    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}