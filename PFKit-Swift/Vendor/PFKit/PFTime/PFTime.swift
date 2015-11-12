//
//  PFTime.swift
//  PFKit-Swift
//
//  Created by PFei_He on 15/11/12.
//  Copyright © 2015年 PF-Lib. All rights reserved.
//

import UIKit

class PFTime: NSObject {

    /**
     根据格式获取当前时间
     - Note:
     - Parameter format: 输出的时间格式
     - Returns: 当前时间
     */
    class func currentTime(format: String) -> String {
        let date = NSDate()
        let formatter = NSDateFormatter()
        formatter.dateStyle = NSDateFormatterStyle.FullStyle
        formatter.dateFormat = format
        let string = formatter.stringFromDate(date)
        return string
    }
}
