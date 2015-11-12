//
//  PFQRCode.swift
//  PFKit-Swift
//
//  Created by PFei_He on 15/11/12.
//  Copyright © 2015年 PF-Lib. All rights reserved.
//

import UIKit

class PFQRCode: NSObject {

    /**
     生成二维码图片
     - Note:
     - Parameter string: 用于生成二维码的字符串
     - Parameter imageNamed: 放置于二维码中间的定制图
     - Parameter codeSize: 二维码的尺寸
     - Returns:
     */
    class func create(string: String, imageNamed name: String, codeSize size: CGFloat) -> UIImage {
        
        //将要生成二维码的字符串转为数据类型
        let stringData = string.dataUsingEncoding(NSUTF8StringEncoding)
        
        //创建滤镜
        let filter = CIFilter(name:"CIQRCodeGenerator")
        
        //设置内容和纠错级别
        filter!.setValue(stringData, forKey:"inputMessage")
        filter!.setValue("H", forKey:"inputCorrectionLevel")
        
        //得到一个矩形
        let extent = CGRectIntegral(filter!.outputImage!.extent)
        
        //得出缩放倍数
        let scale = min(size/CGRectGetWidth(extent), size/CGRectGetHeight(extent))
        
        //得出大小
        let width = CGRectGetWidth(extent) * scale
        let height = CGRectGetHeight(extent) * scale
        
        //创建一个灰度图
        let cs = CGColorSpaceCreateDeviceGray()
        
        //创建一个位图
        let bitmapRef = CGBitmapContextCreate(nil, size_t(width), size_t(height), 8, 0, cs, CGBitmapInfo(rawValue: CGImageAlphaInfo.None.rawValue).rawValue)
        
        //获取CIContext
        let context = CIContext(options: nil)
        let bitmapImage = context.createCGImage(filter!.outputImage!, fromRect: extent)
        CGContextSetInterpolationQuality(bitmapRef, CGInterpolationQuality.None)
        CGContextScaleCTM(bitmapRef, scale, scale)
        CGContextDrawImage(bitmapRef, extent, bitmapImage)
        
        //保存位图到图片
        let scaledImage = CGBitmapContextCreateImage(bitmapRef)
        
        //中部定制图
        let iconImage = UIImage(named: name)
        
        //获取二维码的尺寸
        let rect = CGRectMake(0,
            0,
            UIImage(CIImage: filter!.outputImage!.imageByApplyingTransform(CGAffineTransformMakeScale(20, 20))).size.width,
            UIImage(CIImage: filter!.outputImage!.imageByApplyingTransform(CGAffineTransformMakeScale(20, 20))).size.height)
        
        //开始绘图
        UIGraphicsBeginImageContext(rect.size)
        
        //将定制图绘制于二维码中间
        UIImage(CGImage: scaledImage!).drawInRect(rect)
        let imageSize = CGSizeMake(rect.size.width * 0.25, rect.size.height * 0.25)
        let x = (rect.size.width - imageSize.width) * 0.5;
        let y = (rect.size.height - imageSize.height) * 0.5;
        iconImage!.drawInRect(CGRectMake(x, y, imageSize.width, imageSize.height))
        
        //生成带图标的二维码
        let QRCode = UIGraphicsGetImageFromCurrentImageContext();
        
        //结束绘图
        UIGraphicsEndImageContext();
        
        return QRCode
    }
}
