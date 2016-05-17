//
//  DVSEvent.swift
//  Push
//
//  Created by Dylan Straughan on 5/11/16.
//  Copyright © 2016 Dylan Straughan. All rights reserved.
//

import Foundation
import CoreData
import EventKit


class DVSEvent: NSManagedObject {
    
    let datastore = DVSDatastore.sharedDatastore

    func createDVSEventsFromEKevents(ekEvent:EKEvent)->DVSEvent {
        
        let entity = NSEntityDescription.entityForName("DVSEvent", inManagedObjectContext: datastore.managedObjectContext)
        
        let returnEvent = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: datastore.managedObjectContext) as! DVSEvent
        
        
        returnEvent.setValue(ekEvent.allDay, forKey: "isAllDay")
        
        returnEvent.isAllDay = ekEvent.allDay
        returnEvent.endDate = ekEvent.endDate
        returnEvent.startDate = ekEvent.startDate
        returnEvent.eventIdentifier = ekEvent.eventIdentifier
        returnEvent.availability = ekEvent.availability.rawValue
        returnEvent.status = ekEvent.status.rawValue
        returnEvent.
        
        
        return returnEvent
    }
    
    
}
