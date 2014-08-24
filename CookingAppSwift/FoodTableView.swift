//
//  FoodTableView.swift
//  CookingAppSwift
//
//  Created by TakanoriMatsumoto on 2014/08/13.
//  Copyright (c) 2014年 TakanoriMatsumoto. All rights reserved.
//

import UIKit
import Realm

class FoodTableView: UITableView, UITableViewDataSource, UITableViewDelegate {

    let CELL_IDENTIFIER:String = "CELL"
    var items:RLMArray?
    
    private weak var mainViewController:FoodTableViewController?
    
    required init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
    }
    
    
    required init(frame: CGRect, mainViewController: FoodTableViewController) {
//        super.init(frame: frame)
        super.init(frame: frame, style: .Plain)

        self.registerClass(FoodTableViewCell.self, forCellReuseIdentifier: CELL_IDENTIFIER)

        
        self.mainViewController = mainViewController
        self.delegate = self
        self.dataSource = self
        self.items = DBManager.sharedInstance.allFood()

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
        return Int(self.items!.count)
    }
    
    func tableView(tableView: UITableView!, heightForRowAtIndexPath indexPath: NSIndexPath!) -> CGFloat {
        return CELL_HEIGHT
    }

    // TODO : send data to detailview
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        let row = indexPath.row
        let foodDetailView = FoodDetailView(frame: CGRectMake(0, STATUS_BAR_HEIGHT, tableView.frame.width, tableView.frame.height))
  
        foodDetailView.foodItem = self.items!.objectAtIndex(UInt(row)) as FoodModel
        
        tableView.pu

        self.mainViewController?.view.addSubview(foodDetailView)
    }
    
    // TODO : fix cell design
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        //        let cell = tableView.dequeueReusableCellWithIdentifier(CELL_IDENTIFIER, forIndexPath: indexPath) as UITableViewCell
        let cell = tableView.dequeueReusableCellWithIdentifier(CELL_IDENTIFIER, forIndexPath: indexPath) as FoodTableViewCell
        
        // Configure the cell...
        
        let row = indexPath.row
        let item = self.items!.objectAtIndex(UInt(row)) as FoodModel
        println(item.name)
        
        cell.foodLabel?.text = item.name
        cell.foodSummary?.text = item.summary
        cell.foodTimeRequired?.text = String(item.timeRequired)

        cell.tag = row
        cell.deleteButton?.addTarget(self, action: "test:", forControlEvents: UIControlEvents.TouchDown)
        
        return cell
    }
    
    func test(sender:AnyObject) {
        let id = Int(sender.tag)
        let item = self.items!.objectAtIndex(UInt(id)) as FoodModel
        DBManager.sharedInstance.deleteFood(item)
        self.reloadData()
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
