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
        
        self.createFoodTableView()
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
