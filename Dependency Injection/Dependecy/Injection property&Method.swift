//
//  Injection property&Method.swift
//  Dependency Injection
//
//  Created by mohamed hashem on 11/28/19.
//  Copyright © 2019 mohamed hashem. All rights reserved.
//

import Foundation

class testAnthorWayNothingDEpendencyInjection1 {
    
    var name = "moahmed"
    var age = 20
    
    func changeData() {
        name = "hany"
        age = 50
    }
}

class testAnthorWayNothingDEpendencyInjection2 {
    
    var name = "mostafa"
    var age = 24
    
    func changeData() {
        name = "toka"
        age = 30
    }
}

class testAnthorWayNothingDEpendencyInjection3 {
    
    var name = "hashem"
    var age = 60
    
    func changeData() {
        name = "ali"
        age = 63
    }
}


//MARK: - use dependency injetion in property and function for decrease duplicated

// no duplicate class to change data
class testAnthorWayDEpendencyInjection {
    
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    // no duplicate
    func changeData(name: String, age: Int) {
         self.name = name
         self.age = age
    }
}
