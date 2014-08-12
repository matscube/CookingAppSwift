//
//  FoodTableViewCell.swift
//  CookingAppSwift
//
//  Created by TakanoriMatsumoto on 2014/08/13.
//  Copyright (c) 2014年 TakanoriMatsumoto. All rights reserved.
//

import UIKit

class FoodTableViewCell: UITableViewCell {

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


        var foodLabel = UILabel(frame: CGRectMake(10, 0, WIDTH, HEIGHT / 3))
        foodLabel.text = "Cooking Name"
        self.contentView.addSubview(foodLabel)
        
        var foodSummary = UILabel(frame: CGRectMake(10, HEIGHT / 3, WIDTH, HEIGHT / 3))
        foodSummary.text = "This is good foodl"
        self.contentView.addSubview(foodSummary)

        var foodDescription = UILabel(frame: CGRectMake(10, HEIGHT / 3 * 2, WIDTH, HEIGHT / 3))
        foodDescription.text = "First ..., Second ..."
        self.contentView.addSubview(foodDescription)
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
