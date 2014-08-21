//
//  RealmModels.swift
//  CookingAppSwift
//
//  Created by TakanoriMatsumoto on 2014/08/21.
//  Copyright (c) 2014年 TakanoriMatsumoto. All rights reserved.
//

import Foundation
import Realm

class SystemModel: RLMObject {
    dynamic var launchCount = 0
}

class FoodModel: RLMObject {
    dynamic var name:NSString = ""
    dynamic var summary:NSString = ""
    dynamic var timeRequired:Int = 0

}
