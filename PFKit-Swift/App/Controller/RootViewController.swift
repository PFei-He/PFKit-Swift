//
//  RootViewController.swift
//  PFKit-Swift
//
//  Created by PFei_He on 15/11/12.
//  Copyright © 2015年 PF-Lib. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //取出JSON中的对象参数
        let food = Food(JSON: PersonModel.sharedInstance().food)
        let fruits = Fruits(JSON: food.fruit[0])
        print(fruits.fruit)
        
        imageView.image = PFQRCode.create(PersonModel.sharedInstance().code, imageNamed: "Custom Figure", codeSize: imageView.frame.width)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
