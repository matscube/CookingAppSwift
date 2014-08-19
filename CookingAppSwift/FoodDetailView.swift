//
//  FoodDetailView.swift
//  CookingAppSwift
//
//  Created by TakanoriMatsumoto on 2014/08/19.
//  Copyright (c) 2014年 TakanoriMatsumoto. All rights reserved.
//

import UIKit

class FoodDetailView: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect)
    {
        // Drawing code
    }
    */

    required init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
    }
    
    override init() {
        super.init()
        self.backgroundColor = UIColor.orangeColor()
    }

}
