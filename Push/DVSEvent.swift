//
//  DVSEvent.swift
//  Push
//
//  Created by Dylan Straughan on 5/17/16.
//  Copyright © 2016 Dylan Straughan. All rights reserved.
//

import Foundation
import CoreData
import EventKit


class DVSEvent: NSManagedObject {

    func parseEKEventArray(array:[EKEvent]) -> [DVSEvent] {
        
        var arrayToReturn:[DVSEvent] = []
        
        for event in array {
            
            let dvsEvent:DVSEvent
            
            dvsEvent.isAllDay = event.allDay
            dvsEvent.availability = event.availability
            dvsEvent.endDate = event.endDate
            dvsEvent.status = event.status
            dvsEvent.startDate = event.startDate
            dvsEvent.eventsUser = 
         
            arrayToReturn.append(event)
        }
        
        
        return arrayToReturn
    }
    
    
}
