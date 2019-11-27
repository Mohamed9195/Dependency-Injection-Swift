//
//  ViewController.swift
//  Dependency Injection
//
//  Created by mohamed hashem on 11/27/19.
//  Copyright © 2019 mohamed hashem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // tow object
    var objectWithoutDependency1 = ViewControllerUsingFirebase1()
    var objectWithoutDependency2 = ViewControllerUsingFirebase2()
    
    var objectWithDependency = ViewControllerUsingFirebaseWithDependency(usingAnyObject: UsingFirebase1())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        objectWithoutDependency1.runAnyObject1()
        objectWithoutDependency2.runAnyObject2()
        
        objectWithDependency.runAnyObject()
        
        // re call same object
        objectWithDependency = ViewControllerUsingFirebaseWithDependency(usingAnyObject: UsingFirebase2())
        objectWithDependency.runAnyObject()
        
    }


}


/// we found douplicate 
class ViewControllerUsingFirebase1 {
    
    var testObject1 = UsingFirebase1()
    
    func runAnyObject1() {
        _ = testObject1.getDataFirbase()
        testObject1.setDataFirebase("uuuuuu")
    }
  
}

class ViewControllerUsingFirebase2 {
    
    var testObject2 = UsingFirebase2()
    
    func runAnyObject2() {
        _ = testObject2.getDataFirbase()
        testObject2.setDataFirebase("uuuuuu")
    }
}



/// using dependency injection
class ViewControllerUsingFirebaseWithDependency {
    
    var testObject: DataFromFirepase?
    
    init(usingAnyObject: DataFromFirepase) {
        testObject? = usingAnyObject
    }
    
    func runAnyObject() {
        _ = testObject?.getDataFirbase()
        testObject?.setDataFirebase("ttttt")
    }
}


