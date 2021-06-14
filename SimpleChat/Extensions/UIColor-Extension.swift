//
//  UIColor-Extension.swift
//  SimpleChat
//
//  Created by 宮野智宏 on 2021/06/12.
//

import UIKit

extension UIColor {
    
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return self.init(red: red / 255, green: green / 255, blue: blue / 255, alpha: 1)
    }
    
}

