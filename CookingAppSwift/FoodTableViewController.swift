//
//  FoodTableViewController.swift
//  CookingAppSwift
//
//  Created by TakanoriMatsumoto on 2014/08/13.
//  Copyright (c) 2014年 TakanoriMatsumoto. All rights reserved.
//

import UIKit

public let STATUS_BAR_HEIGHT:CGFloat = 22

class FoodTableViewController: UIViewController {
    
    // Style
    let FOOTER_TOOL_BAR_HEIGHT:CGFloat = 50
    var width:CGFloat?
    var height:CGFloat?
    
    var subView:UIView?

    // TODO: add common view by protocol
    var foodTableView:FoodTableView?
    var addFoodTableView:AddFoodTableView?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        self.width = self.view.frame.width
        self.height = self.view.frame.height
        
        self.subView = UIView(frame: CGRectMake(0, STATUS_BAR_HEIGHT, self.view.frame.width, self.view.frame.height - STATUS_BAR_HEIGHT - self.FOOTER_TOOL_BAR_HEIGHT))
        self.subView?.backgroundColor = UIColor.brownColor()
        self.view.addSubview(self.subView!)
        
        self.createBottomToolBar()
        self.createFoodTableView()
    }
    
    func createBottomToolBar() {
        
        var addButton = UIButton(frame: CGRectMake(self.width! / 2, self.height! - self.FOOTER_TOOL_BAR_HEIGHT, self.width! / 2, self.FOOTER_TOOL_BAR_HEIGHT))
        addButton.addTarget(self, action: "addFood:", forControlEvents: UIControlEvents.TouchDown)
        addButton.setTitle("Add Food", forState: UIControlState.Normal)
        addButton.backgroundColor = UIColor.greenColor()
        addButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        self.view.addSubview(addButton)
        
        var listButton = UIButton(frame: CGRectMake(0, self.height! - self.FOOTER_TOOL_BAR_HEIGHT, self.width! / 2, self.FOOTER_TOOL_BAR_HEIGHT))
        listButton.addTarget(self, action: "viewFoodList:", forControlEvents: UIControlEvents.TouchDown)
        listButton.setTitle("Food List", forState: UIControlState.Normal)
        listButton.backgroundColor = UIColor.orangeColor()
        listButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        self.view.addSubview(listButton)
    }
    
    func addFood(sender:AnyObject) {
        self.addFoodTableView?.removeFromSuperview()
        self.foodTableView?.removeFromSuperview()
        
        let y:CGFloat = 100
        let height:CGFloat = self.view.bounds.height / 3 * 2
        self.addFoodTableView = AddFoodTableView(frame: CGRectMake(0, y, self.view.bounds.width, height))
        
        self.view.addSubview(self.addFoodTableView!)
    }
    
    func viewFoodList(sender:AnyObject) {
        self.addFoodTableView?.removeFromSuperview()
        self.foodTableView?.removeFromSuperview()

        self.createFoodTableView()

    }
    
    func createFoodTableView() {
        let y:CGFloat = 100
        let height:CGFloat = self.view.bounds.height / 3 * 2
        
        self.foodTableView = FoodTableView(frame: CGRectMake(0, y, self.width!, height), mainViewController: self)
        self.subView?.addSubview(self.foodTableView!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
