//
//  Tag+CoreDataProperties.swift
//  test-master-data-sui
//
//  Created by Tommie Carter on 9/2/19.
//  Copyright © 2019 MING Technology LLC. All rights reserved.
//
//

import Foundation
import CoreData


extension Tag {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Tag> {
        return NSFetchRequest<Tag>(entityName: "Tag")
    }

    @NSManaged public var color: Data?
    @NSManaged public var name: String?
    @NSManaged public var guid: UUID?
    @NSManaged public var posts: NSSet?

}

// MARK: Generated accessors for posts
extension Tag {

    @objc(addPostsObject:)
    @NSManaged public func addToPosts(_ value: Post)

    @objc(removePostsObject:)
    @NSManaged public func removeFromPosts(_ value: Post)

    @objc(addPosts:)
    @NSManaged public func addToPosts(_ values: NSSet)

    @objc(removePosts:)
    @NSManaged public func removeFromPosts(_ values: NSSet)

}
