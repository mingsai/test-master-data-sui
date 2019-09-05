//
//  Event.swift
//  test-master-data-sui
//
//  Created by Tommie Carter on 9/2/19.
//  Copyright © 2019 MING Technology LLC. All rights reserved.
//

import SwiftUI
import CoreData

extension Post {
    static func create(in managedObjectContext: NSManagedObjectContext){
        let newPost = self.init(context: managedObjectContext)
        newPost.timestamp = Date()
        
        do {
            try  managedObjectContext.save()
        } catch {
            // Replace this implementation with code to handle the error appropriately.
            // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            let nserror = error as NSError
            fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
        }
    }   
}

extension Collection where Element == Post, Index == Int {
    func delete(at indices: IndexSet, from managedObjectContext: NSManagedObjectContext) {
        indices.forEach { managedObjectContext.delete(self[$0]) }       
 
        do {
            try managedObjectContext.save()
        } catch {
            // Replace this implementation with code to handle the error appropriately.
            // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            let nserror = error as NSError
            fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
        }
    }
}
