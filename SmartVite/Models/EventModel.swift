//
//  EventModel.swift
//  SmartVite
//
//  Created by Deekshita Amaravadi on 3/28/16.
//  Copyright © 2016 Deekshita Amaravadi. All rights reserved.
//

import Foundation


struct Event{
    
    var creator: User
    var startTime: NSDate
    var location: String
    var descr: String
    var name: String
    
    init(creator: User, startTime: NSDate, location: String, descr: String, name: String) {
        self.creator = creator
        self.startTime = startTime
        self.location = location
        self.descr = descr
        self.name = name
    }
    
    func isInPast() -> Bool {
        if startTime.compare(NSDate()) == NSComparisonResult.OrderedAscending {
            return true
        }
        return false
    }
    
}