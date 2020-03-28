//
//  UIViewExtension.swift
//  ObjCLearning
//
//  Created by Никита Гундорин on 28.03.2020.
//  Copyright © 2020 Никита Гундорин. All rights reserved.
//

import UIKit

private var AssociatedObjectHandle: Int8 = 0

extension UIView {
    @IBInspectable var identifier: String {
        get {
            return objc_getAssociatedObject(self, &AssociatedObjectHandle) as! String
        }
        set {
            objc_setAssociatedObject(self, &AssociatedObjectHandle, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
}
