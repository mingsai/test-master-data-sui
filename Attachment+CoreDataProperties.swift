//
//  Attachment+CoreDataProperties.swift
//  test-master-data-sui
//
//  Created by Tommie Carter on 9/2/19.
//  Copyright © 2019 MING Technology LLC. All rights reserved.
//
//

import Foundation
import CoreData


extension Attachment {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Attachment> {
        return NSFetchRequest<Attachment>(entityName: "Attachment")
    }

    @NSManaged public var guid: UUID?
    @NSManaged public var thumbnail: Data?
    @NSManaged public var post: Post?
    @NSManaged public var imageData: ImageData?
    @NSManaged public var audioData: AudioData?
    @NSManaged public var videoData: VideoData?

}
