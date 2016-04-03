//
//  FirebaseConstants.swift
//  SmartVite
//
//  Created by Deekshita Amaravadi on 3/27/16.
//  Copyright © 2016 Deekshita Amaravadi. All rights reserved.
//
import Firebase

let firebase = Firebase(url: "https://smartvite.firebaseio.com/")

let users = firebase.childByAppendingPath("users")

let events = firebase.childByAppendingPath("events")







