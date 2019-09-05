//
//  ImageData+CoreDataProperties.swift
//  test-master-data-sui
//
//  Created by Tommie Carter on 9/2/19.
//  Copyright © 2019 MING Technology LLC. All rights reserved.
//
//

import Foundation
import CoreData


extension ImageData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ImageData> {
        return NSFetchRequest<ImageData>(entityName: "ImageData")
    }

    @NSManaged public var data: Data?
    @NSManaged public var attachment: Attachment?

}
