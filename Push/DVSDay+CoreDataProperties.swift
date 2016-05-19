//
//  DVSDay+CoreDataProperties.swift
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

extension DVSDay {

    @NSManaged var endDate: NSDate?
    @NSManaged var hasCustomDays: NSNumber?
    @NSManaged var name: String?
    @NSManaged var startDate: NSDate?
    @NSManaged var dayToDefaultEvent: DVSDefaultEvent?

}
