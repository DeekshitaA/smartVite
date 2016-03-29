//
//  WelcomeViewController.swift
//  SmartVite
//
//  Created by Deekshita Amaravadi on 3/7/16.
//  Copyright © 2016 Deekshita Amaravadi. All rights reserved.
//


import UIKit

class WelcomeViewController: UIViewController {
    
    let welcomeView = WelcomeView(frame: CGRect(x: 0, y: 200, width: 320, height: 450))
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addSubview(welcomeView)
        
        self.view.backgroundColor = UIColor.greenColor()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

