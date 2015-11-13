//
//  RootModel.swift
//  Demo
//
//  Created by PFei_He on 15/11/13.
//  Copyright © 2015年 PF-Lib. All rights reserved.
//

import Foundation

class Sports: PFModel {
    
    var one     = String()
    var two     = String()
}

class Fruits: PFModel {
    
    var fruit   = String()
}

class Food: PFModel {
    
    var meat    = String()
    var fruit   = Array<AnyObject>()
}

class Person: PFModel {
    
    var name    = String()
    var age     = Int()
    var sex     = String()
    var phone   = Int()
    var address = Array<AnyObject>()
    var height  = Int()
    var weight  = Int()
    var food    = Dictionary<String, AnyObject>()
    var sport   = Array<AnyObject>()
    var code    = String()
    
    /**
     单例
     - Note:
     - Parameter 无参
     - Returns: PersonModel类的唯一实例
     */
    class func sharedInstance() -> Person {
        struct sharedInstance {
            static var onceToken: dispatch_once_t = 0
            static var instance: Person? = nil
        }
        dispatch_once(&sharedInstance.onceToken) { () -> Void in
            sharedInstance.instance = Person()
        }
        return sharedInstance.instance!
    }
}
