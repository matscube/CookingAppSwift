//
//  FoodDetailView.swift
//  CookingAppSwift
//
//  Created by TakanoriMatsumoto on 2014/08/19.
//  Copyright (c) 2014年 TakanoriMatsumoto. All rights reserved.
//

import UIKit
import Realm

class FoodDetailView: UIView {
    
    var width:CGFloat?
    var height:CGFloat?
    
    var foodItem:FoodModel?

    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect)
    {
        // Drawing code
        
        var label = UILabel(frame: CGRectMake(0, 0, self.width!, 50))
        label.backgroundColor = UIColor.greenColor()
        label.text = self.foodItem!.name
        label.textColor = UIColor.whiteColor()
        self.addSubview(label)
        

    }
    

    
    
    required init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        self.width = self.frame.width
        self.height = self.frame.height
        self.backgroundColor = UIColor.orangeColor()
    }

}
