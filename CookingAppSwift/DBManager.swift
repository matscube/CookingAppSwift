//
//  DBManager.swift
//  CookingAppSwift
//
//  Created by TakanoriMatsumoto on 2014/08/21.
//  Copyright (c) 2014年 TakanoriMatsumoto. All rights reserved.
//

import Foundation
import Realm

private let _SingletonDBManagerSharedInstance = DBManager()

class DBManager {
    let realm:RLMRealm = RLMRealm.defaultRealm()
    
    class var sharedInstance : DBManager {
        return _SingletonDBManagerSharedInstance
    }
    
    func increaseAppLaunchCount() {
        var results:RLMArray = SystemModel.allObjectsInRealm(self.realm)
        
        realm.beginWriteTransaction()
        
        if (results.count == 0) {
            var systemModel = SystemModel()
            println("App launch count is \(systemModel.launchCount). ")
            realm.addObject(systemModel)
        } else {
            var systemModel = results.objectAtIndex(0) as SystemModel
            systemModel.launchCount += 1
            println("App launch count is \(systemModel.launchCount). ")
        }
        
        realm.commitWriteTransaction()
    }
    
    func createFood(name:NSString, summary:NSString, timeRequired:Int) -> FoodModel {
        var foodModel = FoodModel()
        
        foodModel.name = name
        foodModel.summary = summary
        foodModel.timeRequired = timeRequired
        
        
        realm.beginWriteTransaction()
        realm.addObject(foodModel)
        realm.commitWriteTransaction()
        
        println("Create food model")
     
        return foodModel
    }
    
    func allFood() -> RLMArray {
        var result:RLMArray = FoodModel.allObjectsInRealm(realm)
        return result
    }
    
    func deleteFood(food:FoodModel) {
        realm.beginWriteTransaction()
        realm.deleteObject(food)
        realm.commitWriteTransaction()
    }
}
