//
//  test Dependency Injection.swift
//  Dependency Injection
//
//  Created by mohamed hashem on 11/28/19.
//  Copyright © 2019 mohamed hashem. All rights reserved.
//

import Foundation

protocol DataFirepase {
    func getDataFirbase() -> String
    func setDataFirebase(_ data: String)
}

class FirebaseData: DataFirepase {
    func getDataFirbase() -> String {
       "data 1 is correct"
    }
    
    func setDataFirebase(_ data: String) {
        print("firebase data 1 is:", data)
    }
}

// easy to test it by creat on mokClass
class MOCKFirebaseData: DataFirepase {
    func getDataFirbase() -> String {
       "i am Mock Data"
    }
    
    func setDataFirebase(_ data: String) {
        print("Mock firebase data 1 is:", data)
    }
}



class UsingFirebaseWithDependency {
    
    var testObject: DataFirepase
    
    init(usingAnyObject: DataFirepase) {
        testObject = usingAnyObject
    }
    
    func runAnyObject() {
        _ = testObject.getDataFirbase()
        testObject.setDataFirebase("ttttt")
    }
}


let mainObject = UsingFirebaseWithDependency(usingAnyObject: FirebaseData())

// for test just only change object that i pass to class
let mainObjectTest = UsingFirebaseWithDependency(usingAnyObject: MOCKFirebaseData())
