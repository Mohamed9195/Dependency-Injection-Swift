//
//  sample Example Dependency injection.swift
//  Dependency Injection
//
//  Created by mohamed hashem on 11/27/19.
//  Copyright © 2019 mohamed hashem. All rights reserved.
//

import Foundation
import UIKit

// take Uivew then present it

class ParentClass: UIViewController {
    
    var firstView = UIViewWithoutDebendency1()
    var secoundView = UIViewWithoutDebendency1()
    var thirdView = UIViewWithoutDebendency1()
    
    
   /// with Dependency
    var objectTest = UIViewWithDebendency(data: FirstUIView())
    
    override func viewDidLoad() {
           super.viewDidLoad()
        
        // reuse same Obejct
        objectTest = UIViewWithDebendency(data: SecoundUIView())
        
    }
    
}





