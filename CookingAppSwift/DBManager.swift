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
    
}
