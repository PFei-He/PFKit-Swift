//
//  PFView.swift
//  PFKit-Swift
//
//  Created by PFei_He on 15/11/15.
//  Copyright © 2015年 PF-Lib. All rights reserved.
//
//  https://github.com/PFei-He/PFKit-Swift
//
//  vesion: 0.0.5
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

import UIKit

extension UIView {
    
    // MARK: -

    ///
    var origin: CGPoint {
        get {
            return frame.origin
        } set {
            var frame = self.frame
            frame.origin = newValue
            self.frame = frame
        }
    }
    
    ///
    var x: CGFloat {
        get {
            return frame.origin.x
        } set {
            var frame = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
    }
    
    ///
    var y: CGFloat {
        get {
            return frame.origin.y
        } set {
            var frame = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
    }
    
    // MARK: -
    
    ///
    var size: CGSize {
        get {
            return frame.size
        } set {
            var frame = self.frame
            frame.size = newValue
            self.frame = frame
        }
    }
    
    ///
    var width: CGFloat {
        get {
            return frame.width
        } set {
            var frame = self.frame
            frame.size.width = newValue
            self.frame = frame
        }
    }
    
    ///
    var height: CGFloat {
        get {
            return frame.height
        } set {
            var frame = self.frame
            frame.size.height = newValue
            self.frame = frame
        }
    }
    
    //MARK: -
    
    ///
    var top: CGFloat {
        get {
            return frame.origin.y
        } set {
            var frame = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
    }
    
    ///
    var left: CGFloat {
        get {
            return frame.origin.x
        } set {
            var frame = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
    }
    
    ///
    var bottom: CGFloat {
        get {
            return frame.origin.y + frame.size.height
        } set {
            var frame = self.frame
            frame.origin.y = newValue - frame.size.height
            self.frame = frame
        }
    }
    
    ///
    var right: CGFloat {
        get {
            return frame.origin.x + frame.size.width
        } set {
            var frame = self.frame
            frame.origin.x = newValue - frame.size.width
            self.frame = frame
        }
    }
    
    // MARK: -
    
    ///
    var centerX: CGFloat {
        get {
            return center.x
        } set {
            var center = self.center
            center.x = newValue
            self.center = center
        }
    }
    
    ///
    var centerY: CGFloat {
        get {
            return center.y
        } set {
            var center = self.center
            center.y = newValue
            self.center = center
        }
    }
    
    ///
    var boundsCenter: CGPoint {
        get {
            return CGPointMake(CGRectGetMidX(bounds), CGRectGetMidY(bounds))
        }
    }
    
    // MARK: -
    
    ///
    var position: CGPoint {
        get {
            return frame.origin
        } set {
            var frame = self.frame
            frame.origin = newValue
            self.frame = frame
        }
    }
}
