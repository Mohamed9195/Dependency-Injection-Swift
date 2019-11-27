//
//  DataNetwork.swift
//  Dependency Injection
//
//  Created by mohamed hashem on 11/27/19.
//  Copyright © 2019 mohamed hashem. All rights reserved.
//

import Foundation
import UIKit


/////////////////////////////////////////////////////////////////////////////////////////
//MARKT:- First EXample
protocol DataFromFirepase {
    func getDataFirbase() -> String
    func setDataFirebase(_ data: String)
}

/// we found douplicate  not using Debendency
class UsingFirebase1: DataFromFirepase {
    func getDataFirbase() -> String {
       "data 1 is correct"
    }
    
    func setDataFirebase(_ data: String) {
        print("firebase data 1 is:", data)
    }
}

class UsingFirebase2: DataFromFirepase {
    func getDataFirbase() -> String {
       "data 2 is correct"
    }
    
    func setDataFirebase(_ data: String) {
        print("firebase data 2 is:", data)
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



/////////////////////////////////////////////////////////////////////////////////////////
//MARKT:- secound EXample

protocol drowing {
    func drowing()
}

class FirstUIView: UIView, drowing{
    func drowing() {
    }
}

class SecoundUIView: UIView, drowing {
    func drowing() {
    }
}

class ThirdUIView: UIView, drowing {
    func drowing() {
    }
}

// not using Debendency
class UIViewWithoutDebendency1: UIView {
   var object = FirstUIView()
}

class UIViewWithoutDebendency2: UIView {
   var object = SecoundUIView()
}
class UIViewWithoutDebendency3: UIView {
   var object = ThirdUIView()
}


//  using Debendency
class UIViewWithDebendency: UIView {
    
    var object: drowing?
    
    init(data: drowing) {
        object = data
        super.init(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
