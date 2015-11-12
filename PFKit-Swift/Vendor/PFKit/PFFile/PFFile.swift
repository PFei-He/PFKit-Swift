//
//  PFFile.swift
//  PFKit-Swift
//
//  Created by PFei_He on 15/11/12.
//  Copyright © 2015年 PF-Lib. All rights reserved.
//

import Foundation

class PFFile: NSObject {

    /**
     创建文件
     - Note: 文件存放于沙盒中的Documents文件夹中
     - Parameter fileName: 文件名
     - Returns:
     */
    class func createFile(fileName: String) {
        let paths = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
        let path = NSURL(fileURLWithPath: paths[0]).URLByAppendingPathComponent(fileName)
        let manager = NSFileManager.defaultManager()
        if (!manager.fileExistsAtPath(path.path!)) {//如果文件不存在则创建文件
            manager.createFileAtPath(path.path!, contents:nil, attributes:nil)
        }
    }
    
    /**
     读取文件
     - Note: 文件存放于沙盒中的Documents文件夹中
     - Parameter fileName: 文件名
     - Returns: 文件中的数据
     */
    class func readFile(fileName: String) -> Dictionary<String, AnyObject> {
        let paths = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
        let path = NSURL(fileURLWithPath: paths[0]).URLByAppendingPathComponent(fileName)
        return NSDictionary(contentsOfFile: path.path!) as! Dictionary<String, AnyObject>
    }
    
    /**
     读取JSON文件
     - Note: 文件存放于main bundle中
     - Parameter fileName: 文件名
     - Returns: 文件中的数据
     */
    class func readJSON(fileName: String) -> Dictionary<String, AnyObject> {
        let path = NSBundle.mainBundle().pathForResource(fileName, ofType: "json")
        let string = try? String(contentsOfFile: path!, encoding: NSUTF8StringEncoding)
        let data = string?.dataUsingEncoding(NSUTF8StringEncoding)
        return try! NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableLeaves) as! Dictionary<String, AnyObject>
    }
    
    /**
     写入文件
     - Note: 文件存放于沙盒中的Documents文件夹中
     - Parameter fileName: 文件名
     - Parameter params: 写入文件的参数
     - Returns: 写入结果
     */
    class func writeToFile(fileName: String, params: Dictionary<String, AnyObject>) -> Bool {
        let paths = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
        let path = NSURL(fileURLWithPath: paths[0]).URLByAppendingPathComponent(fileName)
        return (params as NSDictionary).writeToFile(path.path!, atomically: true)
    }
}
