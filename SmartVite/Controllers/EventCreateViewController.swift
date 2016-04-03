//
//  EventCreateViewController.swift
//  SmartVite
//
//  Created by Deekshita Amaravadi on 3/7/16.
//  Copyright © 2016 Deekshita Amaravadi. All rights reserved.
//
import UIKit

class EventCreateViewController: UIViewController {
    
    var createdEvent : Event! = nil
    
     let createEventView = EventCreateView(frame: CGRect(x: 0, y: 200, width: 320, height: 450))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(createEventView)
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  }
