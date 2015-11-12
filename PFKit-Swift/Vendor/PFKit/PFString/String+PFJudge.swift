//
//  String+PFJudge.swift
//  PFKit-Swift
//
//  Created by PFei_He on 15/11/12.
//  Copyright © 2015年 PF-Lib. All rights reserved.
//

import Foundation

extension String {
    
    /**
     判断是否QQ号码
     - Note:
     - Parameter 无参
     - Returns: `true` 或 `false`
     */
    func isQQ() -> Bool {
        let regex = "(^[0-9]*$)"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
        return predicate.evaluateWithObject(self)
    }
    
    /**
     判断是否邮箱地址
     - Note:
     - Parameter 无参
     - Returns: `true` 或 `false`
     */
    func isEmail() -> Bool {
        let regex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
        return predicate.evaluateWithObject(self)
    }
    
    /**
     判断是否URL
     - Note:
     - Parameter 无参
     - Returns: `true` 或 `false`
     */
    func isURL() -> Bool {
        let regex = "(http[s]{0,1}|ftp):\\/\\/([\\w-]+\\.)+[\\w-]+(\\/[\\w- .\\/?%&=]*)?"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
        return predicate.evaluateWithObject(self)
    }
    
    /**
     判断是否手机号码
     - Note:
     - Parameter 无参
     - Returns: `true` 或 `false`
     */
    func isMobilePhoneNumber() -> Bool {
        let regexMobile = "^1(3[0-9]|5[0-35-9]|8[025-9])\\d{8}$"
        let regexCM = "^1(34[0-8]|(3[5-9]|5[017-9]|8[278])\\d)\\d{7}$"
        let regexCU = "^1(3[0-2]|5[256]|8[56])\\d{8}$"
        let regexCT = "^1((33|53|8[09])[0-9]|349)\\d{7}$"
        let regexPHS = "^0(10|2[0-5789]|\\d{3})\\d{7,8}$"
        
        let predicateMobile = NSPredicate(format: "SELF MATCHES %@", regexMobile)
        let predicateCM = NSPredicate(format: "SELF MATCHES %@", regexCM)
        let predicateCU = NSPredicate(format: "SELF MATCHES %@", regexCU)
        let predicateCT = NSPredicate(format: "SELF MATCHES %@", regexCT)
        let predicatePHS = NSPredicate(format: "SELF MATCHES %@", regexPHS)
        
        return predicateMobile.evaluateWithObject(self) ||
            predicateCM.evaluateWithObject(self) ||
            predicateCU.evaluateWithObject(self) ||
            predicateCT.evaluateWithObject(self) ||
            predicatePHS.evaluateWithObject(self)
    }
}
