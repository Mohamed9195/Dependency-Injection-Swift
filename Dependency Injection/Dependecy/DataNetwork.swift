//
//  DataNetwork.swift
//  Dependency Injection
//
//  Created by mohamed hashem on 11/27/19.
//  Copyright © 2019 mohamed hashem. All rights reserved.
//

import Foundation

protocol DataFromFirepase {
    func getDataFirbase() -> String
    func setDataFirebase(_ data: String)
}

protocol DataFromAWS {
    func getDataAWS() -> String
    func setDataAWS(_ data: String)
}


/// we found douplicate 
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
