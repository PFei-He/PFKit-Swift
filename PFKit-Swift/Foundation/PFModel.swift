//
//  PFModel.swift
//  PFKit-Swift
//
//  Created by PFei_He on 15/11/12.
//  Copyright © 2015年 PF-Lib. All rights reserved.
//
//  https://github.com/PFei-He/PFKit-Swift
//
//  vesion: 0.1.1
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation

public class PFModel: NSObject {

    ///JSON数据
    public var JSON: AnyObject? {
        didSet {
            parseJSON(JSON)
        }
    }
    
    /**
     初始化
     - Note:
     - Parameter JSON: JSON数据
     - Returns:
     */
    public convenience init(JSON: AnyObject?) {
        self.init()
        parseJSON(JSON)
    }
    
    ///解析JSON
    private func parseJSON(JSON: AnyObject?) {
        if JSON != nil && JSON is Dictionary<String, AnyObject> {
            setValuesForKeysWithDictionary(JSON as! Dictionary<String, AnyObject>)
        } else {
            print("The object isn't Dictionary<String, AnyObject>")
        }
    }
    
    //获取未被声明的对象
    public override func setValue(value: AnyObject?, forUndefinedKey key: String) {
        print("**Class->"+String(classForCoder), "UndefinedKey->"+key, "Value->"+String(value), "Type->"+String(value?.classForCoder)+"**")
    }
}