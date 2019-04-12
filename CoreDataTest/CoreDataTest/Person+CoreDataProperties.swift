//
//  Person+CoreDataProperties.swift
//  CoreDataTest
//
//  Created by Haydee Rodriguez on 4/12/19.
//  Copyright © 2019 Haydee Rodriguez. All rights reserved.
//
//

import Foundation
import CoreData


extension Person {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Person> {
        return NSFetchRequest<Person>(entityName: "Person")
    }

    @NSManaged public var name: String?

}
