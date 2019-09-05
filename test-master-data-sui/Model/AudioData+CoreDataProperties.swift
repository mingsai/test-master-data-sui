//
//  AudioData+CoreDataProperties.swift
//  test-master-data-sui
//
//  Created by Tommie Carter on 9/2/19.
//  Copyright © 2019 MING Technology LLC. All rights reserved.
//
//

import Foundation
import CoreData


extension AudioData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AudioData> {
        return NSFetchRequest<AudioData>(entityName: "AudioData")
    }

    @NSManaged public var data: Data?
    @NSManaged public var attachment: Attachment?

}
