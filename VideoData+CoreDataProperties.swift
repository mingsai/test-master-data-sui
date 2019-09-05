//
//  VideoData+CoreDataProperties.swift
//  test-master-data-sui
//
//  Created by Tommie Carter on 9/2/19.
//  Copyright © 2019 MING Technology LLC. All rights reserved.
//
//

import Foundation
import CoreData


extension VideoData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<VideoData> {
        return NSFetchRequest<VideoData>(entityName: "VideoData")
    }

    @NSManaged public var data: Data?
    @NSManaged public var attachment: Attachment?

}
