//
//  ProfileClass.swift
//  AttendMe
//
//  Created by a.zhumadil on 2/4/19.
//  Copyright © 2019 Чингиз. All rights reserved.
//

import Foundation
class Profile {
    var setting : String?
    var param : String?
    init(setting:String,params:String) {
        self.setting = setting
        self.param = params
    }
}
