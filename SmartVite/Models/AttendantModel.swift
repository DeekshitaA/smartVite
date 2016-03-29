//
//  AttendantModel.swift
//  SmartVite
//
//  Created by Deekshita Amaravadi on 3/28/16.
//  Copyright © 2016 Deekshita Amaravadi. All rights reserved.
//

import Foundation

struct Attendant {
    
    var user:User
    var event:Event
    var status:String // "undecided"
    
    init(user: User, event: Event, status: String?) {
        self.user = user
        self.event = event
        self.status = status
    }
}