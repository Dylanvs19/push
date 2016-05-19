//
//  DVSToDoList+CoreDataProperties.swift
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

extension DVSToDoList {

    @NSManaged var toDoListsEvents: NSSet?
    @NSManaged var toDoListsUser: DVSUser?

}
