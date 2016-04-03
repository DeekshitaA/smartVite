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
    var user: User? = nil
    
    var uID:String! = nil

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        welcomeView.createEventButton.addTarget(self, action: "createEventAction:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(welcomeView)
        
        self.view.backgroundColor = UIColor.whiteColor()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func createEventAction(sender: UIButton!) {
        
        let event = Event(creator: user!, location: "", descr: "", name: "")
        
         let addEvent = [
            "email": user!.email,
            "first_name" : user!.firstName,
            "last_name" : user!.lastName,
        //    "start_time" : event.startTime,
            "location" : event.location,
            "descr" : event.descr,
            "name": event.name
        ]
        
        events.setValue([self.uID : addEvent])
        
        if let navController = self.navigationController {
            let eventCreateViewController = EventCreateViewController(nibName: nil, bundle: nil)
            eventCreateViewController.createdEvent = event
            navController.pushViewController(eventCreateViewController, animated: true)
        }
    }
    
}

