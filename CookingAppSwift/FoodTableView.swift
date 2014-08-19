//
//  FoodTableView.swift
//  CookingAppSwift
//
//  Created by TakanoriMatsumoto on 2014/08/13.
//  Copyright (c) 2014年 TakanoriMatsumoto. All rights reserved.
//

import UIKit


let CELL_HEIGHT:CGFloat = 70

class FoodTableView: UITableView, UITableViewDataSource, UITableViewDelegate {

    let CELL_IDENTIFIER:String = "CELL"
    
    required init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect, style: UITableViewStyle) {
        println("foodtableview init")
        super.init(frame: frame, style: style)
        
        self.registerClass(FoodTableViewCell.self, forCellReuseIdentifier: CELL_IDENTIFIER)
        self.delegate = self
        self.dataSource = self
        
        
    }
    
    func tableView(tableView: UITableView!, viewForHeaderInSection section: Int) -> UIView! {
        println("section: \(section)")
        
        var sectionView = UIView(frame: CGRectMake(0, 0, self.frame.width, 30))
        
        var sectionLabel = UILabel(frame: CGRectMake(10, 0, sectionView.frame.width - 10, 30))
        sectionLabel.text = "Food: \(section)"

        sectionLabel.backgroundColor = UIColor.grayColor()
        sectionLabel.textColor = UIColor.whiteColor()
        sectionLabel.font = UIFont.boldSystemFontOfSize(16)

        sectionView.addSubview(sectionLabel)
        
        return sectionView
    }
    
    func tableView(tableView: UITableView!, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }

    func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView!, heightForRowAtIndexPath indexPath: NSIndexPath!) -> CGFloat {
        return 20
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        let row = indexPath.row
        let foodDetailView = FoodDetailView()
        self.addSubview(foodDetailView)
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        //        let cell = tableView.dequeueReusableCellWithIdentifier(CELL_IDENTIFIER, forIndexPath: indexPath) as UITableViewCell
        let cell = tableView.dequeueReusableCellWithIdentifier(CELL_IDENTIFIER, forIndexPath: indexPath) as FoodTableViewCell
        
        // Configure the cell...
        
        
        println("cell")
        
        return cell
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect)
    {
        // Drawing code
    }
    */
    
    

}
