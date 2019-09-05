//
//  Color.swift
//  test-master-data-sui
//
//  Created by Tommie Carter on 9/2/19.
//  Copyright © 2019 MING Technology LLC. All rights reserved.
//

import UIKit

extension UIColor {
    class func color(withData data:Data) -> UIColor {
        var color:UIColor?
        if #available(iOS 13, *) {
            color = try? NSKeyedUnarchiver.unarchivedObject(ofClass: UIColor.self, from: data)
            return color ?? .black
        } else {
            color = NSKeyedUnarchiver.unarchiveObject(with: data) as? UIColor
            return color ?? .black
        }
    }

    func encode() -> Data {
        if #available(iOS 13, *) {
            return try! NSKeyedArchiver.archivedData(withRootObject: self, requiringSecureCoding: false)
        }else{
            return NSKeyedArchiver.archivedData(withRootObject: self)
        }
    }
}
