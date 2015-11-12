//
//  String+PFLocalized.swift
//  PFKit-Swift
//
//  Created by PFei_He on 15/11/12.
//  Copyright © 2015年 PF-Lib. All rights reserved.
//

import Foundation

extension String {
    
    /**
     本地化
     - Note:
     - Parameter 无参
     - Returns: 当前语言环境对应的值
     */
    var localized: String {
        return NSLocalizedString(self, tableName: nil, bundle: NSBundle.mainBundle(), value: "", comment: "")
    }
    
    /**
     本地化带注释
     - Note:
     - Parameter comment: 本地化文件中的注释
     - Returns: 当前语言环境对应的值
     */
    func localizedWithComment(comment: String) -> String {
        return NSLocalizedString(self, tableName: nil, bundle: NSBundle.mainBundle(), value: "", comment: comment)
    }
}
