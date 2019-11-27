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
    var objectWithoutDependency1 = UsingFirebase1()
    var objectWithoutDependency2 = UsingFirebase2()
    
    var objectWithDependency = ViewControllerUsingFirebaseWithDependency(usingAnyObject: UsingFirebase1())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        objectWithDependency.runAnyObject()
        
        // re call same object
        objectWithDependency = ViewControllerUsingFirebaseWithDependency(usingAnyObject: UsingFirebase2())
        
    }

}
