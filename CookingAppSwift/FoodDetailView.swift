//
//  FoodDetailView.swift
//  CookingAppSwift
//
//  Created by TakanoriMatsumoto on 2014/08/19.
//  Copyright (c) 2014年 TakanoriMatsumoto. All rights reserved.
//

import UIKit

class FoodDetailView: UIView {

    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect)
    {
        // Drawing code
        
        var label = UILabel(frame: CGRectMake(0, 0, 100, 100))
        label.backgroundColor = UIColor.greenColor()
        self.addSubview(label)
        

    }
    

    
    
    required init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.orangeColor()
    }

}
