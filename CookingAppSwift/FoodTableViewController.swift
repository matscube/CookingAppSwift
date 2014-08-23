//
//  FoodTableViewController.swift
//  CookingAppSwift
//
//  Created by TakanoriMatsumoto on 2014/08/13.
//  Copyright (c) 2014年 TakanoriMatsumoto. All rights reserved.
//

import UIKit

class FoodTableViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.createBottomToolBar()
        self.createFoodTableView()
    }
    
    func changeView(view:UIView) {
        self.view.addSubview(view)
    }
    
    func createBottomToolBar() {
        let width = self.view.frame.width
        let height = self.view.frame.height
        
        var addButton = UIButton(frame: CGRectMake(width / 2, height - 50, width / 2, 50))
        addButton.addTarget(self, action: "addFood:", forControlEvents: UIControlEvents.TouchDown)
        addButton.setTitle("Add Food", forState: UIControlState.Normal)
        addButton.backgroundColor = UIColor.greenColor()
        addButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        self.view.addSubview(addButton)
        
        var listButton = UIButton(frame: CGRectMake(0, height - 50, width / 2, 50))
        listButton.addTarget(self, action: "viewFoodList:", forControlEvents: UIControlEvents.TouchDown)
        listButton.setTitle("Food List", forState: UIControlState.Normal)
        listButton.backgroundColor = UIColor.orangeColor()
        listButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        self.view.addSubview(listButton)
    }
    
    func addFood(sender:AnyObject) {
        let y:CGFloat = 100
        let height:CGFloat = self.view.bounds.height / 3 * 2
        var addFoodTableView = AddFoodTableView(frame: CGRectMake(0, y, self.view.bounds.width, height))
        
        self.view.addSubview(addFoodTableView)
    }
    
    func viewFoodList(sender:AnyObject) {
        let y:CGFloat = 100
        let height:CGFloat = self.view.bounds.height / 3 * 2
        var foodTableView = FoodTableView(frame: CGRectMake(0, y, self.view.bounds.width, height), style: UITableViewStyle.Plain)
        
        self.view.addSubview(foodTableView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createFoodTableView() {
        let y:CGFloat = 100
        let height:CGFloat = self.view.bounds.height / 3 * 2
        
//        var foodTableView = FoodTableView(frame: CGRectMake(0, y, self.view.bounds.width, height))
        var foodTableView = FoodTableView(frame: CGRectMake(0, y, self.view.bounds.width, height), style: UITableViewStyle.Plain)
        
        self.view.addSubview(foodTableView)
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
