//
//  FoodTableViewCell.swift
//  CookingAppSwift
//
//  Created by TakanoriMatsumoto on 2014/08/13.
//  Copyright (c) 2014年 TakanoriMatsumoto. All rights reserved.
//

import UIKit

public let CELL_HEIGHT:CGFloat = 80

class FoodTableViewCell: UITableViewCell {
    
    var foodLabel:UILabel?
    var foodSummary:UILabel?
    var foodTimeRequired:UILabel?
    var deleteButton:UIButton?

    required init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setDefaultStyle()
    }
    
    func setDefaultStyle() {

        let WIDTH = self.frame.width
        let HEIGHT = CELL_HEIGHT


        self.foodLabel = UILabel(frame: CGRectMake(10, 0, WIDTH, HEIGHT / 3))
        self.foodLabel!.text = "Cooking Name"
        self.contentView.addSubview(self.foodLabel!)
        
        self.foodSummary = UILabel(frame: CGRectMake(10, HEIGHT / 3, WIDTH, HEIGHT / 3))
        self.foodSummary!.text = "This is good foodl"
        self.contentView.addSubview(self.foodSummary!)

        self.foodTimeRequired = UILabel(frame: CGRectMake(10, HEIGHT / 3 * 2, WIDTH, HEIGHT / 3))
        self.foodTimeRequired!.text = "10 minutes required"
        self.contentView.addSubview(self.foodTimeRequired!)
        
        self.deleteButton = UIButton(frame: CGRectMake(WIDTH - 100, 0, 80, 30))
        self.deleteButton!.setTitle("Delete", forState: UIControlState.Normal)
        self.deleteButton!.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        self.deleteButton!.layer.borderWidth = 1.0
        self.deleteButton!.layer.borderColor = UIColor.blackColor().CGColor
        self.contentView.addSubview(self.deleteButton!)

    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.setDefaultStyle()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    

}
