//
//  DVSDefaultEvent+CoreDataProperties.swift
//  Push
//
//  Created by Dylan Straughan on 5/17/16.
//  Copyright © 2016 Dylan Straughan. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension DVSDefaultEvent {

    @NSManaged var availability: String?
    @NSManaged var eventIdentifier: String?
    @NSManaged var isAllDay: NSNumber?
    @NSManaged var isDetached: NSNumber?
    @NSManaged var location: NSNumber?
    @NSManaged var notes: String?
    @NSManaged var occurenceDate: NSDate?
    @NSManaged var organizer: String?
    @NSManaged var status: String?
    @NSManaged var timeForEvent: NSNumber?
    @NSManaged var title: String?
    @NSManaged var daysEventCanOccur: NSSet?
    @NSManaged var defaultEventsUser: DVSUser?

}
