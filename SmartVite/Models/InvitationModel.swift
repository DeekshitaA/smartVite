//
//  InvitationModel.swift
//  SmartVite
//
//  Created by Deekshita Amaravadi on 3/28/16.
//  Copyright © 2016 Deekshita Amaravadi. All rights reserved.
//

import Foundation

struct Invitation {
    
    var sender : User
    var receiver : String
    var event: Event
    var accepted: Bool

}